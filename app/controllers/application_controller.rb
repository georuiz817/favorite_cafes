class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views' 
  end

  get "/" do
    erb :home
  end
  
  #able to sign up requirement start 
    get '/signup' do
        erb :'/users/signup'
    end

    post '/signup' do
        user = User.create(params)
        if user.save
            session[:user_id] = user.id
            redirect '/' 
        else
           erb :'users/signup'
      end
    end
  #able to sign up requirement end 
  
  #able to login requirement start 
  
    get '/login' do
        erb :'/users/login'
    end

   post '/login' do
        user = User.find_by(email: params[:email])
        
        if user.authenticate(params[:password])
            session[:user_id] = user.id 
            redirect '/' 
        else
           erb :'users/signup'
        end
    end
    #able to login requirement end 
  
  
  
  end
