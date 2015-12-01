require 'bundler'
require './models/model.rb'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    link = Link.new("Test Link 1")
    link.url = "Sample link"
    link.desc = "Sample Desc"

    link2 = Link.new("Test Link 2")
    link2.url = link.url
    link2.desc = link.desc

    link3 = Link.new("MEMES")
    link3.url = link.url
    link3.desc= "DANK"

    @links = [link,link2,link3]
    erb :index
  end

end