class LicencesController < ApplicationController
  def index
    @licences = Licence.all
  end

  def show
  end

  def new
    @licence = Licence.new
  end
  
  def create
    @licence = Licence.new(licence_params)
    if @licence.save
      redirect_to @licence
    else
      render 'new'
    end
    
  end

  def edit
  end  
  
  
  
  private
  
  def licence_params
    params.require(:licence).permit(:name, :type_of_licence, :date, :quantity, :web_site_of_purchase, :company_of_purchase, :price)
    
  end
  
end
