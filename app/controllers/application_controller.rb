class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views' 
  end

  get "/" do
    erb :home
  end
  
  #Must have user account requirement start
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
    #
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
    #
    get '/logout' do
        session.clear
        redirect '/'
    end
end
#must have user account requirement end
  
  
  end
