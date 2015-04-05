create table email (
  email_id          int not null auto_increment primary key,
  email_address     varchar(100),
  email_type        char(1) not null,
  person_id         int not null
);

create table email_type (
  email_type        char(1),
  description       varchar(20)
);

insert into email_type (email_type, description) values ('P', 'Primary');

alter table email add constraint fk_person_email
  foreign key (person_id) references people(person_id);
