class SongLabelsController < InheritedResources::Base
  before_action :set_song_label, only: [:show, :edit, :update, :destroy]
  before_action :set_playlist
  before_action :set_genre
  
  # GET /playlists
  # GET /playlists.json
  
  
   
 
  def index
    @song_labels = @playlist.song_labels
  end

  

  # GET /playlists/1
  # GET /playlists/1.json
  def show
  end

  # GET /playlists/new
  def new
    @song_label = @playlist.song_labels.new
  end

  # GET /playlists/1/edit
  def edit
  end

  # POST /playlists
  # POST /playlists.json
  def create
    @song_label = @playlist.song_labels.new(song_label_params)

    respond_to do |format|
      if @song_label.save
        format.html { redirect_to genre_playlist_song_label_path(genre_id: @genre.id, playlist_id: @playlist.id, id: @song_label.id), notice: 'Playlist was successfully created.' }
        format.json { render :show, status: :created, location: @song_label }
      else
        format.html { render :new }
        format.json { render json: @song_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playlists/1
  # PATCH/PUT /playlists/1.json
  def update
    respond_to do |format|
      if @song_label.update(song_label_params)
        format.html { redirect_to genre_playlist_song_label_path(genre_id: @genre.id, playlist_id: @playlist.id, id: @song_label.id), notice: 'Playlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @song_label }
      else
        format.html { render :edit }
        format.json { render json: @song_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playlists/1
  # DELETE /playlists/1.json
  def destroy
    @song_label.destroy
    respond_to do |format|
      format.html { redirect_to genre_playlist_song_label_path(genre_id: @genre.id, playlist_id: @playlist.id, id: @song_label.id), notice: 'Playlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist
      @playlist = Playlist.find(params[:playlist_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_genre
      @genre = Genre.find(params[:genre_id])
    end
     # Use callbacks to share common setup or constraints between actions.
    def set_song_label
      @song_label = SongLabel.find(params[:id])
    end
    

    # Never trust parameters from the scary internet, only allow the white list through.
    def playlist_params
      params.require(:playlist).permit(:title, :artistname)
    end

  
  private

    def song_label_params
      params.require(:song_label).permit(:title, :artist, :audio)
    end
end

