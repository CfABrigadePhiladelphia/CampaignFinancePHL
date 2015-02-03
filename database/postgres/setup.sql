\c postgres

drop database if exists open_disclosure_philly;
create database open_disclosure_philly;

\c open_disclosure_philly

-- drop table if exists expenses;
-- drop table if exists contributions;
-- drop table if exists candidates;
-- drop table if exists committees;

create table candidates (
	candidate_id serial PRIMARY KEY,
	first_name varchar(40) NOT NULL,
	last_name varchar(40) NOT NULL,
	committee_id int NOT NULL
);

create table committees (
	committee_id serial PRIMARY KEY,
	name varchar(300) NOT NULL
);

create table contributions (
	contribution_id serial PRIMARY KEY,
	col0 int,
	year int,
	cycle int,
	schedule varchar(4),
	name varchar(200),
	address1 varchar(300),
	address2 varchar(300),
	city varchar(300),
	state varchar(20),
	zip varchar(20),
	profession varchar(100),
	employer varchar(200),
	employerAddress1 varchar(200),
	employerAddress2 varchar(200),
	employerCity varchar(200),
	employerState varchar(20),
	employerZip varchar(20),
	datestring varchar(40),
	amount money,
	col19 varchar(40),
	col20 varchar(40),
	col21 varchar(40),
	col22 varchar(40),
	description  varchar(200),
	reportedBy varchar(200),
	committee_id int references committees(committee_id)
);

create table expenses (
	expense_id serial PRIMARY KEY,
	col0 int,
	year int,
	cycle int,
	name varchar(200),
	address1 varchar(300),
	address2 varchar(300),
	city varchar(300),
	state varchar(20),
	zip varchar(20),
	datestring varchar(40),
	amount money,
	description  varchar(200),
	col1 varchar(20),
	reportedBy varchar(200),
	committee_id int references committees(committee_id)
);

create table receipts (
	receipt_id serial PRIMARY KEY,
	col0 int,
	year int,
	cycle int,
	name varchar(200),
	address1 varchar(300),
	address2 varchar(300),
	city varchar(300),
	state varchar(20),
	zip varchar(20),
	description varchar(200),
	datestring varchar(40),
	amount money,
	reportedBy varchar(200),
	committee_id int references committees(committee_id)
);




