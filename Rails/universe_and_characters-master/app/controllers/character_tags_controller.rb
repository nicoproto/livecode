class CharacterTagsController < ApplicationController
  def new
    @character = Character.find(params[:character_id])
    @character_tag = CharacterTag.new
  end

  def create
    @character = Character.find(params[:character_id])
    # Note that .where() can work with and Array!
    @tags = Tag.where(id: params[:character_tag][:tag_id])
    # We are iterating in case to create all the tags the user selected
    @tags.each do |tag|
      @character_tag = CharacterTag.new(character: @character, tag: tag)
      @character_tag.save
    end
    redirect_to universe_path(@character.universe)
  end
end
