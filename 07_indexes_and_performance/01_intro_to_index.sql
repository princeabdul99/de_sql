-- INTRO TO INDEXES
/*
- An index acts like a categorized menu
- Index makes your search much faster
- More efficient way to look up and retrieve data from table
- Easy retrieval of data
- It's trade-off between read and write performance

TYPES OF INDEXES
- Single column index
- Composite index
- Unique index
- Clustered index
- Non-clustered index

** Ideally, You should use an index on a column that is frequently used in your where clause for filtering.
** You can also use the indexes on the column, which are very frequently involved in your join operation.
** Or maybe you can create the index on the column which you use for your order-by, or group-by clause.

In nutshell, an index in SQL acts as a performance optimization tool, which allows the database engine to
quickly locate and retrieve specific data from a table, especially when dealing with a large data set. It plays
a crucial role in ehancing the overall speed and efficiency of database queries.



BEST PRACTICES AND CONSIDERATIONS
- Analyze query patterns
	-- indexes should be created based on common query patterns to ensure that most common query get benefitted.

- Monitor performance
	-- Use tools like EXPLAIN to analyze the query plans and identify which indexes are being used effectively.
	
- Balance between reads and writes
	-- While indexes can dramatically improve the read operattions, they can also slow down the write operations
		like your insert, update and delete, because the indexes need to be updated.

Hence, we should balance the number of indexes based on our application's read-write ratio.

- Maintenanc
	-- Periodically, you need to review and maintain your indexes to ensure they remain effective as your data grows
		and evolve.

*/