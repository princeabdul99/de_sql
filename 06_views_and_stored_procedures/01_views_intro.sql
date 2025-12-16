-- VIEWS
/*
- It is a virtual table based on the result set of a SELECT query
- View does not store data itself
- It gives way to look at data in more organized and simple manner.
- It is referenced in a query


BENEFITS OF USING VIEWS
- Help simplify reporting
- Data security
- Adaptability
- Code reusability
- Performance optimization
- Simplify complex calculations

TYPES OF VIEWS
* There are two types of views namely;

- Standard views
	* It's the most basic type, which is just like you are saving the SQL query.
	  It provide a very simplified way where instead of running that complex query, 
	  you just go to the view and call the view.

- Materialized views
	* It stores the result of the query onto the disk.
	  It means if you run the materialized view multiple times, instead of executing that query again and again,
	  materialized view just get the information and return the previous execution itself.

	  It is fast compared to the standard view because query execution need not to be done.But the issue is, 
	  if your source data keeps changing, the naterialized view might give you the stale data or data which is 
	  not the very latest.

 In essence, if you have a table which does not keep on updating or changing very frequently, you can have a materialized view
 and whenever somebody execute this materialized view, they will get the result faster compared to the standard views.


LIMITATIONS OF THESE VIEWS
 The limitations of using these views are:

 - Performance
 - Non-indexable
 - No ownership of data
 - Complexity in maintanance


*/











