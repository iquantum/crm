class ContactsController < ApplicationController
  
  # before_filter :login_required, :except => [:index, :show]
  before_filter :login_required
  
  def index
    @contacts = Contact.all
  end
  
  def show
    @contact = Contact.find(params[:id])
    @page_title = "Contact"
  end
  
  def new
    @contact = Contact.new
    @page_title = "New Contact"
    flash[:notice] = "" #hack: "Successfully created contact." was showing up sometimes
  end
  
  def create
    @contact = Contact.new(params[:contact])
    @page_title = "New Contact"
    if @contact.save
      flash[:notice] = "Successfully created contact '" + @contact.first_name + " " + 
        @contact.middle_initial + " " + @contact.last_name + "'."
      redirect_to :contacts
    else
      render :action => 'new'
    end
  end
  
  def edit
    @contact = Contact.find(params[:id])
    @page_title = "Edit Contact"
    flash[:notice] = "" #hack: "Successfully created contact." was showing up sometimes
  end
  
  def update
    @contact = Contact.find(params[:id])
    @page_title = "Updated Contact"
    if @contact.update_attributes(params[:contact])
      flash[:notice] = "Successfully updated contact."
      redirect_to :contacts
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @contact = Contact.find(params[:id])
    @page_title = "Contact Deleted"
    @contact.destroy
    flash[:notice] = "Successfully deleted contact."
    redirect_to :contacts
  end
end
