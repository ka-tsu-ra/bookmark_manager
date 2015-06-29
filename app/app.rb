require 'sinatra/base'

class BManager < Sinatra::Base

  set :views, proc { File.join(root, '..', 'view') }

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new_links'
  end

  post '/links' do
    Link.create(url: params[:url], title: params[:title])
    @links = Link.all
    erb :'links/index'
  end





  run! if app_file == $0
end
