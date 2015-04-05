insert into phone_numbers (phone_number, phone_type, person_id)
  values ('555-111-1111', 'H', (select person_id from people where first_name = 'John' and last_name = 'Doe'));

insert into phone_numbers (phone_number, phone_type, person_id)
  values ('555-222-2222', 'H', (select person_id from people where first_name = 'Jane' and last_name = 'Smith'));
