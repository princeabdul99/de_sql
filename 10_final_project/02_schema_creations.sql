-- Task 1: Database Schema Creation
-- Define tables: Customers, Policies, Claims, PolicyTypes.
	-- Include fields such as CustomerID, PolicyID, ClaimID, PolicyTypeID, ClaimAmount, ClaimDate, PolicyStartDate, PolicyEndDate, etc.


-- Customer Table --
CREATE TABLE Customers (
	CustomerID SERIAL PRIMARY KEY,
	Firstname VARCHAR(50),
	Lastname VARCHAR(50),
	DataOfBirth DATE,
	Gender CHAR(1),
	Address VARCHAR(100),
	City VARCHAR(50),
	State VARCHAR(50),
	Zipcode VARCHAR(10)
);

-- PolicyTypes Table --
CREATE TABLE PolicyTypes (
	PolicyTypeID SERIAL PRIMARY KEY,
	PolicyTypeName VARCHAR(50),
	Description TEXT
);

-- Policies Table --
CREATE TABLE Policies (
	PolicyID SERIAL PRIMARY KEY,
	CustomerID INT REFERENCES Customers(CustomerID),
	PolicyTypeID INT REFERENCES PolicyTypes(PolicyTypeID),
	PolicyStartDate DATE,
	PolicyEndData DATE,
	Premium DECIMAL(10, 2)
);

-- Claims Table --
CREATE TABLE Claims (
	ClaimID SERIAL PRIMARY KEY,
	PolicyID INT REFERENCES Policies(PolicyID),
	ClaimDate DATE,
	ClaimAmount DECIMAL(10, 2),
	ClaimDescription TEXT,
	ClaimStatus VARCHAR(50)
);






