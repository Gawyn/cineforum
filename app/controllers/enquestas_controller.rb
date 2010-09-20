class EnquestasController < ApplicationController
	before_filter :authenticate_admin!, :except => [:index, :show]
  uses_tiny_mce :options => {
                              :theme => 'advanced',
                              :plugins => %w{ table fullscreen }
                            }
  # GET /enquestas
  # GET /enquestas.xml
  def index
    @enquestas = Enquesta.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @enquestas }
    end
  end

  # GET /enquestas/1
  # GET /enquestas/1.xml
  def show
    @enquesta = Enquesta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @enquesta }
    end
  end

  # GET /enquestas/new
  # GET /enquestas/new.xml
  def new
    @enquesta = Enquesta.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @enquesta }
    end
  end

  # GET /enquestas/1/edit
  def edit
    @enquesta = Enquesta.find(params[:id])
  end

  # POST /enquestas
  # POST /enquestas.xml
  def create
    @enquesta = Enquesta.new(params[:enquesta])

    respond_to do |format|
      if @enquesta.save
        format.html { redirect_to(@enquesta, :notice => 'Enquesta was successfully created.') }
        format.xml  { render :xml => @enquesta, :status => :created, :location => @enquesta }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @enquesta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /enquestas/1
  # PUT /enquestas/1.xml
  def update
    @enquesta = Enquesta.find(params[:id])

    respond_to do |format|
      if @enquesta.update_attributes(params[:enquesta])
        format.html { redirect_to(@enquesta, :notice => 'Enquesta was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @enquesta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /enquestas/1
  # DELETE /enquestas/1.xml
  def destroy
    @enquesta = Enquesta.find(params[:id])
    @enquesta.destroy

    respond_to do |format|
      format.html { redirect_to(enquestas_url) }
      format.xml  { head :ok }
    end
  end
end
