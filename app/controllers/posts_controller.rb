class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @kanji = Kanji.find(params[:kanji_id])
    @post = Post.new
  end

  def create
    @kanji = Kanji.find(params[:kanji_id])
    @post = current_user.posts.build(post_params.merge(kanji: @kanji))

    if @post.save
      redirect_to kanji_path(@kanji), notice: "post shared!"
    else
      render :new, status: :unprocessable_entity
    end
  end

private

  def post_params
    params.require(:post).permit(:caption, :image)
  end
end 