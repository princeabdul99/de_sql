-- CREATE STORED PROCEDURE

CREATE PROCEDURE add_category(cat_id int, cat_name varchar)
LANGUAGE plpgsql
AS
$$
BEGIN
	INSERT INTO categories 
	VALUES (cat_id, cat_name);
END;
$$;

-- CALLING PROCEDURE
CALL add_category(6, 'Fashion')

-- DELETE PROCEDURE
DROP PROCEDURE add_category;