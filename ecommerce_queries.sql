CREATE DATABASE ecommerce_project;
USE ecommerce_project;

-- 20 Queries
SELECT SUM(order_value_usd) AS total_revenue FROM ecommerce;
SELECT COUNT(*) AS total_orders FROM ecommerce;
SELECT AVG(order_value_usd) AS avg_order_value FROM ecommerce;
SELECT product_category,SUM(order_value_usd) revenue FROM ecommerce GROUP BY product_category ORDER BY revenue DESC;
SELECT payment_method,SUM(order_value_usd) revenue FROM ecommerce GROUP BY payment_method ORDER BY revenue DESC;
SELECT customer_gender,SUM(order_value_usd) revenue FROM ecommerce GROUP BY customer_gender;
SELECT returned,COUNT(*) orders FROM ecommerce GROUP BY returned;
SELECT AVG(customer_rating) avg_rating FROM ecommerce;
SELECT product_category,AVG(customer_rating) avg_rating FROM ecommerce GROUP BY product_category;
SELECT delivery_time_days,COUNT(*) FROM ecommerce GROUP BY delivery_time_days;
SELECT MONTH(order_date) month,SUM(order_value_usd) revenue FROM ecommerce GROUP BY MONTH(order_date);
SELECT MAX(order_value_usd) highest_order FROM ecommerce;
SELECT MIN(order_value_usd) lowest_order FROM ecommerce;
SELECT customer_age,COUNT(*) customers FROM ecommerce GROUP BY customer_age ORDER BY customer_age;
SELECT product_category,COUNT(*) orders FROM ecommerce GROUP BY product_category;
SELECT payment_method,COUNT(*) orders FROM ecommerce GROUP BY payment_method;
SELECT customer_gender,AVG(order_value_usd) avg_order FROM ecommerce GROUP BY customer_gender;
SELECT returned,AVG(order_value_usd) avg_order FROM ecommerce GROUP BY returned;
SELECT product_category,AVG(delivery_time_days) avg_delivery FROM ecommerce GROUP BY product_category;
SELECT product_category,SUM(order_value_usd) revenue,DENSE_RANK() OVER(ORDER BY SUM(order_value_usd) DESC) rnk FROM ecommerce GROUP BY product_category;
