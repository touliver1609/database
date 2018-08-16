drop table public."seats";
create type rentType as enum('person','company');
create table public."seats"(
 	id int4 NOT NULL,
	"column" int4 NOT NULL,
	"row" int4 NOT NULL,
	"parkingLostId" int4 NOT NULL,
	"status" status NOT NULL,
	"rentedDate" date NOT NULL,
	"expirationDate" date NOT NULL,
	"rentedType" rentType NOT NULL,
	"rentedId" int4 NOT NULL,
	"carNumeber" varchar NOT NULL,
	"createdAt" date NOT NULL,
	"updatedAt" date NOT NULL,
	CONSTRAINT seats_pk PRIMARY KEY (id),
	CONSTRAINT seats_parkinglosts_fk FOREIGN KEY ("parkingLostId") REFERENCES public."parkingLosts"(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT seats_companies_fk FOREIGN KEY ("rentedId") REFERENCES public."companies"(id) ON UPDATE CASCADE ON DELETE cascade,
	CONSTRAINT seats_persons_fk FOREIGN KEY ("rentedId") REFERENCES public."persons"(id) ON UPDATE CASCADE ON DELETE cascade
	--check ("rentedType"::text='company') CONSTRAINT seats_companies_fk FOREIGN KEY ("rentedId") REFERENCES public."companies"(id) ON UPDATE CASCADE ON DELETE cascade,
	--check ("rentedType"::text='person') CONSTRAINT seats_persons_fk FOREIGN KEY ("rentedId") REFERENCES public."persons"(id) ON UPDATE CASCADE ON DELETE cascade
);--check ("rentedType"::text='company') 
insert into public."seats" values (1,1,1,1,'hired','2018-05-05','2018-10-05','person',1,'49F1-01902','2018-08-16','2018-08-16');
insert into public."seats" values (2,2,1,1,'available','2018-05-05','2018-10-05','company',1,'49F1-01902','2018-08-16','2018-08-16');
insert into public."seats" values (3,3,1,1,'available','2018-05-05','2018-10-05','company',2,'49F1-01902','2018-08-16','2018-08-16');
select * from public."seats";
select * from public."seats" where public."seats"."rentedType"='company' ;