<p align="center">
   <img align="center" src="./github/logo.svg" height="250px">
</p>
<h1 align="center">
   M153 Project «Indizes»
</h1>
<p align="center">
   Yannic Studer </br>
</p>

> Examples work on the kiosk database! (This script was written while using and extending the [KioskStore](./src/M153_Projekt_Create.sql) database.)

## What is an index?

An index in a SQL database is a data structure that improves the performance of certain types of queries by allowing the database to quickly locate specific rows of data without having to scan the entire table. For example, in a table with millions of rows, an index on the "last name" column would allow the database to quickly find all rows with a specific last name, without having to scan through every row in the table.

### How do they work?

Indexes work by creating a separate data structure that stores a copy of the indexed columns, along with a pointer to the location of the corresponding row in the original table. When a query is executed that references one of the indexed columns, the database can use the index to quickly locate the matching rows in the table, rather than having to scan the entire table. The more selective the indexed column is, meaning the less repetitive the data, the better the performance of the index. Also, having multiple indexes can help to improve performance for different types of queries, but it can also slow down performance if too many indexes are created. Therefore it's important to choose which columns to index carefully and monitor your indexes performance over time.

There are different types of indexes that work in different ways. For example:

- A `B-Tree index`, which is the most common type of index, organizes the indexed data in a balanced tree structure, allowing for fast searching, insertion, and deletion of data.
- A `Hash index`, uses a hash function to map the values in the indexed column to specific locations in the index, allowing for fast lookups of specific values, but can be slower for range queries.
- A `clustered index` determines the physical order of the data in a table, so that the rows are stored in the same order as the indexed columns. This can make it faster to retrieve consecutive rows of data.

> Windows does use indexes in certain areas of the system to improve performance. One example of this is the NTFS file system, which is used by Windows for storing files on a hard drive. NTFS uses a file indexing system called the Master File Table (MFT) to keep track of the location of files on the hard drive, allowing Windows to quickly locate and access files.


## How is an index created, deleted, etc.?

To `create` an index, you can use the CREATE INDEX statement. The basic syntax for creating an index in T-SQL is as follows:
```
CREATE INDEX index_name ON table_name (columnX, columnY, columnZ ...)
```

To `delete` an index, you can use the DROP INDEX statement. The basic syntax for deleting an index in T-SQL is as follows:
```
DROP INDEX index_name ON table_name
```

<br>


>When creating an index, you can specify various options to customize the behavior of the index. Some of these options include:

> - The type of index: B-Tree, Hash, clustered, non-clustered, etc.
> - The sort order of the index: ascending or descending.
> - The fill factor, which controls the amount of free space that is left in each page of the index to accommodate future growth.
> - The compression, which reduces the size of the index on disk.
> - The included columns, which add non-key columns to the leaf level of the index.

## How can an index be evaluated? 

There are various ways to evaluate the performance of an index in SQL Server.

- One way to measure the duration of a query is to use the `sys.dm_exec_query_stats` also called `DMV`. This DMV returns aggregate performance statistics for cached query plans. By querying this DMV, you can get information about the total elapsed time, execution count, CPU time, and other statistics for a particular query. To measure the duration of a query that retrieves all the orders from the Orders table in the [KioskStore](./src/M153_Projekt_Create.sql) database, you could use the following query:

```
DECLARE @query NVARCHAR(MAX) = N'SELECT * FROM Orders'
DECLARE @start_time DATETIME = GETDATE()

EXEC (@query)

DECLARE @duration FLOAT = (SELECT (DATEDIFF(millisecond, @start_time, GETDATE()))/1000.0)
PRINT 'Duration of the query: ' + CONVERT(NVARCHAR, @duration) + ' seconds'
```


- Another way to measure the query performance is by using the `SET STATISTICS IO` option. This option will give you information about the number of reads and logical reads that the query has made, this way you can check the performance of the indexes.

```
SET STATISTICS IO ON
SELECT * FROM Orders
SET STATISTICS IO OFF
```

- Or the `SET STATISTICS TIME` option to show the time it takes to parse, compile, and execute the query.

```
SET STATISTICS TIME ON
SELECT * FROM Orders
SET STATISTICS TIME OFF
```

There are also other tools, but with does 3 above, you can already collect a lot of performance data.

