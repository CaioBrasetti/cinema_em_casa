class ApplicationController < ActionController::Base
  require 'rest-client'
  require 'json'

  def search_movie(name)
   search = "movie"

   call(search, name)
  end

  def search_person(name)
    search = "person"
 
    call(search, name)
   end

  private
  
  def call(search, name)
    principal_url = "https://api.themoviedb.org/3/"
    key = "a0802e489b79ee1c5699186cff589f8f"
    url = "#{principal_url}search/#{search}?api_key=#{key}&language=pt-BR&query=#{name}"
    chamada = RestClient.get(url) #puxa as informações do site pelo .get   

    JSON.parse(chamada.body) #nao vem o codigo da requisição
  end
end
