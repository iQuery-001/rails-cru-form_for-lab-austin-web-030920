class SongsController < ApplicationController
    before_action :find_song, only: [:show, :edit, :update]
    def new
        @song = Song.new
    end

    def show
        # binding.pry
        @genre = @song.genre
        @artist = @song.artist
    end

    def create
        @song = Song.new(post_params)
        @song.save
        redirect_to song_path(@song)
    end

    def edit

    end

    def update
        @song = Song.update(post_params)
        redirect_to song_path(@song)
    end

private

    def post_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

    def find_song
        @song = Song.find(params[:id])
    end
end
