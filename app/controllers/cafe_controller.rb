class CafesController < ApplicationController

    get '/cafes' do 
        @cafes = Cafe.all
        erb :'cafes/index'
    end 

    get '/cafes/new' do
        erb :'cafes/new'
    end
    


end 