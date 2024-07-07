use restaurant_db;
-- 1. View the menu_items table
SELECT 
    *
FROM
    menu_items;

-- 2. Find the number of items on the menu
SELECT 
    COUNT(*)
FROM
    menu_items;

-- 3. What are theleast expensive items on the menu? 
SELECT 
    *
FROM
    menu_items
order by price limit 1;

-- 4 What are the most expensive items on the menu? 
SELECT 
    *
FROM
    menu_items
ORDER BY price DESC limit 1;

-- 5. How many italian dishes are on the menu?
SELECT 
    COUNT(*) AS Italian_dishes
FROM
    menu_items
WHERE
    category = 'Italian';

-- 6. What are the least expensive Italian dishes on the menu?
SELECT 
    *
FROM
    menu_items
WHERE
    category = 'Italian'
ORDER BY price limit 1;


-- 7. What are the most expensive Italian dishes on the menu? 
SELECT 
    *
FROM
    menu_items
WHERE
    category = 'Italian'
ORDER BY price DESC
LIMIT 1;  

-- 8. How many dishes are in each Category?
SELECT 
    category, COUNT(menu_item_id) AS num_dishes
FROM
    menu_items
GROUP BY category;

-- 9. What is the average dish price within each category?
SELECT 
    category, ROUND(AVG(price), 2) AS average_price
FROM
    menu_items
GROUP BY category;



