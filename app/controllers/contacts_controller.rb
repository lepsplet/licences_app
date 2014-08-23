class ContactsController < ApplicationController

  def index
    @site = Site.find(params[:site_id])
    @contact = @site.contacts
  end
  
  def show
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

  def edit
    @site = Site.find(params[:site_id])
	@contact = @site.contacts.find(params[:id])
  end

  def update
    @site = Site.find(params[:site_id])
	@contact = @site.contacts.find(params[:id])
	if @contact.update(contacts_params)
      redirect_to site_contacts_path(@site)
    else
      render 'edit'
    end
  end
  
  def destroy
		@site = Site.find(params[:site_id])
		@contact = @site.contacts.find(params[:id])
		@contact.destroy
		redirect_to site_contacts_path(@site)
  end
  
  private
  
  def contacts_params
    params.require(:contact).permit(:name, :company, :telephone, :email)
  end
  
end
