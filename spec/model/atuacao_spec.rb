require 'rails_helper'

RSpec.describe Atuacao do
  ator = Ator.new(nome: 'Nome do Ator', data_de_nascimento: Date.today)
  filme = Filme.new(titulo: 'Nome do Filme', data_de_lancamento: Date.today)
  
  context "Sucesso" do
    it "quando todos os parametros forem passados" do
      atuacao = Atuacao.new(ator: ator, filme: filme, nome_do_personagem: 'Nome personagem')
      expect(atuacao).to be_valid  
    end
  end
  
  context "Falha" do
    it "quando o ator nao for informado" do
      atuacao = Atuacao.new(filme: filme, nome_do_personagem: 'Nome personagem')
      expect(atuacao).to_not be_valid  
    end

    it "quando o filme nao for informado" do
      atuacao = Atuacao.new(ator: ator, nome_do_personagem: 'Nome personagem')
      expect(atuacao).to_not be_valid  
    end 

    it "quando o nome do personagem nao for informado" do
      atuacao = Atuacao.new(ator: ator, filme: filme)
      expect(atuacao).to_not be_valid  
    end       
  end
end
