class CommentsController < ApplicationController
	before_filter :authenticate_user!, :except => [:index, :show]
	def create
		@post=Post.find(params[:post_id])
		flash[:notice] = "Gracies pel comentari!"
		@comment = @post.comments.create!(params[:comment])
   flash[:notice] = "Thanks for commenting!"
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
end
