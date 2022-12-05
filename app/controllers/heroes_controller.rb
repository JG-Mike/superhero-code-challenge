class HeroesController < ApplicationController
    def index
        heroes = Hero.all
        render json: heroes
        
    end

    def show
        hero = Hero.find_by(id: params[:id] )
       
        if hero
             render json: hero, serializer: HeroandtheirpowersSerializer

        else
            render json: {error: "hero not found"}, status: :not_found
            
        end
    end
end
