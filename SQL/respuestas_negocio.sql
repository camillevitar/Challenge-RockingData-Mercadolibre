/* Listar los usuarios que cumplan años el día de hoy cuya cantidad de ventas
realizadas en enero 2020 sea superior a 1500. */
SELECT customers.first_name, customers.last_name
FROM customers
INNER JOIN sales ON sales.customer_id=customers.id
WHERE date_of_birth = CURDATE()
AND MONTH(sales.date) = 01
AND YEAR(sales.date) = 2020
AND sales.total_amount > 1500;

/* Por cada mes del 2020, se solicita el top 5 de usuarios que más vendieron($) en la
categoría Celulares. Se requiere el mes y año de análisis, nombre y apellido del
vendedor, cantidad de ventas realizadas, cantidad de productos vendidos y el monto
total transaccionado. */
SELECT customers.first_name, customers.last_name, MONTHNAME(sales.date) as Month, YEAR(sales.date) as Year, COUNT(*) as Total_Sales, SUM(items.quantity) as Total_Items, SUM(sales.total_amount) as Total_Amount
FROM customers
INNER JOIN sales ON sales.customer_id = customers.id
INNER JOIN items ON items.id = sales.items_id
INNER JOIN categories ON categories.id = items.category_id
WHERE categories.name = 'Celulares'
AND YEAR(sales.date) = 2020
GROUP BY customers.first_name, customers.last_name, MONTH(sales.date)
ORDER BY Total_Sales DESC LIMIT 5;

/*  Se solicita poblar una nueva tabla con el precio y estado de los Ítems a fin del día.
Tener en cuenta que debe ser reprocesable. Vale resaltar que en la tabla Item,
vamos a tener únicamente el último estado informado por la PK definida. (Se puede
resolver a través de StoredProcedure) */
CREATE PROCEDURE ItemPriceLogger ()
BEGIN 
  INSERT INTO item_price_logger (item_id, price, status, date) 
  SELECT id, price_in_cents, status, CURRENT_TIMESTAMP FROM items; 
END;

