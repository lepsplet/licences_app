class LicencesController < ApplicationController
  def index
  end

  def show
  end

  def new
    
  end
  
  def create
    @licence = Licence.new(licence_params)
    @licence.save
  end

  def edit
  end
  
  
  
  private
  
  def licence_params
    params.require(:licence).permit(:name,:type, :date, :quantity, :web_site_of_purchase, :company_of_purchase, :price)
    
  end
  
end
