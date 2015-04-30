require 'rubygems'
require 'sinatra'
#require 'sinatra/reloader' if development?
require 'open-uri'
require 'nokogiri'

get '/' do
  doc = Nokogiri::HTML(open("http://pt.wikipedia.org/wiki/Wikip%C3%A9dia:P%C3%A1gina_principal"))
  links = doc.css('a')
  @message = "Hello, world! from Sinatra running JRuby on Tomcat"
  @message += "<hr/>"
  @message += "<ul>"
  links.each do |link|
    @message += "<li>"+link.to_s+"</li>"
  end
  @message += "</ul>"
  erb :index
end
