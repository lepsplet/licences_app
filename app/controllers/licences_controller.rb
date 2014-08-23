class LicencesController < ApplicationController
  def index
    @licences = Licence.all
  end

	def use
		@sites = Site.all
		@licence = Licence.find(params[:id])
	end

	def save_licence_to_site

		site = params[:site]
		licence = params[:licence]

		find_site_for_licence = LicenceSite.new(site_id: site, licence_id: licence)
		redirect_to site_path(site)
	end

  def show
    @licence = Licence.find(params[:id])
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
    @licence = Licence.find(params[:id])
  end  
  
  def update
    @licence = Licence.find(params[:id])
    
    if @licence.update(licence_params)
      redirect_to @licence
    else
      render 'edit'
    end
  end
  
  def destroy
    @licence = Licence.find(params[:id])
    @licence.destroy
    redirect_to licences_path
  end
  
  
  private
  
  def licence_params
    params.require(:licence).permit(:name, :type_of_licence, :date, :quantity, :web_site_of_purchase, :company_of_purchase, :price)
    
  end
  
end
