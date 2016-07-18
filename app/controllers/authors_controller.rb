class AuthorsController < ApplicationController
  def index
    @authors = Author.all
    render json: @authors
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      render json: @author, status: :ok
    end
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name, :genre, :birth_year, :death_year)
  end
end
