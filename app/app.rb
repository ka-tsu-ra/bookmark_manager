require 'sinatra/base'

class BManager < Sinatra::Base

  set :views, proc { File.join(root, '..', 'view') }

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  run! if app_file == $0
end
