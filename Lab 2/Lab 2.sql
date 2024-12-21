create database student;  
use student;

DROP TABLE studentinfo;
CREATE TABLE studentinfo(
s_id int PRIMARY KEY,
s_fname varchar(15) NOT NULL,
s_mname varchar(15),
s_lname varchar(15),
s_address varchar(15),
s_city varchar(15) default 'Kathmandu',
s_age int CHECK (s_age>18),
s_phonenumber bigint UNIQUE
);
Insert INTO studentinfo(s_id,s_fname,s_mname,s_lname) VALUES('29',NULL,'Thapa','Magar');
Insert INTO studentinfo(s_id,s_fname,s_mname,s_lname) VALUES('29','Deepak','Thapa','Magar');

Insert INTO studentinfo(s_id,s_fname,s_lname,s_phonenumber) VALUES('29','Deepak','Thapa',9827131841),('11','Ayush','Lamsal',9827131841);
Insert INTO studentinfo(s_id,s_fname,s_lname,s_phonenumber) VALUES('29','Deepak','Thapa',9827131841),('11','Ayush','Lamsal',9827131842);

Insert INTO studentinfo(s_id,s_fname,s_lname,s_age,s_phonenumber) VALUES('11','Ayush','Lamsal',17,9827131840);
Insert INTO studentinfo(s_id,s_fname,s_lname,s_age,s_phonenumber) VALUES('11','Ayush','Lamsal',21,9827131840);

Insert INTO studentinfo(s_id,s_fname,s_lname,s_phonenumber) VALUES('29','Deepak','Thapa',9827131841),('11','Ayush','Lamsal',9827131840);
Insert INTO studentinfo(s_id,s_fname,s_lname,s_city,s_phonenumber) VALUES('29','Deepak','Thapa','Damauli',9827131841),('11','Ayush','Lamsal','Kathmandu',9827131840);
Insert INTO studentinfo(s_id,s_fname,s_lname,s_city,s_phonenumber) VALUES('11','Ayush','Lamsal',NULL,9827131840);

Insert INTO studentinfo(s_id,s_fname,s_lname,s_phonenumber) VALUES('29','Deepak','Thapa',9827131841),('11','Ayush','Lamsal',9827131840);
Insert INTO studentinfo(s_id,s_fname,s_lname,s_phonenumber) VALUES('29','Deepak','Thapa',9827131841),('29','Ayush','Lamsal',9827131840);
Insert INTO studentinfo(s_id,s_fname,s_lname,s_phonenumber) VALUES('29','Deepak','Thapa',9827131841),(NULL,'Ayush','Lamsal',9827131840);
Insert INTO studentinfo(s_fname,s_lname,s_phonenumber) VALUES('Deepak','Thapa',9827131841),('Ayush','Lamsal',9827131840);

INSERT INTO studentinfo(s_id,s_fname,s_mname,s_lname,s_phonenumber,s_age,s_address) VALUES('29','Deepak','Thapa','Magar',9827131841,22,'Damauli');
INSERT INTO studentinfo(s_id,s_fname,s_mname,s_lname,s_phonenumber,s_age,s_address) VALUES('11','Ayush',NULL,'Lamsal',9827131842,23,'Kalimati');
INSERT INTO studentinfo(s_id,s_fname,s_mname,s_lname,s_phonenumber,s_age,s_address) VALUES('12','Adarsh',NULL,'Acharya',9827131843,23,'Omae');
INSERT INTO studentinfo(s_id,s_fname,s_mname,s_lname,s_phonenumber,s_age,s_address) VALUES('13','Abiral',NULL,'Paudel',9827131844,23,'Wa');
INSERT INTO studentinfo(s_id,s_fname,s_mname,s_lname,s_phonenumber,s_age,s_address) VALUES('14','Abhiyan',NULL,'Poudel',9827131845,23,'Mou');
INSERT INTO studentinfo(s_id,s_fname,s_mname,s_lname,s_phonenumber,s_age,s_address) VALUES('15','Abhiyani',NULL,'Poudel',9827131846,23,'Shinderu');
INSERT INTO studentinfo(s_id,s_fname,s_mname,s_lname,s_phonenumber,s_age,s_address) VALUES('16','Abhiyaan',NULL,'Poudel',9827131847,23,'Baka');
INSERT INTO studentinfo(s_id,s_fname,s_mname,s_lname,s_phonenumber,s_age,s_address) VALUES('17','Abhiyano',NULL,'Poudel',9827131848,23,'Koros');

truncate table studentinfo;	

SELECT * FROM studentinfo;


DROP TABLE phonedetails;
CREATE TABLE phonedetails(
s_phonenumber bigint,
sim_type varchar(10),
balance int,
s_id int FOREIGN KEY REFERENCES studentinfo(s_id)
ON DELETE CASCADE
ON UPDATE SET NULL
);

Insert into phonedetails values (9827131841,'ncell',100,29);
Insert into phonedetails values (9827131842,'ntc',100,11);
Insert into phonedetails values (9827131843,'ncell',100,12);
Insert into phonedetails values (9827131844,'ntc',100,13);
Insert into phonedetails values (9827131845,'ncell',100,14);

INSERT INTO studentinfo(s_id,s_fname,s_mname,s_lname,s_phonenumber,s_age,s_address) VALUES('10','Dipak','Thapa','Magar',9827131840,22,'Damauli');
Insert into phonedetails values (9827131846,'ntc',100,1000);
Insert into phonedetails values (9827131846,'ntc',100,15);

delete from studentinfo where s_id = 29; 
delete from studentinfo where s_id = 17;

delete from phonedetails where s_id = 29;

update studentinfo set s_id = 10 where s_id = 11;
update studentinfo set s_id = 10 where s_id = 15;

update phonedetails set s_id = 1000 where s_id = 29;
update phonedetails set s_id = 10 where s_id = 29;

truncate table phonedetails;
SELECT * FROM studentinfo;
SELECT * FROM phonedetails;