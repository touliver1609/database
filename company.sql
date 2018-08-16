
drop table public.companies;

CREATE TABLE public.companies (
	id serial NOT NULL,
	"name" varchar NOT NULL,
	"taxID" varchar NOT NULL,
	phone varchar NOT NULL,
	address varchar NOT NULL,
	email varchar NOT NULL,
	active bool NOT NULL,
	"createdAt" date NULL,
	"updatedAt" date NULL,
	CONSTRAINT company_pk PRIMARY KEY (id)
)

select * from public.companies;

insert into public.companies values(1,'VXR','123abc','01216101714','113adv','abc@abc.com',true);

update public.companies set name='VXR1', "taxID"='abc'  where id = 1;

delete from public.companies where id = 1;