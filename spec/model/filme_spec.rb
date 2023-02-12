require 'rails_helper'

RSpec.describe Filme do
  context "Sucesso" do
    it "quando todos os parametros forem passados" do
      filme = Filme.new(titulo: 'Titulo do filme', data_de_lancamento: Date.today)
      expect(filme).to be_valid  
    end
  end
  
  context "Falha" do
    it "quando o titulo nao for informado" do
      filme = Filme.new(data_de_lancamento: Date.today)
      expect(filme).to_not be_valid  
    end

    it "quando a data nao for informada" do
      filme = Filme.new(titulo: 'Titulo do filme')
      expect(filme).to_not be_valid  
    end

    it "quando a data nao for uma data" do
      filme = Filme.new(titulo: 'Titulo do filme', data_de_lancamento: 'Date')
      expect(filme).to_not be_valid  
    end    
  end
end
