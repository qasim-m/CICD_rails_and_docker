class HomeController < ApplicationController
  def index
    @message = "Dynamic"

    @posts = Post.all
  end

  def increment_async
    ::IncrementCountJob.perform_async(params[:post_id])
    redirect_to root_path
  end
end