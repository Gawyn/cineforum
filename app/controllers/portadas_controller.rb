class PortadasController < ApplicationController
  def index
    	@enquestas = Enquesta.all
	@posts = Post.all
	@sessios= Sessio.all
	@total=@enquestas+@posts+@sessios
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @films }
    end
  end
end

  def show
    @film = Film.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @film }
    end
  end
