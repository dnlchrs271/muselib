class BrowsegenresController < ApplicationController
  before_action :set_browsegenre, only: [:show, :edit, :update, :destroy]

  # GET /browsegenres
  # GET /browsegenres.json
  def index
    @browsegenres = Browsegenre.all
  end

  # GET /browsegenres/1
  # GET /browsegenres/1.json
  def show
  end

  # GET /browsegenres/new
  def new
    @browsegenre = Browsegenre.new
  end

  # GET /browsegenres/1/edit
  def edit
  end

  # POST /browsegenres
  # POST /browsegenres.json
  def create
    @browsegenre = Browsegenre.new(browsegenre_params)

    respond_to do |format|
      if @browsegenre.save
        format.html { redirect_to @browsegenre, notice: 'Browsegenre was successfully created.' }
        format.json { render :show, status: :created, location: @browsegenre }
      else
        format.html { render :new }
        format.json { render json: @browsegenre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /browsegenres/1
  # PATCH/PUT /browsegenres/1.json
  def update
    respond_to do |format|
      if @browsegenre.update(browsegenre_params)
        format.html { redirect_to @browsegenre, notice: 'Browsegenre was successfully updated.' }
        format.json { render :show, status: :ok, location: @browsegenre }
      else
        format.html { render :edit }
        format.json { render json: @browsegenre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /browsegenres/1
  # DELETE /browsegenres/1.json
  def destroy
    @browsegenre.destroy
    respond_to do |format|
      format.html { redirect_to browsegenres_url, notice: 'Browsegenre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_browsegenre
      @browsegenre = Browsegenre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def browsegenre_params
      params.require(:browsegenre).permit(:newreleases, :string, :category, :string, :search, :string)
    end
end
