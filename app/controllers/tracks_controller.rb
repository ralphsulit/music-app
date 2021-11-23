class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def show
  end

  def new 
    @track = Track.new
  end

  def create
    @track = Track.new(track_params)

    if @track.save
      redirect_to tracks_path
    else
      render :new
    end
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update 
    @track = Track.find(params[:id])

    if @track.update(track_params)
      redirect_to tracks_path
    else 
      render :edit
    end
  end

  def destroy
    @track = Track.find(params[:id])

    @track.destroy
    
    redirect_to tracks_path
  end

  private

  def track_params
    params.require(:track).permit(:name, :url, :available)
  end
end

