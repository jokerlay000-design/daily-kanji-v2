class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @kanji = Kanji.find(params[:kanji_id])
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.build(comment_params)
    @comment.post = @post

    if @comment.save
      redirect_to kanji_path(@kanji), notice: "Comment added!"
    else
      redirect_to kanji_path(@kanji), alert: "Comment failed!"
    end
  end

  def destroy
    @kanji = Kanji.find(params[:kanji_id])
    @comment = current_user.comments.find(params[:id])
    @comment.destroy
    redirect_to kanji_path(@kanji), notice: "Comment deleted!"
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end