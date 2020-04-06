class ArtistsController < ApplicationController
    before_action: :find_artist
    def new
        @artist = Artist.new
    end

    def show
        @artist = Artist.find(params[:id])
    end
end
