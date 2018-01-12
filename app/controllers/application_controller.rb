require_relative '../../config/environment'
require 'pry'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

  end

  get '/posts/new' do
    erb :new
  end

  get '/posts/:id' do

    erb :show
  end

  post '/posts' do
    @post = Post.new(params)
    binding.pry
  end

  get '/posts' do
    erb :index
  end

  get '/posts/:id/edit' do

    erb :edit
  end

end
