class CurrentsongsController < ApplicationController
  before_action :set_currentsong, only: [:show, :edit, :update, :destroy]

  # GET /currentsongs
  # GET /currentsongs.json
  def index
    @currentsongs = Currentsong.all
  end

  # GET /currentsongs/1
  # GET /currentsongs/1.json
  def show
  end

  # GET /currentsongs/new
  def new
    @currentsong = Currentsong.new
  end

  # GET /currentsongs/1/edit
  def edit
  end

  # POST /currentsongs
  # POST /currentsongs.json
  def create
    @currentsong = Currentsong.new(currentsong_params)

    respond_to do |format|
      if @currentsong.save
        format.html { redirect_to @currentsong, notice: 'Currentsong was successfully created.' }
        format.json { render :show, status: :created, location: @currentsong }
      else
        format.html { render :new }
        format.json { render json: @currentsong.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /currentsongs/1
  # PATCH/PUT /currentsongs/1.json
  def update
    respond_to do |format|
      if @currentsong.update(currentsong_params)
        format.html { redirect_to @currentsong, notice: 'Currentsong was successfully updated.' }
        format.json { render :show, status: :ok, location: @currentsong }
      else
        format.html { render :edit }
        format.json { render json: @currentsong.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /currentsongs/1
  # DELETE /currentsongs/1.json
  def destroy
    @currentsong.destroy
    respond_to do |format|
      format.html { redirect_to currentsongs_url, notice: 'Currentsong was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_currentsong
      @currentsong = Currentsong.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def currentsong_params
      params.require(:currentsong).permit(:title, :albumcover, :string, :songlength, :float, :shuffleplay, :string, :previousong, :string, :forwardsong, :repeat)
    end
end
