class GenreController < InheritedResources::Base

  private

    def genrgenre_params
      params.require(:genrgenre).permit(:title)
    end
end

