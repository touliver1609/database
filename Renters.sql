--DROP TABLE public."renters";
--DROP type type_renter;
CREATE TYPE type_renter AS enum('company','person');
CREATE TABLE public."renters"(
	"id" serial NOT NULL,
	"idRenter" varchar NOT NULL UNIQUE,
	"name" varchar NOT NULL,
	"taxId" varchar NOT NULL UNIQUE,
	"phone" varchar NOT NULL,
	"address" varchar NOT NULL,
	"email" varchar,
	"active" boolean NOT NULL,
	"type_renter" type_renter NOT null,
	"createdAt"  date NOT NULL,
	"updatedAt"  date NOT NULL,
	CONSTRAINT renters_pk PRIMARY KEY (id)
);

INSERT INTO public."renters" VALUES ('1','C1','Công ty Kẹo.com Số 1 thế giới','0123456','0975555555','150 bcd','123@keo.com','true','company','2018-08-18','2018-08-18');
INSERT INTO public."renters" VALUES ('2','N1','Lê Nguyễn Thụy Quỳnh Như','0123457','0975555555','150 bcd','nhu@nhu.com','true','person','2018-08-18','2018-08-18');
SELECT * FROM public."renters";
-- query with condition area is parkingLost
select * from public."renters" where "type_renter"='company';