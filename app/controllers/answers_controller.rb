class AnswersController < ApplicationController
  def create
    if user_signed_in?
    @comment = Comment.find(params[:comment_id])
    @answer = @comment.answers.create(comment_params)
    redirect_to comment_path(@comment)
    #render json: @answer
    else
      respond_to do |format|
      format.html { redirect_to comments_path, notice: "Necesitas iniciar sesión o crear una cuenta de usuario" }
      end
    end
  end

  def destroy
  @comment = Comment.find(params[:comment_id])
   @answer = @comment.answers.find(params[:id])
   @answer.destroy
   redirect_to comment_path(@comment)
  end

  private
    def comment_params
      params.require(:answer).permit(:respuesta)
    end
end
