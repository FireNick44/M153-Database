<p align="center">
   <img align="center" src="./github/logo.svg" height="250px">
</p>
<h1 align="center">
   M153 Project «Indizes»
</h1>
<p align="center">
   Yannic Studer </br>
</p>


## What is an index?

An index in a SQL database is a data structure that improves the performance of certain types of queries by allowing the database to quickly locate specific rows of data without having to scan the entire table. For example, in a table with millions of rows, an index on the "last name" column would allow the database to quickly find all rows with a specific last name, without having to scan through every row in the table.

### How do they work?

Indexes work by creating a separate data structure that stores a copy of the indexed columns, along with a pointer to the location of the corresponding row in the original table. When a query is executed that references one of the indexed columns, the database can use the index to quickly locate the matching rows in the table, rather than having to scan the entire table. The more selective the indexed column is, meaning the less repetitive the data, the better the performance of the index. Also, having multiple indexes can help to improve performance for different types of queries, but it can also slow down performance if too many indexes are created. Therefore it's important to choose which columns to index carefully and monitor your indexes performance over time.

There are different types of indexes that work in different ways. For example:

- A B-Tree index, which is the most common type of index, organizes the indexed data in a balanced tree structure, allowing for fast searching, insertion, and deletion of data.
- A Hash index, uses a hash function to map the values in the indexed column to specific locations in the index, allowing for fast lookups of specific values, but can be slower for range queries.
- A clustered index determines the physical order of the data in a table, so that the rows are stored in the same order as the indexed columns. This can make it faster to retrieve consecutive rows of data.

> Windows does use indexes in certain areas of the system to improve performance. One example of this is the NTFS file system, which is used by Windows for storing files on a hard drive. NTFS uses a file indexing system called the Master File Table (MFT) to keep track of the location of files on the hard drive, allowing Windows to quickly locate and access files.


## How is an index created, deleted, etc.?

To create an index, you can use the CREATE INDEX statement. The basic syntax for creating an index in T-SQL is as follows:
```
CREATE INDEX index_name ON table_name (columnX, columnY, columnZ ...)
```

To create an index on the "last_name" column of a table called "people", you would use the following statement:
```
CREATE INDEX idx_employees_last_name ON employees (last_name)
```

To delete an index, you can use the DROP INDEX statement. The basic syntax for deleting an index in T-SQL is as follows:
```
DROP INDEX index_name ON table_name
```

For example, to delete the index "idx_employees_last_name" on the "employees" table, you would use the following statement:
```
DROP INDEX idx_employees_last_name ON employees
```
