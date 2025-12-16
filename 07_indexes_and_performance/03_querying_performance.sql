-- UNDERSTANDING QUERY PERFORMANCE
/*
Assesing SQL query optimization in PostgreSQL is crucial for optimizing your database queries and ensure efficient data retrieval.

ESSENTAILS STEPS TO ASSESS AND ENHANCE SQL QUERY PERFORMANCE

- Enable query execution statistics by setting track_activities and track_counts parameters in postgresql.conf file.
- Utilize the EXPLAIN and ANALYZE command.
- Check query execution time to identify the slow performing queries, could be very beneficial.
  Postgresql provides a way to do this using pg_stat_statements. to capture the execution time.	
- Using pgBadger for Log Analysis. A tool that help to analyze the logs of the PostgreSQL.
- Check index usage. To verify if the queries are utilizing the indexes efficiently.
- Analyze query execution plans. You can use the EXPLAIN command to analyze execution plans.


RECOMMENDATIONS
- Consider using materialized views.
- Review and optimize SQL queries.


*/

EXPLAIN ANALYZE SELECT *
FROM orders
WHERE order_id=1;

EXPLAIN ANALYZE SELECT *
FROM orders
WHERE customer_id=1;

-- Viewing all indexes
SELECT *
FROM pg_stat_user_indexes;

-- View specific table indexes
SELECT *
FROM pg_stat_user_indexes
WHERE relname = 'orders';

-- Analyze Execution plane
EXPLAIN SELECT *
FROM orders
WHERE order_id=1;
