create table email (
  email_id          int not null auto_increment primary key,
  email_address     varchar(100),
  email_type        char(1) not null,
  person_id         int not null
);

create table email_type (
  email_type        char(1) not null primary key,
  description       varchar(20)
);

insert into email_type (email_type, description)
select 'P', '${email_type.primary}'
union all
select 'W', '${email_type.work}';

alter table email add constraint fk_person_email
  foreign key (person_id) references people(person_id);

alter table email add constraint fk_email_type
  foreign key (email_type) references email_type(email_type);
