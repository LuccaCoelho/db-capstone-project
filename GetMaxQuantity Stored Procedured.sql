CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMaxQuantity`()
BEGIN
SELECT MAX(Quantity) AS 'Max Quantity Order'
FROM orders;
END