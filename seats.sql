--DROP TABLE public."seats";
--DROP type status;
CREATE TYPE status AS enum('available','unavailable');
CREATE TABLE public."seats"(
	"id" serial NOT NULL,
	"idSeat" varchar NOT NULL UNIQUE,
	"status" status NOT NULL,
	"column" INTEGER NOT NULL,
	"row" INTEGER NOT NULL,
	"parkingLostId" integer NOT NULL,
	"createdAt"  date NOT NULL,
	"updatedAt"  date NOT NULL,
	CONSTRAINT seats_pk PRIMARY KEY (id),
	constraint seats_areas_fk foreign key ("parkingLostId") references public."areas"(id)
);

INSERT INTO public."seats" VALUES ('1','P11','available','1','1','1','2018-08-18','2018-08-18');
INSERT INTO public."seats" VALUES ('2','P12','unavailable','1','2','1','2018-08-18','2018-08-18');
--INSERT INTO public."seats" VALUES ('3','P13','abc','1','3','100'); => fail
SELECT * FROM public."seats";
-- query with condition area is parkingLost
select * from public."seats" where "status"='available';