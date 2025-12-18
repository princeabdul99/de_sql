-- Optimization
	-- Discus the creation of indexes on any columns used frequently in WHERE clauses or as join keys to improve performance.

CREATE INDEX idx_claim_claimdate ON Claims(ClaimDate)	



-- Reminder: Whenever you try creating indexes, it should be creates on the column, which is more frequently expected to 
--           come in your queries.	

-- Ex: You date column could be a very fit where you can create index. 