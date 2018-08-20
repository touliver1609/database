--DROP TABLE public."areas";

CREATE TYPE type_area AS enum('parkingLost','block');
CREATE TABLE public."areas"(
	"id" serial NOT NULL,
	"idArea" varchar NOT NULL UNIQUE,
	"name" varchar NOT NULL,
	"numberOfPlace" INTEGER NOT NULL,
	"type_area" type_area NOT NULL,
	"createdAt"  date NOT NULL,
	"updatedAt"  date NOT null,
	CONSTRAINT areas_pk PRIMARY KEY (id)
);

INSERT INTO public."areas" VALUES ('1','P1','Khu đỗ xe 1','10','parkingLost','2018-08-18','2018-08-18');
INSERT INTO public."areas" VALUES ('2','B1','Khu phòng vé 1','5','block','2018-08-18','2018-08-18');
--INSERT INTO public."areas" VALUES ('3','B1','Khu phòng vé 1','5','abc'); => fail
SELECT * FROM public."areas";
-- query with condition area is parkingLost
select * from public."areas" where "type_area"='parkingLost';