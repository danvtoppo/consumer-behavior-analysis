/*Goal: Identify if "High Income" customers are actually the biggest spenders, 
  or if "Middle Income" customers who use discounts have a higher lifetime value.*/

SELECT INCOME_LEVEL, 
  SUM(REPLACE(PURCHASE_AMOUNT,'$','')::NUMERIC) AS PURCHASE_AMOUNT, 
  COUNT(1) AS SPENDERS,
  SUM(REPLACE(PURCHASE_AMOUNT,'$','')::NUMERIC)/COUNT(1) AS PURCHASE_AMOUNT_PER_SPENDER
FROM CONSUMER_BEHAVIOR
GROUP BY 1;

/*Goal: Do smartphone users buy more "Impulsive" items than desktop users?*/

SELECT DEVICE_USED_FOR_SHOPPING, 
  COUNT(CASE WHEN PURCHASE_INTENT='Need-based' then 1 END)  AS NEED_BASED,
  COUNT(CASE WHEN PURCHASE_INTENT='Wants-based' then 1 END)  AS WANTS_BASED,
  COUNT(CASE WHEN PURCHASE_INTENT='Impulsive' then 1 END)  AS Impulsive,
  COUNT(CASE WHEN PURCHASE_INTENT='Planned' then 1 END)  AS Planned
FROM CONSUMER_BEHAVIOR
GROUP BY 1

/*Goal: Determine if people who spend more time researching actually give 
higher Product_Rating scores. Does more research lead to fewer returns?*/

SELECT 
  COUNT(1) AS CUSTOMERS,
  "Time_Spent_on_Product_Research(hours)" AS RESEARCH_TIME, 
  AVG(PRODUCT_RATING),
  AVG(RETURN_RATE)
FROM CONSUMER_BEHAVIOR
GROUP BY 2
ORDER BY RESEARCH_TIME DESC;

/*Goal: Determine if people who spend more time researching actually give higher Product_Rating scores.
Does more research lead to fewer returns?*/

SELECT SOCIAL_MEDIA_INFLUENCE, 
  AVG(PRODUCT_RATING) AS AVG_PRODUCT_RATING,  
  AVG(RETURN_RATE) AS AVG_RETURN_RATE,
  COUNT(1) AS CONSUMERS
FROM CONSUMER_BEHAVIOR
GROUP BY 1
