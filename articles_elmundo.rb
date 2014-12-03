require 'nokogiri'
require 'open-uri'
url = "http://www.elmundo.es/deportes/futbol.html"
data = Nokogiri::HTML(open(url))
parentContent = data.css('.cabecera-seccion')
articles = data.css('.col-6 article.noticia')