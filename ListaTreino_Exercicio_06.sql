use licencas;

show tables;

#a)
select * from lcliente;
select Nome_RazaoSocial, Cidade, UF
from lcliente;

#b)
select * from llicenca
where NumLicenca like '%A%';

#c)
select * from lcliente
where Nome_RazaoSocial like 'P%'
order by Nome_RazaoSocial;

#d)
select * from lcliente
where Nome_RazaoSocial like '%AR'
order by Nome_RazaoSocial desc;

#e)
select * from lcliente
where Nome_RazaoSocial like '%W%' or Nome_RazaoSocial like '%Y%'

#f)
select * from llicenca
where ValorAquisicao >= 1200
order by ValorAquisicao desc;

#g)
select * from lcliente
where idCLIENTE > 150 and idCLIENTE < 200;

#h)
select * from llicenca
where ValorAquisicao > 250 and ValorAquisicao < 500
order by ValorAquisicao;

#i)
select * from llicenca
where (DtAquisicao > 2008-01-01 and ValorAquisicao > 299 and ValorAquisicao < 451)
or (ValorAquisicao > 599 and ValorAquisicao < 801);

#j)
select * from lcliente
where UF in ('SP', 'RS', 'PR', 'MG');

#k)
select * from lcliente
where UF not in ('RJ', 'ES', 'SP', 'MG');

#l)
show tables;
select * from lsetor;
select * from ltipo_empresa;
insert into lsetor (NomeSetor) values
('Metalúrgica');
insert into ltipo_empresa (DescricaoTipo) values
('Pessoa Jurídica');
select * from lcliente
insert into lcliente (Nome_RazaoSocial, Endereco, Cidade, UF, CEP) values
('Minha_Empresa', 'Avenida 1', 'Campinas', 'SP', '13000000',);

#m)
show tables;
select * from lsoftware;
insert into lsoftware (NomeSoftware) values
('Excel');
