## What is the use of an index with many records?

When a table has a large number of records, indexes can be particularly useful for improving the performance of queries that retrieve data from that table. This is because an index allows the query optimizer to quickly locate the specific rows that match the query's search criteria, without having to scan the entire table.

To generate a large number of test records in the "Customers" table of the [KioskStore](./src/M153_Projekt_Create.sql) database, you could use the following T-SQL script:

```
--Inserting 50,000 records into the Customers table
INSERT INTO Customers (name, email, date_joined)
SELECT 'Customer' + CAST(ROW_NUMBER() OVER(ORDER BY (SELECT NULL)) AS VARCHAR), 'customer' 
                  + CAST(ROW_NUMBER() OVER(ORDER BY (SELECT NULL)) AS VARCHAR) + '@test.com', 
                  GETDATE()


FROM master..spt_values 
--Might need changes depending on the environment

WHERE type = 'p' AND number <= 50000
```

To test the difference in query performance with a large number of records, you can use the `DMV`, as mentioned previously, to measure the duration of the query with and without an index. Here is an example of how you could compare the performance of a query that retrieves all the customers with the name "Will Smith" with an index and without an index:

```
--Creating an index on the name column
CREATE INDEX idx_customers_name ON Customers (name)

--Measure the duration of the query with an index
DECLARE @query NVARCHAR(MAX) = N'SELECT * FROM Customers WHERE name = ''Will Smith'''
DECLARE @start_time DATETIME = GETDATE()

EXEC (@query)

DECLARE @duration FLOAT = (SELECT (DATEDIFF(millisecond, @start_time, GETDATE()))/1000.0)
PRINT 'Duration of the query with an index: ' + CONVERT(NVARCHAR, @duration) + ' seconds'

--drop the index
DROP INDEX idx_customers_name ON Customers

--Measure the duration of the query without an index
DECLARE @start_time DATETIME = GETDATE()

EXEC (@query)

DECLARE @duration FLOAT = (SELECT (DATEDIFF(millisecond, @start_time, GETDATE()))/1000.0)
PRINT 'Duration of the query without an index: ' + CONVERT(NVARCHAR, @duration) + ' seconds'
```

To test the difference in query performance with a large number of records using `SET STATISTICS TIME` you could use the following code:

```
--Creating an index on the name column
CREATE INDEX idx_customers_name ON Customers (name)

--Measure the duration of the query with an index
SET STATISTICS TIME ON
SELECT * FROM Customers WHERE name = 'Will Smith'
SET STATISTICS TIME OFF

--drop the index
DROP INDEX idx_customers_name ON Customers

--Measure the duration of the query without an index
SET STATISTICS TIME ON
SELECT * FROM Customers WHERE name = 'Will Smith'
SET STATISTICS TIME OFF
```

> It is important to note that the actual performance difference between a query with an index and without an index will depend on many factors, including the size of the table, the complexity of the query, and the hardware and software configuration of the server. 

## What is the use of an index when there are many tables or relationships between tables?

When there are many tables or relationships between tables in a database, indexes can be particularly useful for improving the performance of queries that retrieve data from multiple tables. This is because an index allows the query optimizer to quickly locate the specific rows that match the query's search criteria in one table, and then use that information to locate the corresponding rows in related tables.

Indexes can also be used to improve the performance of joins between tables. When a query joins two or more tables, the query optimizer must compare each row in one table with each row in the other table to find the matching rows. An index on the join column(s) can greatly reduce the number of rows that must be compared, and therefore improve the performance of the query.

For example, in the KioskStore database, the Orders table has a foreign key constraint on the customer_id column that references the primary key of the Customers table. If you want to retrieve the customer name for each order, the query optimizer will use the index on the customer_id column of the Orders table to quickly locate the matching rows in the Customers table.

Additionally, indexes can also be used to improve the performance of subqueries, which are queries that are nested within another query. An index on the column(s) used in the subquery can greatly reduce the number of rows that must be searched, and therefore improve the performance of the query.

It's important to note that having too many indexes can also have a negative impact on the performance of a database. This is because creating and maintaining indexes requires additional resources and can increase the time it takes to insert, update, and delete data. Therefore, it's important to find the right balance between having enough indexes to improve query performance and not having so many indexes that it negatively impacts data modification performance.
