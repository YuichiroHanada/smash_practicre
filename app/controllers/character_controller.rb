class CharacterController < ApplicationController
    def index
        @characters = Character.all
    end 
    
    def show 
       @character = Character.find(params[:id])   #characterテーブルから該当する物を取得
    end 
    
end
