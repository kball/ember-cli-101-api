class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all
    render :json => @blog_posts
  end

  def show
    @blog_post = BlogPost.find(params[:id])
    render :json => @blog_post
  end

  def create
    @blog_post = BlogPost.create(post_params)
    render :json => @blog_post
  end

  private
    def post_params
      params.require(:blog_post).permit(:title,:body,:published_date)
    end
end
