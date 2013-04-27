class MangasController < ApplicationController
  def index
    redirect_to root_path
  end

  def show
    @manga = Manga.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @manga }
    end
  end

  def new
    redirect_to root_url and return unless logged_in? && current_user.admin?
    @manga = Manga.new
    @manga.volumes.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @manga }
    end
  end

  def edit
    redirect_to root_url and return unless logged_in? && current_user.admin?

    @manga = Manga.find(params[:id])
  end

  def create
    @manga = Manga.new(params[:manga])

    respond_to do |format|
      if @manga.save
        format.html { redirect_to @manga }
        format.json { render json: @manga, status: :created, location: @manga }
      else
        format.html { render action: "new" }
        format.json { render json: @manga.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @manga = Manga.find(params[:id])

    respond_to do |format|
      if @manga.update_attributes(params[:manga])
        format.html { redirect_to @manga, notice: "Article has been updated." }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @manga.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @manga = Manga.find(params[:id])
    @manga.destroy

    respond_to do |format|
      format.html { redirect_to mangas_url }
      format.json { head :no_content }
    end
  end
end
