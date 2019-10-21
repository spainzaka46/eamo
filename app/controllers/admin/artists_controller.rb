class Admin::ArtistsController < ApplicationController
  def index
    @artists = Artist.page(params[:page]).reverse_order
  end

  def new
  	@artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      flash[:notice] = "アーティストを追加しました"
      redirect_to admin_artists_path
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      flash[:notice] = "アーティスト名を更新しました"
      redirect_to admin_artists_path
    else
      render :edit
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:artist_name)
  end

end
