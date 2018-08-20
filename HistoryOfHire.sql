--DROP TABLE public."historyOfHires";
--DROP type type_hire;
CREATE TYPE type_hire AS enum('ticketOffice','seat');
CREATE TABLE public."historyOfHires"(
	"id" serial NOT NULL,
	"idhistoryOfHire" varchar NOT NULL UNIQUE,
	"type_hire" type_hire NOT NULL,
	"hireId" INTEGER NOT NULL,
	"rentedDate" date NOT NULL,
	"expirationDate" date NOT NULL,
	"renterId" integer NOT NULL,
	"carNumber" varchar,
	"createdAt"  date NOT NULL,
	"updatedAt"  date NOT NULL,
	CONSTRAINT historyOfHires_pk PRIMARY KEY (id),
	--CONSTRAINT check_hireId CHECK ("hireId" in (select id from public."ticketOffices" union select id from public."seats")),
	constraint historyOfHires_renters_fk foreign key ("renterId") references public."renters"(id)
);
-- check hireId in table ticketOffice or seat
--DROP FUNCTION check_hireId() CASCADE;
--DROP TRIGGER check_hireId ON public."historyOfHires";
CREATE FUNCTION check_hireId() RETURNS trigger AS $check_hireId_Trigger$
    begin
	    if new."hireId" not in (select id from public."ticketOffices" union select id from public."seats")
	    THEN
            RAISE EXCEPTION 'hireId not exist in relation ticketOffices or seats';
        end if;
       RETURN NEW;
    end;
	$check_hireId_Trigger$ LANGUAGE plpgsql;
	CREATE TRIGGER check_hireId_Trigger BEFORE INSERT OR UPDATE ON public."historyOfHires"
    FOR EACH ROW EXECUTE PROCEDURE check_hireId();
	
INSERT INTO public."historyOfHires" VALUES ('1','H1','ticketOffice','1','2018-08-18','2018-08-18','2','49f1000','2018-08-18','2018-08-18');
INSERT INTO public."historyOfHires" VALUES ('2','H2','seat','1','2018-08-01','2018-08-10','1','59f1000','2018-08-18','2018-08-18');
SELECT * FROM public."historyOfHires";
-- query with condition is expiration
select * from public."historyOfHires" where "expirationDate" < now();