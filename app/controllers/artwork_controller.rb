class ArtworkController < ApplicationController
    load_and_authorize_resource

    def destroy
        @movie.artwork.purge
        redirect_back(fallback_location: movies_path)
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

end
