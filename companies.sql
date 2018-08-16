--delete 1 table
drop table public.companies;
--create 1  table voi cac thuoc tinh thiet lap primary key
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
-- Xem tat ca cac du lieu cua table
select * from public.companies;

-- insert du lieu moi vao table  
insert into public.companies values(1,'VXR','123abc','01216101714','113adv','abc@abc.com',true);
-- update du lieu cua 1 hang da ton tai theo field id 
update public.companies set name='VXR1', "taxID"='abc'  where id = 1;
-- delete du lieu o 1 hang da ton tai theo field id
delete from public.companies where id = 1;