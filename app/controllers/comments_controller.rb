class CommentsController < ApplicationController
    def create
		@installation = Installation.find(params[:installation_id])
		@comment = @installation.comments.create(params[:comment].permit(:name, :body))

		redirect_to installation_path(@installation)
	end

	def destroy
		@installation = Installation.find(params[:installation_id])
		@comment = @installation.comments.find(params[:id])
		@comment.destroy

		redirect_to installation_path(@installation)
	end
end
