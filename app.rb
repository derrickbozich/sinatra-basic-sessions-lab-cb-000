require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :'./views/index'
  end

  post '/checkout' do
    binding.pry
    @session = session
    @session[:item] = params[:item]

    erb :'./views/checkout'
  end
end
