class ArtistsController < ApplicationController
    before_action: :find_artist, only: [:show, :edit, :update]
    def new
        @artist = Artist.new
    end

    def show
    end

    def create

    end

    def edit

    end

    def update

    end

private

    def find_artist
        @artist = Artist.find(params[:id])
    end
end
