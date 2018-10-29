class ProjectController < ApplicationController
	def new
		@project = Project.new
	end

	def create
		@projectcreate = Project.create(project_params)
		UserProject.create(user_id: current_user.id, project_id: @projectcreate.id)
	end

	def show
		@project = Project.find(params[:id])
	end

	private
	def project_params
		params.require(:project).permit(:title, :details, :photo, :required_reliability)
	end

end
