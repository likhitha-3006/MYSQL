/*Assignment 4
Hi There, 
I was just going through the mobile and realized that the UI is not that great, I did not have the 
satisfactory experience. 
Can you figure out the conversion rates from session to order by device type?
In case the performance is better for desktop then we will bid more for desktop to bring more 
volume. 
From Marketing Director
Date: 11th May 2012*/
/* COUNT(DISTINCT orders.order_id ELSE NULL END) AS ORDERS
 COUNT(DISTINCT website_session_id ELSE NULL END) AS sessions,*/
USE mavenfuzzyfactory;

SELECT DISTINCT(device_type) FROM website_sessions;
SELECT 
	device_type,
    (COUNT(DISTINCT orders.order_id) / COUNT(DISTINCT website_sessions. website_session_id)) * 100 AS CVR
FROM
    website_sessions
        LEFT JOIN
    orders ON website_sessions.website_session_id = orders.website_session_id
WHERE
    website_sessions.created_at < '2012-05-11'
GROUP BY device_type;