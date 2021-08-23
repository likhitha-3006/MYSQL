/*Assignment 1: You have received the below mail from your CEO and you have to respond to that 
mail. 
Hi,
Our portal is live and it’s been quite some time now. Could you please help me in understanding 
from where the bulk of our website sessions are coming from?
I want to see specifically breakdown of UTM source, campaign and referring domain. 
Cheers!
From CEO,
Date: 12th April 2012*/

USE mavenfuzzyfactory;

SELECT utm_source,COUNT(DISTINCT website_session_id) as total_session,utm_campaign,http_referer
FROM website_sessions
WHERE created_at < "2012-04-12"
GROUP BY utm_source,utm_campaign,http_referer
ORDER BY COUNT(website_session_id) DESC;




 

 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 