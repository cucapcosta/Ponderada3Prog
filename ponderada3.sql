create table Customizacoes (
    id serial primary key,
    Item1 text,
    Item2 text,
    Item3 text,
    pontuacao int
);
create table User(
    id serial primary key,
    nome varchar(255),
    cidade varchar(255),
    email varchar(255),
    senha varchar(255),
    IdOppo int references Customizacoes(id),
    numAcoes int,
    Idade int,
    Genero varchar(20)
);
create table Publicacoes(
    id serial primary key,
    conteudo text,
    anexos text,
    titulo varchar(255),
    idUsuario int references User(id),
);
create table Organizacoes(
    id serial primary key,
    nome varchar(255),
    idUsuario int references User(id),
    descricao text,
    logo text
);
create table Oportunidades(
    id serial primary key,
    idOrganizacao int references Organizacoes(id),
    titulo varchar(255),
    area varchar(255),
    descricao text,
    anexos text,
    cidade varchar(255),
)
