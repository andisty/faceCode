class SearchController < ApplicationController
  def index
    @posts = Post.search(params[:query])
    respond_to do |format|
      format.html
      format.json { render json: @posts }
    end
  end
end
