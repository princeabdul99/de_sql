-- DML Challenge
/*
It has been detected that an order with  ID #10 has been poached into the system, which is an incorrect order. This order
has to be removed from the order list.

Task:
Remove the order with ID #10 from the order list
*/

DELETE FROM orders
WHERE order_id = 10;