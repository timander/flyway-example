create table phone_numbers (
  phone_number_id   int not null auto_increment primary key,
  phone_number      varchar(20),
  phone_type        char(1),
  person_id         int not null
);

create table phone_type (
  phone_type        char(1),
  description       varchar(20)
);

insert into phone_type (phone_type, description) values ('H', 'Home');

alter table phone_numbers add constraint fk_phone_numbers_people
  foreign key (person_id) references people(person_id);

insert into phone_numbers (phone_number, phone_type, person_id)
  select phone_number, 'H', person_id from people;

alter table people drop column phone_number;

drop view people_view;

create view people_view as (
  select
    a.person_id,
    a.first_name,
    a.last_name,
    b.phone_number,
    a.address_line_1,
    a.address_line_2,
    a.city,
    a.state,
    a.zip_code
  from people a join phone_numbers b on b.person_id = a.person_id
  where b.phone_type = 'H'
);
