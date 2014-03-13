require 'sinatra'
require 'csv'
require_relative 'lib/Article_helper'



get '/' do
  erb :index
end

post '/article_create' do
  @post = WizardArticle.new(params['title'],params['url'],params['article'])
  @post.write_to_csv('wizPosts.csv')

  erb :index
end

get '/show_all' do
  @posts = ArticleLoader.new.build

  erb :show_all
end

get '/:article' do
  wizposts = ArticleLoader.new.build
  @posts= [ArticleSelector.new(wizposts).get_post_by_url(params[:article])]

  erb :article
end
