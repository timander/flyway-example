insert into email (email_address, email_type, person_id)
  values ('jdoe5526@hotmail.com', 'P', (select person_id from people where first_name = 'John' and last_name = 'Doe'));

insert into email (email_address, email_type, person_id)
  values ('john.doe@work.com', 'W', (select person_id from people where first_name = 'John' and last_name = 'Doe'));

insert into email (email_address, email_type, person_id)
  values ('janesmith1234@aol.com', 'P', (select person_id from people where first_name = 'Jane' and last_name = 'Smith'));
