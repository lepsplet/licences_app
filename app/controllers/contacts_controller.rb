class ContactsController < ApplicationController
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
    @contact = @site.contacts.create(contacts_params)  
  end
  
  
  private
  
  def contacts_params
    params.require(:contact).permit(:name, :company, :telephone, :email)
  end
  
end
