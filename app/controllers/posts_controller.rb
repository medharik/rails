class PostsController < ApplicationController
  def index
    @posts=Post.all
  end

  def new
    @post=Post.new
  end

  def create
   #if  Post.create({titre: params[:post][:titre], commentaire: params[:post][:commentaire]})
   # redirect_to posts_path
  #end 
  @post=Post.new(param)
if @post.save
  redirect_to posts_path
else 
  render :new 
end
  end

  def edit
    @post=Post.find(params[:id])

  end

  def update
  Post.find(params[:id]).update(param)
  redirect_to posts_path
  end

  def destroy
 Post.find(params[:id]).destroy
 redirect_to posts_path
  end


  def show
    @post=Post.find(params[:id]) #@ obligatoire
  end
  def param
    params.require(:post).permit(:titre,:commentaire)
  end
end
