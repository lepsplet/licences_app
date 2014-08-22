class ContactsController < ApplicationController

  def index
    @site = Site.find(params[:site_id])
    @contact = @site.contacts.all    
  end
  
  def show
  end

  def edit
  end

  def new
    @site = Site.find(params[:site_id])
    @contact = @site.contacts.new(params[:contact])
  end
  
  def create
    @site = Site.find(params[:site_id])
    if @contact = @site.contacts.create(contacts_params) 
      redirect_to site_path(@site)
    else
      render 'new'
    end
  end
  
  
  private
  
  def contacts_params
    params.require(:contact).permit(:name, :company, :telephone, :email)
  end
  
end
