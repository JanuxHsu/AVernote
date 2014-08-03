class PostsController < ApplicationController
	def index
		@posts = Post.all
		if current_user
			@post = current_user.posts.build
		end
	end

	def create
		@post = current_user.posts.build(create_params)

	  	if @post.save
	  		flash[:notice] = "Posted Successfully"
	  		redirect_to root_path
	  	else
	  		render "index"
	  	end
	end

	private

	  	def create_params
	  		params.require(:post).permit(:content, :link)
	  	end
end
