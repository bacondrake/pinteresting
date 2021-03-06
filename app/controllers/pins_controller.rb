class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]
  #before_action and before_filter are the same thing

  def index
    @pins = Pin.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 8)
  end

  def show
  end

  def new
    @pin = current_user.pins.build
    #Allows pin id to be saved on new pin
  end

  def edit
  end

  def create
    @pin = current_user.pins.build(pin_params)
    if @pin.save
      redirect_to @pin, notice: 'Image was successfully created.'
    else
      render :new    
    end
  end

  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: 'Image was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @pin.destroy
    redirect_to pins_url, notice: 'Image was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pin
      @pin = Pin.find(params[:id])
    end

    def correct_user
      @pin = current_user.pins.find_by(id: params[:id])
      redirect_to pins_path, notice: "Not authorized to edit this image" if @pin.nil?
      # Look up pin for user, redirect to pins_path if nil
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pin_params
      params.require(:pin).permit(:description, :image)
    end
end