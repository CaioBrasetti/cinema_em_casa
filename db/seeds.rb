# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cadastrando os testes......"

Ator.create!(
  nome: "teste",
  data_de_nascimento: "15/06/1995"
)

Filme.create!(
  titulo: "teste22",
  data_de_lancamento: "01/01/1995"
)

puts "Cadastro OK"