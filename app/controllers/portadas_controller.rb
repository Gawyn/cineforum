class PortadasController < ApplicationController
  def index
	@sesions= Sesion.find(:all, :conditions => {:portada => true}, :order => "created_at DESC")
	@noticias= Noticia.find(:all, :conditions => {:portada => true}, :order => "created_at DESC")
	@total=@noticias+@sesions
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
