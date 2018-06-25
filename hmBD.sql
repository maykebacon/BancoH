explain tipo_logradouro;
explain logradouro;

insert into tipo_logradouro(desc_tip_log)
values ('Rua'),
('Avenida'),
('Beco'),
('Quadra'),
('Lote'),
('Travessa'),
('BR'),
('Rodovia'),
('Estrada'),
('Contunto'),
('Alameda'),
('Praça'),
('Vila');

select * from tipo_logradouro;

select * from logradouro;


select ds_logradouro_nome from logradouro 
where ds_logradouro_nome like'Rua%';

select cd_tipo_logradouro from tipo_logradouro
where desc_tip_log = 'Rua';

update logradouro
set log_cd_tip_log = (select cd_tipo_logradouro from tipo_logradouro
where desc_tip_log = 'beco')
where ds_logradouro_nome like 'beco%';



set sql_safe_updates = 0;


