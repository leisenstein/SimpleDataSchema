create table Contacts(
	Id int identity(1,1) not null,
	FirstName varchar(50) null,
	LastName varchar(50) null,
	Email varchar(50) null,
	Company varchar(50) null,
	Title varchar(50) null,
	constraint PK_Contacts primary key clustered(Id ASC)
);



create table States (
	Id int not null,
	StateName varchar(50) not null,
	constraint PK_States primary key clustered (Id ASC)

);


create table Addresses(
	Id int identity(1,1) not null,
	ContactId int not null,
	AddressType varchar(10) not null,
	StreetAddress varchar(50) not null,
	City varchar(50) not null,
	StateId int not null,
	PostalCode varchar(20) not null,
	constraint PK_Addresses primary key clustered(Id ASC),
	constraint FK_Addresses_Contacts FOREIGN KEY(ContactId) REFERENCES Contacts(Id),
	constraint FK_Addresses_State FOREIGN KEY(StateId) references States(Id)
);
