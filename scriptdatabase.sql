create database if not exists dbprojeto;
use dbprojeto;

create table tbusuarios (
idusuario int auto_increment,
nomeCompleto varchar(45) not null,
emailUsuario varchar(45) not null,
nomeDeUsuario varchar(45) not null unique,
senhaUsuario varchar(45) not null,
telefoneUsuario varchar(45) not null,
nivelpermissão int not null,
constraint FK_tbusuarios primary key (idusuario)
);

insert into tbusuarios(nomeCompleto, emailUsuario, nomeDeUsuario,
senhaUsuario, telefoneUsuario, idprojeto)
values ('Guilherme Souza', 'gabriel.mota09@hotmail.com', 'gsouza', '123456', '7080-9000', 1);

create table tbprojetos (
idprojeto int auto_increment,
nomeProjeto varchar (45) not null,
descricaoProjeto varchar (45) not null,
usuarioProjeto varchar (45) not null,
requisitoProjeto varchar (45) not null,
idusuario int not null,
constraint FK_tbprojetos foreign key (idusuario)
                        references tbusuarios (idusuario),
constraint FK_tbprojetos  primary key (idprojeto)                  
);
				

create table tbrequisitos (
idRequisito int auto_increment,
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
constraint FK_requisitos foreign key (idprojeto) 
					references tbprojetos (idprojeto),
constraint FK_autor foreign key (autorRequisito)
					references tbusuarios (idusuario),
constraint PK_tbrequisitos primary key (idRequisito)
);

insert into tbrequisitos(autorRequisito) values ();
select * from tbrequisitos;
update tbrequisitos set autorRequisito='BIEL' where idrequisito=1;







