class SongLabelsController < InheritedResources::Base

  private

    def song_label_params
      params.require(:song_label).permit(:title, :artist, :audio)
    end
end

