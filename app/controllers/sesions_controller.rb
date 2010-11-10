class SesionsController < ApplicationController
  # GET /sesions
  # GET /sesions.xml
	before_filter :authenticate_admin!, :except => [:show, :index]
  uses_tiny_mce :options => {
                              :theme => 'advanced',
                              :plugins => %w{ table fullscreen }
                            }
  def index
    @sesions = Sesion.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sesions }
    end
  end

  # GET /sesions/1
  # GET /sesions/1.xml
  def show
    @sesion = Sesion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sesion }
    end
  end

  # GET /sesions/new
  # GET /sesions/new.xml
  def new
    @sesion = Sesion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sesion }
    end
  end

  # GET /sesions/1/edit
  def edit
    @sesion = Sesion.find(params[:id])
  end

  # POST /sesions
  # POST /sesions.xml
  def create
    @sesion = Sesion.new(params[:sesion])

    respond_to do |format|
      if @sesion.save
        format.html { redirect_to(@sesion, :notice => 'Sesion was successfully created.') }
        format.xml  { render :xml => @sesion, :status => :created, :location => @sesion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sesion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sesions/1
  # PUT /sesions/1.xml
  def update
    @sesion = Sesion.find(params[:id])

    respond_to do |format|
      if @sesion.update_attributes(params[:sesion])
        format.html { redirect_to(@sesion, :notice => 'Sesion was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sesion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sesions/1
  # DELETE /sesions/1.xml
  def destroy
    @sesion = Sesion.find(params[:id])
    @sesion.destroy

    respond_to do |format|
      format.html { redirect_to(sesions_url) }
      format.xml  { head :ok }
    end
  end
end
