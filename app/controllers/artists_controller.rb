class ArtistsController < ApplicationController
  before_action :set_artist, only: [:edit, :update, :destroy, :show]

  def index
    @artists = Artist.all
  end

  def show
    @albums = Album.all
    @album = Album.new
  end

  def new 
    @artist = Artist.new
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def create 
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to artists_path
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
      redirect_to artists_path
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:id])

    @artist.destroy

    redirect_to artists_path
  end

  private 
  
  def artist_params 
    params.require(:artist).permit(:name, :bio, :verified, :avatar, :cover_photo_url)
  end

end