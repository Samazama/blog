class MangaCommentsController < ApplicationController
  def create
    @manga = Manga.find(params[:manga_id])
    @comment = @manga.manga_comments.build(params[:manga_comment])
    @comment.save

    redirect_to @manga
  end

  def destroy
    @comment = MangaComment.find(params[:id])
    @comment.destroy

    redirect_to @comment.post
  end
end
