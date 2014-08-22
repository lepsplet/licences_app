class SitesController < ApplicationController
  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
  end

  def new
    @site = Site.new
  end
  
  def create
    @site = Site.new(site_params)
    if @site.save
      redirect_to @site
    else
      render 'new'
    end
  end

  def edit
    @site = Site.find(params[:id])
  end
  
  def update
    @site = Site.find(params[:id])
    if @site.update(site_params)
      redirect_to @site
    else
      render 'edit'
    end
  end
  
  def destroy
    @site = Site.find(params[:id])
    @site.destroy
    redirect_to sites_path
  end
  
  private
  
  def site_params
    params.require(:site).permit(:company, :url, :type_of_site, :user_name_site, :password_site, :gmail_of_site, :gmail_password, :dropbox_password)
  end
end
