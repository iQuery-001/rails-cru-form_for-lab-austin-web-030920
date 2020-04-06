class ArtistsController < ApplicationController
    before_action: :find_artist
    def new
        @artist = Artist.new
    end

    def show
    end

private

    def find_artist
        @artist = Artist.find(params[:id])
    end
end
