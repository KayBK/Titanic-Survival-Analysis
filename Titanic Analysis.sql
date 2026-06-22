SELECT 
	*
FROM 
	titanic t 

	
-- 1.What is the overall survival rate of passengers?
	SELECT 
    	ROUND(AVG("Survived") * 100, 2) AS survival_rate_percentage
	FROM titanic;

-- 2. How does survival differ between males and females?
	SELECT 
	    "Sex",
	    COUNT(*) AS total_passengers,
	    SUM("Survived") AS survivors,
	    ROUND(AVG("Survived") * 100, 2) AS survival_rate
	FROM 
		titanic
	GROUP BY 
		"Sex";

-- 3. Did passenger class influence survival?
	SELECT 
	    "Pclass",
	    COUNT(*) AS total_passengers,
	    SUM("Survived") AS survivors,
	    ROUND(AVG("Survived") * 100, 2) AS survival_rate
	FROM 
		titanic
	GROUP BY 
		"Pclass" 
	ORDER BY 
		"Pclass";

-- 4. Which age group had the highest survival rate?
	SELECT 
	    "Age_group",
	    COUNT(*) AS total_passengers,
	    SUM("Survived") AS survivors,
	    ROUND(AVG("Survived") * 100, 2) AS survival_rate
	FROM 
		titanic
	GROUP BY 
		"Age_group"
	
-- 5. Does embarkation location affect survival?
	
	SELECT 
	    "Embarked" mbarked,
	    COUNT(*) AS total_passengers,
	    SUM("Survived") AS survivors,
	    ROUND(AVG("Survived") * 100, 2) AS survival_rate
	FROM 
		titanic
	GROUP BY 
		"Embarked" 
	ORDER BY 
		survival_rate DESC;
	
-- 6. Does traveling alone vs with family affect survival?
	SELECT 
	    CASE 
	        WHEN "SibSp"  + "Parch" = 0 THEN 'Alone'
	        WHEN "SibSp" + "Parch" BETWEEN 1 AND 3 THEN 'Small Family'
	        ELSE 'Large Family'
	    END AS family_size_group,
	    COUNT(*) AS total_passengers,
	    ROUND(AVG("Survived") * 100, 2) AS survival_rate
	FROM titanic
	GROUP BY 
		family_size_group
	ORDER BY 
		survival_rate DESC;

-- 7. Does ticket price influence survival chances?
	SELECT 
	    CASE 
	        WHEN "Fare" <= 7.91 THEN 'Low'
	        WHEN "Fare"  <= 14.45 THEN 'Low-Mid'
	        WHEN "Fare"  <= 31 THEN 'High-Mid'
	        ELSE 'High'
	    END AS fare_group,
	    COUNT(*) AS total_passengers,
	    ROUND(AVG("Survived") * 100, 2) AS survival_rate
	FROM
		titanic
	GROUP BY 
		fare_group
	ORDER BY 
		survival_rate DESC;

-- 8. Were passengers with recorded cabins more likely to survive?
	SELECT 
	    "Cabin_known",
	    COUNT(*) AS total_passengers,
	    SUM("Survived") AS survivors,
	    ROUND(AVG("Survived") * 100, 2) AS survival_rate
	FROM 
		titanic
	GROUP BY 
		"Cabin_known" ;

-- 9. How does survival change when combining sex and passenger class?
	SELECT 
	    "Sex" ,
	    "Pclass",
	    COUNT(*) AS total_passengers,
	    ROUND(AVG("Survived") * 100, 2) AS survival_rate
	FROM 
		titanic
	GROUP BY 
		"Sex", "Pclass"
	ORDER BY 
		"Sex", "Pclass";

-- 10. Which combination of factors shows the lowest survival rate?
	SELECT 
	    "Sex",
	    "Pclass",
	    "Age_group",
	    COUNT(*) AS total_passengers,
	    ROUND(AVG("Survived") * 100, 2) AS survival_rate
	FROM 
		titanic
	GROUP BY 
		"Sex", "Pclass", "Age_group"
	ORDER BY 
		survival_rate ASC
	LIMIT 10;