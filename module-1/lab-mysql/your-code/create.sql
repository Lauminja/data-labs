```mysql
	USE lab_mysql;
	```

CREATE TABLE Cars (
    Car_id INT NOT NULL AUTO_INCREMENT, 
    VIN VARCHAR(255) NOT NULL,
    Manufacturer VARCHAR(255) NOT NULL,
    Model VARCHAR(255) NOT NULL,
    Year_model Year NOT NULL,
    Color VARCHAR(255),
    PRIMARY KEY (Car_id)
); 
CREATE TABLE Customers (
    Customer_Nb INT NOT NULL AUTO_INCREMENT, 
    Customer_ID VARCHAR(255) NOT NULL,
    Name_Cust VARCHAR(255) NOT NULL,
    Phone_number VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Adress VARCHAR(255),
    City VARCHAR(255),
    State_province VARCHAR(255),
    Zip_postal_code VARCHAR(255),
    Country VARCHAR(255),
	PRIMARY KEY (Customer_Nb)
	
); 

CREATE TABLE Salespersons (
    Staff_Nb INT NOT NULL AUTO_INCREMENT,
    Staff_ID VARCHAR(255) NOT NULL,
    Name_staff VARCHAR(255) NOT NULL,
    Store VARCHAR(255) NOT NULL,
    PRIMARY KEY (Staff_Nb)

); 

CREATE TABLE Invoices (
    Invoice_ID INT NOT NULL AUTO_INCREMENT,
    Invoice_Number VARCHAR(255) NOT NULL,
    Invoice_date DATE NOT NULL,
    Car_id INT NOT NULL,
    Customer_Nb INT NOT NULL,
    Staff_Nb INT NOT NULL,
    PRIMARY KEY (Invoice_ID),
    FOREIGN KEY (Car_id) REFERENCES Cars(Car_id),
    FOREIGN KEY (Customer_Nb) REFERENCES Customers(Customer_Nb),
    FOREIGN KEY (Staff_Nb) REFERENCES Salespersons(Staff_Nb)
); 
