--drop table public."block";
create table public."blocks" (
	id int4 NOT NULL,
	"name" varchar NOT NULL,
	"numberOfTicketOffice" int4 NOT NULL,
	"createdAt" date NOT NULL,
	"updatedAt" date NOT NULL,
	CONSTRAINT blocks_pk primary key (id)
);

insert into public."blocks" values(1,'A1',5,'2018-08-16','2018-08-16');
select * from public."blocks";