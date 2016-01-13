create table employees (employeeNumber int(11) primary key not null unique auto_increment,
lastName varchar(50) not null,
firstName varchar(50) not null,
mobile varchar(25) unique,
officeCode int(10) not null,
jobTitle varchar(50) not null,
birth datetime not null,
note varchar(255),
sex varchar(5),
constraint fk_employee_offices foreign key(officeCode) references offices(officeCode));