drop table public."persons";
create table public."persons"(
	id int4 not null,
	"name" varchar not null,
	"taxId" varchar not null,
	"phone" varchar not null,
	"email" varchar,
	"address" varchar,
	"active" boolean,
	"createdAt" date not null,
	"updatedAt" date not null,
	constraint persons_pk primary key (id)
	);
insert into public."persons" values (1,'Le Nguyen Thuy Quynh Nhu','0123abc','0975555555','lenguyenthuyquynhnhu@gmail.com','250 Nguyen Van Cong',true,'2018-08-16','2018-08-16');
select * from public."persons";