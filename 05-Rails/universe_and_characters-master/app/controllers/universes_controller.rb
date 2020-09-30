class UniversesController < ApplicationController
  before_action :set_universe, only: [:show, :edit, :update, :destroy]

  # GET /universes
  def index
    @universes = Universe.all
  end

  # GET /universes/1
  def show
    @character = Character.new
  end

  # GET /universes/new
  def new
    @universe = Universe.new
  end

  # GET /universes/1/edit
  def edit
  end

  # POST /universes
  def create
    @universe = Universe.new(universe_params)

    if @universe.save
      redirect_to @universe, notice: 'Universe was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /universes/1
  def update
    if @universe.update(universe_params)
      redirect_to @universe, notice: 'Universe was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /universes/1
  def destroy
    @universe.destroy
    redirect_to universes_url, notice: 'Universe was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_universe
      @universe = Universe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def universe_params
      params.require(:universe).permit(:name, :banner_url)
    end
end
