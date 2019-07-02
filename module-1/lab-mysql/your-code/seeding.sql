INSERT INTO Cars (Car_id, VIN, Manufacturer, Model, Year_model, Color) 
VALUES 
	(default, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'),
	(default, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
	(default, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
	(default, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver'),
	(default, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),
	(default, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray');

INSERT INTO Customers (Customer_Nb, Customer_ID, Name_Cust, Phone_number, Email, Adress, City, State_province, Zip_postal_code, Country)
VALUES
	(default, '10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', '28045', 'Spain'),
	(default, '20001', 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', '33130', 'United States'),
	(default, '30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', '75008', 'France');

INSERT INTO Salespersons (Staff_Nb, Staff_ID, Name_staff, Store)
VALUES
	(default, '00001', 'Petey Cruiser', 'Madrid'),
	(default, '00002', 'Anna Sthesia', 'Barcelona'),
	(default, '00003', 'Paul Molive', 'Berlin'),
	(default, '00004', 'Gail Forcewind', 'Paris'),
	(default, '00005', 'Paige Turner', 'Mimia'),
	(default, '00006', 'Bob Frapples', 'Mexico City'),
	(default, '00007', 'Walter Melon', 'Amsterdam'),
	(default, '00008', 'Shonda Leer', 'São Paulo');	

INSERT INTO Invoices (Invoice_ID, Invoice_Number, Invoice_date, Car_id, Customer_Nb, Staff_Nb)
VALUES
	(default, '852399038', '2018-08-22', '1', '2', '4'),
	(default, '731166526', '2018-12-31',  '4', '1', '6'),
	(default, '271135104', '2019-01-22', '3', '3', '8');	
