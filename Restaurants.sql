-- 1. Combine the menu_items and order_details tables into a single table
SELECT 
    *
FROM
    order_details
        LEFT JOIN
    menu_items ON menu_items.menu_item_id = order_details.item_id;
    
-- 2. What are the most ordered items? What categories were they in?
SELECT 
    item_name,
    category,
    COUNT(order_details_id) AS num_purchases
FROM
    order_details
        LEFT JOIN
    menu_items ON menu_items.menu_item_id = order_details.item_id
GROUP BY item_name , category
ORDER BY num_purchases DESC;

-- 3. What were the top 5 orders that spent most money?
SELECT 
    order_id, SUM(price) AS total_spent
FROM
    order_details
        LEFT JOIN
    menu_items ON menu_items.menu_item_id = order_details.item_id
GROUP BY order_id
ORDER BY total_spent DESC
LIMIT 5;

-- 4.View the details of the highest spend order. Which specific items were purchased?
SELECT 
    category, COUNT(item_id) AS num_items
FROM
    order_details od
        LEFT JOIN
    menu_items mi ON od.item_id = mi.menu_item_id
WHERE
    order_id = 440
GROUP BY category;

-- 5. View the details of the top 5 highest spend orders
SELECT 
    order_id, category, COUNT(item_id) AS num_items
FROM
    order_details od
        LEFT JOIN
    menu_items mi ON od.item_id = mi.menu_item_id
WHERE
    order_id IN (440 , 2075, 1957, 330, 2675)
GROUP BY order_id , category;

