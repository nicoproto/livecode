class CharactersController < ApplicationController

    def create
        @character = Character.new(character_params)
        # :universe_id is related to the route /universes/:universe_id
        @universe = Universe.find(params[:universe_id])
        # relate universe & character together
        # @character.universe is available because of belongs_to
        @character.universe = @universe

        if @character.save
            redirect_to universe_path(@universe)
        else
            render 'universes/show'
        end
    end

    def destroy
        @character = Character.find(params[:id])
        @character.destroy

        redirect_to universe_path(@character.universe)
    end

    private

    def character_params
        params.require(:character).permit(:name, :photo_url)
    end
end
