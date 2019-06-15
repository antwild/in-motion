class BlogsController < ApplicationController
  def index
    @blogs = Blogs.all
  end

  def show
    @blog = Blogs.find(params[:id])
  end

  def new
    @blog = Blogs.new
  end

  def create
    @blog = Blogs.new
    @blog.save(blog_params)
    redirect_to blog_path(@blog)
  end

  def update
  end

  def edit
  end

  def destroy
    @blog = Blogs.find(params[:id])
    @blog.destroy
    redirect_to blogs_path
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
