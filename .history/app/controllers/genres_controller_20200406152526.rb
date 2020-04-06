class GenresController < ApplicationController
    before_action: :find_genre, only: [:show, :edit, :update]
    def new
        @genre = Genre.new
    end

    def show
    end

    def create
        @genre = Genre.new(post_params)
        @genre.save
        redirect_to genre_path(@genre)
    end

    def edit

    end

    def update
        @genre = Genre.update(post_params)
        redirect_to genre_path(@genre)
    end

private

    def post_params
        params.require(:genre).permit(:name, :bio)
    end

    def find_genre
        @genre = Genre.find(params[:id])
    end
end
