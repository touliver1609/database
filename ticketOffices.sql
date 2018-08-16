drop table public."ticketOffices";
create type status as enum('hired','available','overdue','unavilable');
CREATE TABLE public."ticketOffices" (
	id int4 NOT NULL,
	"officeIndex" int4 NOT NULL,
	"blockId" int4 NOT NULL,
	"status" status NOT NULL,
	"rentedDate" date NOT NULL,
	"expirationDate" date NOT NULL,
	"companyId" int4 NOT NULL,
	"createdAt" date NOT NULL,
	"updatedAt" date NOT NULL,
	CONSTRAINT ticketoffices_pk PRIMARY KEY (id),
	CONSTRAINT ticketoffices_blocks_fk FOREIGN KEY ("blockId") REFERENCES blocks(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT ticketoffices_companies_fk FOREIGN KEY ("companyId") REFERENCES companies(id) ON UPDATE CASCADE ON DELETE CASCADE
);
INSERT INTO public."ticketOffices" VALUES (1,1,1,'hired','2018-05-15','2018-09-10',1,'2018-08-16','2018-08-16');
INSERT INTO public."ticketOffices" VALUES (2,2,1,'available','2018-05-15','2018-09-10',2,'2018-08-16','2018-08-16');
INSERT INTO public."ticketOffices" VALUES (3,1,2,'available','2018-05-15','2018-09-10',2,'2018-08-16','2018-08-16');
select * from public."ticketOffices";
--select all ticketOffice with condition is company relation have value field active is false 
select a.id,a."companyId", a.status, a."rentedDate", a."expirationDate",b.active from public."ticketOffices" as a
, public."companies" as b where b."id"=a."companyId" and b.active = false;
--select all ticketOffice with condition have value field blockId is 1 
select a.id,  a."blockId",a."companyId", a."status", a."rentedDate", a."expirationDate" from public."ticketOffices" as a
where  a."blockId" = 1;