class SearchController < ApplicationController
  def index
    @posts = Post.includes(:posts, :user).search(search_param)

    respond_to do |format|
      format.html
      format.json { render json: @posts }
    end
  end

  private

  def search_param
    params.require(:query)
  end
end
