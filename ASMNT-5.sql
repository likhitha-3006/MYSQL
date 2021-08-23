/*Assignment 5:
Hi There, 
Based on device level analysis of conversion rates, desktop was doing well, so we raised the bid for 
gsearch nonbrand desktop on 19th
 May 2012. 
Can you figure out weekly trends by device type to see the impact on volume?
Baseline: 15th April 2012. 
From Marketing Director
Date: 9th June 2012*/

USE mavenfuzzyfactory;

SELECT  YEAR(website_sessions.created_at) AS yr,
		MONTH(website_sessions.created_at) AS mnt,
		WEEK(website_sessions.created_at) AS wk,
        device_type,
		(COUNT(DISTINCT orders.order_id)
			/COUNT(DISTINCT website_sessions.website_session_id)*100) AS CVR
            FROM website_sessions
            LEFT JOIN orders
        ON website_sessions.website_session_id=orders.website_session_id
        WHERE utm_source = "gsearch" AND utm_campaign = "nonbrand"  AND device_type="desktop" AND website_sessions.created_at < "2012-06-09"
        GROUP BY yr,wk
		ORDER BY yr;