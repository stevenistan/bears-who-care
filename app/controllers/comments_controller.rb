class CommentsController < ApplicationController
	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to post_path(@post)
		else
			render 'new'
		end
	end

	private
	def comment_params
		params.require(:comment).permit(:content)
	end
end
