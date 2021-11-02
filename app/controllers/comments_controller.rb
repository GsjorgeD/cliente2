class CommentsController < ApplicationController
  before_action :find_comment, only:[:show,:edit,:update,:destroy]
  before_action :authenticate_admin!, only: [:edit,:update]

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new

  end

  def create
  #  @comment = Comment.create(subject: params[:comment][:subject], detalles: params[:comment][:detalles])
    if user_signed_in?
      @comment = current_user.comments.create(comment_params)
      redirect_to @comment
      #render json: @comment
    else
      respond_to do |format|
      format.html { redirect_to comments_path, notice: "Necesitas iniciar sesión o crear una cuenta de usuario" }
      end
    end
  end

  def show

  end

  def edit

  end

  def update
  #  @comment.update(subject: params[:comment][:subject], detalles: params[:comment][:detalles])
    @comment.update(comment_params)
    redirect_to @comment
  end

  def destroy
    @comment.destroy
    redirect_to comments_path

  end

  def find_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:subject,:detalles)
  end


end
