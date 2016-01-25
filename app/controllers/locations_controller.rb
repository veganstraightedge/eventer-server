class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  before_action :authorize

  def index
    return redirect_to(dashboard_path)
  end

  def show
  end

  def new
    @location = Location.new
  end

  def edit
  end

  def create
    @location = current_user.locations.build(location_params)

    if @location.save
      redirect_to @location, notice: "Location was successfully created."
    else
      render :new
    end
  end

  def update
    if @location.update(location_params)
      redirect_to @location, notice: "Location was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @location.destroy
    redirect_to locations_path, notice: "Location was successfully destroyed."
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(
      :name,
      :venue_id,
      :user_id)
  end
end