UPDATE Salespersons 
SET Store = 'Miami' WHERE Name_staff = 'Paige Turner;


UPDATE Customers SET 
	Email = CASE
	WHEN Name_Cust = 'Pablo Picasso' THEN 'ppicasso@gmail.com'
	WHEN Name_Cust = 'Abraham Lincoln' THEN 'lincoln@us.gov'
	WHEN Name_Cust = 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
	ELSE Email END
	WHERE Name_Cust = 'Pablo Picasso' OR Name_Cust = 'Abraham Lincoln' OR Name_Cust = 'Napoléon Bonaparte';