-- drop table public."parkingLosts";
create table public."parkingLosts"(
	id int4 not null,
	"name" varchar NOT NULL,
	"numberOfSeat" int4 NOT NULL,
	"createdAt" date NOT NULL,
	"updatedAt" date NOT NULL,
	constraint parkingLosts_pk primary key (id)
);

insert into public."parkingLosts" values (1,'P1',10,'2018-08-16','2018-08-16');
select * from public."parkingLosts";