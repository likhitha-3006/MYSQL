/*Assignment 2:
It looks like gsearch nonbrand is the major traffic source, but we need to understand if we are get 
sales out of it. 
Is it possible for you to calculate the conversion rate from session to order?
We will require to manage bids based on CVR
Cheers!
From EA - CEO,
Date: 14th April 2012*/

USE mavenfuzzyfactory;

/* CVR FOR  utm_source - gsearch nonbrand */

SELECT 
	
	(COUNT(DISTINCT orders.order_id)
		/COUNT(DISTINCT website_sessions.website_session_id)*100) AS gsearch_nonbrand_CVR
	FROM website_sessions 
	LEFT JOIN orders
	ON website_sessions.website_session_id = orders.website_session_id
    WHERE utm_source = "gsearch" AND utm_campaign = "nonbrand" AND website_sessions.created_at < "2012-04-14" ;