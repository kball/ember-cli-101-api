class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all
    render :json => @blog_posts
  end

  def show
    @blog_post = BlogPost.find(params[:id])
    render :json => @blog_post
  end
end
