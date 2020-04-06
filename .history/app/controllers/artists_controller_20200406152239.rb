class ArtistsController < ApplicationController
    before_action: :find_artist, only: [:show, :edit, :update]
    def new
        @artist = Artist.new
    end

    def show
    end

    def create
        @artist = Artist.new
        @artist.name = params(post_params)
    end

    def edit

    end

    def update

    end

private

    def post_params
        params.require(:artist).permit(:name, :bio)
    end

    def find_artist
        @artist = Artist.find(params[:id])
    end
end
