--create table historyofhireseats va set PRIMARY KEY va FOREIGN KEY toi cac bang lien quan
CREATE TABLE public.historyofhireseats (
	id serial NOT NULL,
	id_company int4 NOT NULL,
	id_seat int4 NOT NULL,
	rented_date date NOT NULL,
	expiration_date date NOT NULL,
	CONSTRAINT historyofhireseats_pk PRIMARY KEY (id),
	CONSTRAINT historyofhireseats_companies_fk FOREIGN KEY (id_company) REFERENCES companies(id),
	CONSTRAINT historyofhireseats_seats_fk FOREIGN KEY (id_seat) REFERENCES seats(id)
)
-- insert du lieu moi vao table  
INSERT INTO public.historyofhireseats VALUES(1,1,1,'2018-09-16','2018-09-17');
-- Xem tat ca cac du lieu cua table
SELECT * FROM public.historyofhireseats
-- update du lieu cua 1 hang da ton tai theo field id 
update public.historyofhireseats set id_company=2  where id = 1;
-- delete du lieu o 1 hang da ton tai theo field id
delete from public.historyofhireseats where id = 1;