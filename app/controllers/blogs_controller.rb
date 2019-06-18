class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    @lorem = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus at consequuntur debitis, rem et totam. Voluptatum ratione labore cumque ullam quos eius harum eum deserunt, voluptatibus. Nisi totam adipisci porro."
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new
    @blog.save(blog_params)
    redirect_to blog_path(@blog)
  end

  def update
  end

  def edit
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
