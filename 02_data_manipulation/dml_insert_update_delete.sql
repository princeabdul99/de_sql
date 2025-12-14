-- INSERT INTO <tablename> (<cols>)
-- VALUES (<data>)

-- Things to consider
/*
- Data types for each column
- Column matching
- Primary key contraints
- Foreign key contraints
- Not null constraints
- Check constraints
- Default values
*/

-- UPDATING TABLE

-- UPDATE <tablename>
-- SET <col> = value
-- WHERE <col_id> = id

-- Updating Multiple columns
-- UPDATE <tablename>
-- SET <col1> = value1, <col2> = value2
-- WHERE <col_id> = id

-- Things to consider
/*
- Where clause precision
- Data type compatibility
- Constraint adherence
- Impact assessment
- Backup considerations
- Performance implications
*/


-- DELETING RECORD

-- DELETE FROM <tablename>
-- WHERE <col_id> = value

-- DELETING ALL RECORDS
-- TRUNCATE <tablename>

-- ** Using Truncate to delete all records because truncate remove records faster than delete statement

-- DROPING TABLE
-- DROP TABLE <tablename>

-- ** Using DROP command delete all records from a table and also remove the table
-- Things to consider
/*
- Where clause precision
- Referential integrity
- Impact assessment
- Backup considerations
- Soft delete option
*/




