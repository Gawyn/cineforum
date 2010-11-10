class CommentsController < ApplicationController
	def create
		flash[:notice] = "Gracies pel comentari!"
		if (params[:sesion_id]== nil )
			@noticia=Noticia.find(params[:noticia_id])
			@comment = @noticia.comments.build(params[:comment])
		else
			if (params[:noticia_id]== nil)
			@sesion=Sesion.find(params[:sesion_id])
			@comment = @sesion.comments.build(params[:comment])
			end
		end
		@comment.user_id=current_user.id
		@comment.save
		respond_to do |format|
			format.html { redirect_to @post }
			format.js
		end
  	end

	  def index
	    @comments = Comment.all

	    respond_to do |format|
	      format.html # index.html.erb
	      format.xml  { render :xml => @comments }
		format.atom
	    end
	  end
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to(posts_url) }
      format.xml  { head :ok }
    end
  end
end
