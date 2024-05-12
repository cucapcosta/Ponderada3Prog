# Ponderada 3 Prog - Análise das tabelas

## User
A tabela user guarda as principais informações do usuário, como nome, cidade, email, senha, etc. Ela contém uma chave estrangeira, que referencia o ID de Customizações em uma relação 1:1 (Cada User só pode ligar com uma customização e vice-versa)

## Customizacoes
A tabela Customizacoes guarda informações relacionadas com as personalizações do mascote Oppo, ligadas ao usuário

## Publicacoes
A tabela armazena informações de diversas publicações que o usuário pode fazer. Contém uma chave estrangeira, idUsuario, que referencia o id da tabela User em relação 1:N (Cada usuário pode ter várias publicações, mas cada publicação só pode ter um usuário)

## Organizacoes
A tabela Organizacoes guarda informações relacionadas com a criação de organizações na plataforma. Possui uma chave estrangeira, idUsuario, que age de forma 1:N (Um usuário pode administrar mais de uma organização). Não dá pra ter certeza se irá manter-se assim ou alterar para 1:1 (um usuário só pode ter uma organização e uma organização só pode ter um administrador), mas será deixado assim por enquanto

## Oportunidades
Essa tabela guarda informações relacionadas à publicações de oportunidades. Contém uma chave estrangeira, idOrganizacao, que liga-a a uma organização com 1:N (uma organização pode ter várias oportunidades, mas uma oportunidade só pode ter uma organização)