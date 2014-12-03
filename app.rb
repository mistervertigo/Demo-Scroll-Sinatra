require 'sinatra'
require 'nokogiri'
require 'open-uri'
get '/' do
  url = "http://www.elmundo.es/deportes/futbol.html"
  data = Nokogiri::HTML(open(url))
  @articles = data.css('.col-6 article.noticia')
  @parentContent = data.css('.cabecera-seccion')
  erb :article
end

get '/post/*' do
  
  fichero = params[:splat][0]
  
  articleURL = "http://www.elmundo.es/#{fichero}"
  dataPost = Nokogiri::HTML(open(articleURL))
  @posts = dataPost.css('#contenido article')
  @related = dataPost.css('#relatedNews > ul')
  erb :post, :locals => {:id => params[:splat]}
end
