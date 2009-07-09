class ContactStatusesController < ApplicationController

  before_filter :login_required
  
  layout 'application'
  
  @page_title = "Contact Status"
  
  # GET /contact_statuses
  # GET /contact_statuses.xml
  def index
    @page_title = "Contact Status"
    @contact_statuses = ContactStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contact_statuses }
    end
  end

  # GET /contact_statuses/1
  # GET /contact_statuses/1.xml
  def show
    @page_title = "Contact Status"
    @contact_status = ContactStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contact_status }
    end
  end

  # GET /contact_statuses/new
  # GET /contact_statuses/new.xml
  def new
    @page_title = "Contact Status"
    @contact_status = ContactStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contact_status }
    end
  end

  # GET /contact_statuses/1/edit
  def edit
    @page_title = "Contact Status"
    @contact_status = ContactStatus.find(params[:id])
  end

  # POST /contact_statuses
  # POST /contact_statuses.xml
  def create
    @page_title = "Contact Status"
    @contact_status = ContactStatus.new(params[:contact_status])

    respond_to do |format|
      if @contact_status.save
        flash[:notice] = 'Contact Status \'' + @contact_status.value + '\' was successfully created.'
        #format.html { redirect_to(@contact_status) }
        format.html { redirect_to(contact_statuses_url)}
        format.xml  { render :xml => @contact_status, :status => :created, :location => @contact_status }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contact_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contact_statuses/1
  # PUT /contact_statuses/1.xml
  def update
    @page_title = "Contact Status"
    @contact_status = ContactStatus.find(params[:id])

    respond_to do |format|
      if @contact_status.update_attributes(params[:contact_status])
        flash[:notice] = 'Contact Status \'' + @contact_status.value + '\' was successfully updated.'
        #format.html { redirect_to(@contact_status) }
        format.html { redirect_to(contact_statuses_url)}
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contact_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_statuses/1
  # DELETE /contact_statuses/1.xml
  def destroy
    @page_title = "Contact Status"
    @contact_status = ContactStatus.find(params[:id])
    value = @contact_status.value
    @contact_status.destroy

    respond_to do |format|
      flash[:notice] = 'Contact Status \'' + @contact_status.value + '\' was successfully deleted.'
      format.html { redirect_to(contact_statuses_url) }
      format.xml  { head :ok }
    end
  end
end
