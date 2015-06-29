class BusinessesController < ApplicationController
  def new
    @type = Type.find(params[:type_id])
    @business = @type.businesses.new
  end

  def create
    @type = Type.find(params[:type_id])
    @business = @type.businesses.new(business_params)
    if @business.save
      redirect_to type_path(@business.type)
    else
      render :new
    end
  end

  def show
    @type = Type.find(params[:type_id])
    @business = Business.find(params[:id])
  end

  private

  def business_params
    params.require(:business).permit(:name, :address, :phone, :url, :hours)
  end

end
