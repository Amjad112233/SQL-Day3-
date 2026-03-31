-- Most expensive product
SELECT product, price
FROM sale
ORDER BY price DESC;

-- Cheapest products
SELECT product, price
FROM sale
ORDER BY price ASC;

-- Top 3 selling products
SELECT product, SUM(quantity) AS total_sold
FROM sale
GROUP BY product
ORDER BY total_sold DESC
LIMIT 3; 

-- Top category by revenue
SELECT category, SUM(price * quantity) AS revenue
FROM sale
GROUP BY category
ORDER BY revenue DESC
LIMIT 1;

-- Top 2 product by revenue
SELECT category, SUM(price * quantity) AS revenue
FROM sale
GROUP BY category
ORDER BY revenue DESC 
LIMIT 2;

-- Lowest selling product
SELECT product, SUM(quantity) AS sold
FROM sale
GROUP BY product
ORDER BY sold ASC
LIMIT 1;

-- Best category (Highest revenue)
SELECT category, SUM (price * quantity) AS revenue
FROM sale
GROUP BY category
ORDER BY revenue DESC
LIMIT 1;

-- Worst category (Lowest revenue)
SELECT category, SUM (price * quantity) AS revenue
FROM sale
GROUP BY category
ORDER BY revenue ASC
LIMIT 1;