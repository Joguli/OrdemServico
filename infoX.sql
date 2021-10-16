create database infox;

use infox;
create table infousuario(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null 
);
describe infousuario;

insert into infousuario(iduser, usuario, fone, login, senha)
values
(default, 'Fulano', '5555-6666', 'fulano@', '123456'),
(default, 'Bertano', '4444-7777', 'bertano@', 'abcdef'),
(default, 'Cicrano', '3333-8888', 'cicrano@', 'asdfgh');
select * from infousuario;
update infousuario set fone = '98758-2222' where iduser = 3;
-- delete from infousuario where id = 2;

create table infocliente(
idcli int primary key auto_increment,
nomecli varchar (50) not null,
endecli varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50),
profcli varchar(20)
);
describe infocliente;
insert into infocliente(nomecli, endecli, fonecli, emailcli, profcli)
values('Getúlio', 'Av. Amoreiras 115', '99111-1111', 'getulio@gamil.com', 'Programador');

select * from infocliente;
use infox;
create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
serviço varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references infocliente(idcli)
);
describe tbos;
insert into tbos(equipamento, defeito, serviço, tecnico, valor, idcli)
values('Notbook', 'Não liga', 'Trcar a fonte.', 'Zé', 80.50, 1);
update tbos set defeito = 'Trocar a fonte.' where os = 2;
select * from tbos;
select 
O.os, equipamento, defeito, serviço, valor,
C.nomecli, fonecli
from tbos as O
inner join infocliente as C
on(O.idcli = C.idcli);


