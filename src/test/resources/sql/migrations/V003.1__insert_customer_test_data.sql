insert into people (first_name, last_name, phone_number, address_line_1, address_line_2, city, state, zip_code)
select 'John', 'Doe', '555-111-1111', '123 Main', 'Apt #2', 'Des Moines', 'IA', '50265'
union all
select 'Jane', 'Smith', '555-222-2222', '789 Spruce', null, 'De Soto', 'IA', '50069'
