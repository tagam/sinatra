require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require 'logger'
require 'mechanize'
require 'open-uri'
require 'nokogiri'
require 'pp'
require 'resolv-replace' # タイムアウト用
require 'parallel'
require 'selenium-webdriver'

class MainApp < Sinatra::Base
  register Sinatra::Reloader

  get '/hello' do
    p 'hello!'
  end

end
