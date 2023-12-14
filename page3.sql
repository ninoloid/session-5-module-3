USE purwadhika_branch;

-- Try to create table with output look like image below:
CREATE TABLE Branches(
	id int not null auto_increment primary key,
	branch_name varchar(3),
	pic varchar(25),
	address varchar(50),
	city varchar(50),
	province varchar(50)
);

INSERT INTO Branches (branch_name, pic, address, city, province)
VALUES
	("BSD", "THOMAS", "GREEN OFFICE PARK 9", "BSD", "TANGERANG"),
	("JKT", "BUDI", "MSIG TOWER", "JAKARTA SELATAN", "JAKARTA"),
	("BTM", "ANGEL", "NONGSA", "BATAM", "KEP. RIAU");


-- Change PIC name into Dono if city is BSD
UPDATE Branches
SET pic = "DONO"
WHERE city = "BSD";

-- Add another branch with branch name BLI, pic is Tono, address is Gianyar,
-- city is Gianyar, province is Bali
INSERT INTO Branches (branch_name, pic, address, city, province)
VALUES ("BLI", "TONO", "GIANYAR", "GIANYAR", "BALI");
