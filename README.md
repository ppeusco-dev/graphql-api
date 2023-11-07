# GraphQL API con Ruby on Rails

Este es un ejemplo de una aplicación Ruby on Rails con GraphQL. En esta aplicación, se utilizó GraphQL para crear consultas y mutaciones para interactuar con una base de datos de usuarios.

## Instalación

1. Clona este repositorio en tu máquina local.
2. Ejecuta `bundle install` para instalar las gemas necesarias.
3. Ejecuta `rails db:migrate` para crear las tablas de la base de datos.
4. Ejecuta `rails server` para iniciar el servidor.

## Uso

Para utilizar esta aplicación, puedes utilizar una herramienta como Postman para enviar consultas y mutaciones GraphQL al servidor. Aquí te proporciono algunos ejemplos de consultas y mutaciones que puedes utilizar:

### Consultas

Para obtener una lista de todos los usuarios en la base de datos, utiliza la siguiente consulta:

### Consultas

Para obtener una lista de todos los usuarios en la base de datos, utiliza la siguiente consulta:

graphql
query {
  users {
    id
    name
    email
  }
}

### Mutaciones

Para crear un nuevo usuario en la base de datos, utiliza la siguiente mutación:

graphql
mutation {
  createUser(input: { name: "John Doe", email: "john.doe@example.com" }) {
    id
    name
    email
  }
}



