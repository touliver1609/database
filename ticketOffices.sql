--DROP TABLE public."ticketOffices";
CREATE TABLE public."ticketOffices"(
	"id" serial NOT NULL,
	"idTicketOffice" varchar NOT NULL UNIQUE,
	"status" status NOT NULL,
	"officeIndex" INTEGER NOT NULL,
	"blockId" integer NOT NULL,
	"createdAt"  date NOT NULL,
	"updatedAt"  date NOT NULL,
	CONSTRAINT ticketOffices_pk PRIMARY KEY (id),
	constraint ticketOffices_areas_fk foreign key ("blockId") references public."areas"(id)
);

INSERT INTO public."ticketOffices" VALUES ('1','B11','available','1','2','2018-08-18','2018-08-18');
INSERT INTO public."ticketOffices" VALUES ('2','B12','unavailable','2','2','2018-08-18','2018-08-18');
--INSERT INTO public."seats" VALUES ('3','B13','abc','3','100'); => fail
SELECT * FROM public."ticketOffices";
-- query with condition area is parkingLost
select * from public."ticketOffices" where "blockId"=2;