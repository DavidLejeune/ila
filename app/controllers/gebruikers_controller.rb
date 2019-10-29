class GebruikersController < ApplicationController
  before_action :set_gebruiker, only: [:show, :edit, :update, :destroy]

  # GET /gebruikers
  # GET /gebruikers.json
  def index
    @gebruikers = Gebruiker.all
  end

  # GET /gebruikers/1
  # GET /gebruikers/1.json
  def show
  end

  # GET /gebruikers/new
  def new
    @gebruiker = Gebruiker.new
  end

  # GET /gebruikers/1/edit
  def edit
  end

  # POST /gebruikers
  # POST /gebruikers.json
  def create
    @gebruiker = Gebruiker.new(gebruiker_params)

    respond_to do |format|
      if @gebruiker.save
        format.html { redirect_to @gebruiker, notice: 'Gebruiker was successfully created.' }
        format.json { render :show, status: :created, location: @gebruiker }
      else
        format.html { render :new }
        format.json { render json: @gebruiker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gebruikers/1
  # PATCH/PUT /gebruikers/1.json
  def update
    respond_to do |format|
      if @gebruiker.update(gebruiker_params)
        format.html { redirect_to @gebruiker, notice: 'Gebruiker was successfully updated.' }
        format.json { render :show, status: :ok, location: @gebruiker }
      else
        format.html { render :edit }
        format.json { render json: @gebruiker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gebruikers/1
  # DELETE /gebruikers/1.json
  def destroy
    @gebruiker.destroy
    respond_to do |format|
      format.html { redirect_to gebruikers_url, notice: 'Gebruiker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gebruiker
      @gebruiker = Gebruiker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gebruiker_params
      params.require(:gebruiker).permit(:name, :slug)
    end
end
