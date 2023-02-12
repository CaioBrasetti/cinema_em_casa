require 'rails_helper'

RSpec.describe Ator do
  context "Sucesso" do
    it "quando todos os parametros forem passados" do
      ator = Ator.new(nome: 'Nome do Ator', data_de_nascimento: Date.today)
      expect(ator).to be_valid  
    end
  end
  
  context "Falha" do
    it "quando o nome nao for informado" do
      ator = Ator.new(data_de_nascimento: Date.today)
      expect(ator).to_not be_valid  
    end

    it "quando a data nao for informada" do
      ator = Ator.new(nome: 'Nome do Ator')
      expect(ator).to_not be_valid  
    end

    it "quando a data nao for uma data" do
      ator = Ator.new(nome: 'Nome do Ator', data_de_nascimento: 'Date')
      expect(ator).to_not be_valid  
    end    
  end
end
