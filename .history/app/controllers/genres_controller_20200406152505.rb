class GenresController < ApplicationController
    before_action: :find_artist, only: [:show, :edit, :update]
    def new
        @genre = Genre.new
    end

    def show
    end

    def create
        @artist = Genre.new(post_params)
        @artist.save
        redirect_to artist_path(@artist)
    end

    def edit

    end

    def update
        @artist = Genre.update(post_params)
        redirect_to artist_path(@artist)
    end

private

    def post_params
        params.require(:artist).permit(:name, :bio)
    end

    def find_artist
        @artist = Artist.find(params[:id])
    end
end
