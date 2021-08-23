/*Assignment 3:
Hey, 
Based on our last conversation where we analyzed conversion rate, we bid down gsearch non brand 
on 15th April 2012 because we were over bidding for g search non brand. 
Now, can you find gsearch non brand trended session, volume by week to see if the bid changes has 
caused the volume to drop at all?
From Marketing Director,
Date: 10th May 2012*/

USE mavenfuzzyfactory;

SELECT  
	YEAR(website_sessions.created_at) AS yr,
	MONTH(website_sessions.created_at) AS mnt,
	WEEK(website_sessions.created_at) AS wk,
	(COUNT(DISTINCT orders.order_id)
		/COUNT(DISTINCT website_sessions.website_session_id)*100) AS CVR
	FROM website_sessions LEFT JOIN orders
	ON website_sessions.website_session_id=orders.website_session_id
    WHERE utm_source="gsearch" AND utm_campaign = "nonbrand" and website_sessions.created_at<"2012-05-10"
	GROUP BY yr,wk
	ORDER BY yr;