class ArtistsController < ApplicationController
    before_action: :find_artist, only: [:show, :edit, :update]
    def new
        @artist = Artist.new
    end

    def show
    end

    def create
        @artist = Artist.new(post_params)
        @artist.save
        redirect_to artist_path(@artist)
    end

    def edit

    end

    def update
        @artist = Artist.update(post_params)
    end

private

    def post_params
        params.require(:artist).permit(:name, :bio)
    end

    def find_artist
        @artist = Artist.find(params[:id])
    end
end
