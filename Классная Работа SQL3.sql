DROP TABLE ZeroForm;
CREATE TABLE ZeroForm(
Name NVARCHAR(MAX),
NameOf NVARCHAR(MAX),
Platoon INT,
Weapon NVARCHAR(MAX),
Dealer NVARCHAR(MAX),
DealerJobTitle NVARCHAR(MAX)
);

INSERT INTO ZeroForm
values
('Petrov V.A.','of.205',222,'AK-47','Buruf O.S.','Mayor'),
('Petrov V.A.','of.205',222,'GLOCK20','Rybakof N.G.','Mayor'),
('Lodarev P.S.','of.221',232,'AK-74','Derebanov V.Y.','Podpolkovnik'),
('Lodarev P.S.','of.221',232,'GLOCK20','Rybakof N.G.','Mayor'),
('Leontev K.V.','of.201',212,'AK-47','Buruf O.S.','Mayor'),
('Leontev K.V.','of.201',212,'GLOCK20','Rybakof N.G.','Mayor'),
('Dyhov R.M.',NULL,200,'AK-47','Buruf O.S.','Mayor')

Select * From ZeroForm

CREATE TABLE Soldiers(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(MAX),
Rank NVARCHAR(MAX),
Platoon INT
);


CREATE TABLE Weapon(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(MAX),
DealerId INT,
FOREIGN KEY (DealerId) REFERENCES Soldiers(Id)
);


CREATE TABLE SoldiersWeapon(
Id INT PRIMARY KEY IDENTITY(1,1),
SoldiersId INT,
WeaponId INT
FOREIGN KEY (SoldiersId) REFERENCES Soldiers(Id),
FOREIGN KEY (WeaponId) REFERENCES Weapon(Id)
);


INSERT INTO Soldiers
values
('Petrov V.A.','of.205',222),
('Lodarev P.S.','of.221',232),
('Leontev K.V.','of.201',212),
('Dyhov R.M.',NULL,200),
('Buruf O.S.','Mayor',NULL),
('Rybakof N.G.','Mayor',NULL),
('Derebanov V.E','Podpolkovnik',NULL)

INSERT INTO Weapon
values
('AK-47',5),
('GLOCK20',6),
('AK-74',7)

INSERT INTO SoldiersWeapon
values
(1,1),
(1,2),
(2,3),
(2,2),
(3,1),
(3,2),
(4,1)


Select * from Soldiers
JOIN SoldiersWeapon on Soldiers.Id = SoldiersWeapon.SoldiersId
JOIN Weapon on Weapon.Id = SoldiersWeapon.WeaponId