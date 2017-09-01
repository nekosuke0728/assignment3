class CommentsController < ApplicationController

	def create
		@comment = Comment.new(comment_params)
		@comment.save
		redirect_to book_path(@comment.book_id)
	end

	def destroy
		Comment.find(params[:id]).destroy
		redirect_to "books/show/#{params[:book_id]}"
	end

	private
	def comment_params
		params.require(:comment).permit(:book_id, :body, :nickname)
	end
end
