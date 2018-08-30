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

  get '/' do
    p 'hello!'
  end

  post '/create_account' do
    # 複数の投稿サイトにアカウントを作成する
    AutoPostSystem::Account.create
  end

  post '/create_news' do
    # 複数の投稿サイトに記事を作成する
    AutoPostSystem::News.create
  end
end
