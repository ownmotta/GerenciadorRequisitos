create database if not exists dbprojeto;
use dbprojeto;

create table tbusuarios (
idusuario int primary key auto_increment,
nomeCompleto varchar(45) not null,
emailUsuario varchar(45) not null,
nomeDeUsuario varchar(45) not null unique,
senhaUsuario varchar(45) not null,
telefoneUsuario varchar(45) not null,
idprojeto int not null,
foreign key (idprojeto) references tbprojetos(idprojeto)
);

insert into tbusuarios(nomeCompleto, emailUsuario, nomeDeUsuario,
senhaUsuario, telefoneUsuario, idprojeto)
values ('Gabriel Mota Silva', 'gabriel.mota09@hotmail.com', 'gmotas', '123456', '7080-9000', 1);

create table tbprojetos (
idprojeto int primary key auto_increment,
nomeProjeto varchar (45) not null,
descricaoProjeto varchar (45) not null,
usuarioProjeto varchar (45) not null,
requisitoProjeto varchar (45) not null
);

create table UsuarioxProjeto (
idprojeto int not null,
idusuario int not null,
constraint PK_UsuarioxProjeto primary key (idprojeto, idusuario),
constraint FK_UsuarioxProjeto foreign key (idusuario)
                        references tbusuario (idusuario),
constraint FK_UsuarioxProjeto foreign key (idprojeto)
                        references tbprojeto (idprojeto)									
);

insert into tbprojetos(nomeProjeto, descricaoProjeto, usuarioProjeto, requisitoprojeto) 
values ('Projeto Teste', 'Projeto para fins de teste', 'Gabriel Silva', 'Requisito Teste');

create table tbrequisitos (
idRequisito int primary key auto_increment,
nomeRequisito varchar (45) not null,
moduloRequisito varchar (45) not null,
funcionalidadeRequisito varchar (45) not null,
dataCriacao datetime default current_timestamp,
autorRequisito  varchar (45) not null,
dataAlteracao datetime on update current_timestamp,
autorAlteracao varchar (45),
versaoRequisito varchar (45) not null,
prioridadeRequisito varchar (45) not null,
complexidadeRequisito varchar (45) not null,
esforcoHoras varchar (45) not null,
statusRequisito varchar(45) not null,
faseRequisito varchar (45) not null,
descricaoRequisito varchar (45),
idprojeto int not null,
foreign key (idprojeto) references tbprojetos (idprojeto)
);

insert into tbrequisitos(autorRequisito) values ();
select * from tbrequisitos;
update tbrequisitos set autorRequisito='BIEL' where idrequisito=1;

drop table tbrequisitos;





