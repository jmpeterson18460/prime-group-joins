--1. Get all customers and their addresses:
SELECT * FROM "customers" JOIN "addresses" ON
"customers"."id" = "addresses"."customer_id";

--2. Get all orders and their line items:
SELECT * FROM "orders" JOIN "line_items" ON
"orders"."id" = "line_items"."order_id";

--3. Which warehouses have Cheetos?
SELECT "warehouse","description" FROM "warehouse" JOIN "warehouse_product" ON
"warehouse"."id" = "warehouse_product"."warehouse_id" JOIN
"products" ON "products"."id" = "warehouse_product"."product_id"
WHERE "product_id" = 5;

--4. Which warehouses have diet Pepsi?
SELECT "warehouse","description" FROM "warehouse" JOIN "warehouse_product" ON
"warehouse"."id" = "warehouse_product"."warehouse_id" JOIN
"products" ON "products"."id" = "warehouse_product"."product_id"
WHERE "product_id" = 6;

--5. Get the number of orders for each customer:
SELECT "customers"."first_name", count('customer_id') FROM "customers" JOIN "addresses" ON
"customers"."id" = "addresses"."customer_id" JOIN "orders" ON "orders"."address_id" = 
"addresses"."id" GROUP BY"customers"."first_name";

--6. How many customers do we have?
SELECT count(*) FROM "customers";

--7. How many product do we carry?
SELECT count(*) FROM "products";

--8. What is the total available on-hand quantity of diet Pepsi?

