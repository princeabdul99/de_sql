-- LOGICAL ERRORS IN SQL
/* Logical errors are mistakes that happened when your instructions to the database don't
	achieve what you intended.


	- Getting unintended results
	- Not catch by SQL parser
	- Difficult to catch


	COMMON LOGICAL ERRORS
	- Incorrect joins
	
	- Misuse of aggregate functions.
		--Including non-aggregated column in the SELECT without including them in the GROUP BY could be a problem.
		example: You're trying to do the sum, average or count.
		
	- Incorrect filtering with WHERE and HAVING clause.
		-- WHERE clause should be used before the GROUP BY condition.
		if the WHERE clause is used incorrectly, that can filter out the rules in an unexpected manner.
		if you have some GROUP BY or aggregated values and you are trying to filtering it out, then you
		have to use the HAVING after the GROUP BY only.
		
	- Inaccurate subqueries.
		- If output of subqueries are not properly formatted, probably could some kind of a logical problem.

	- Misinterpretation of NULL values.
		- NULL represents unknown or missing values.
		If you have done any of the condition based on the NULL, you need to ensure that you are using proper
		NULL handling, like IS NULL, IS NOT NULL, or the functions like COALESCE or NVL

	- Overlooking data integrity and constraints.

	- Incorrect set operations.
		Many times, you use the UNION, INTERSECT and ACCEPT. These are called as generally the set operations.
		- If not implemented the right way on queries, can cause logical error

STRATEGIES TO IDENTIFY AND RESOLVE
- Review and test
- Peer review
- Use SQL linters and formatters
- Data and requirement cross-verification
	
*/
