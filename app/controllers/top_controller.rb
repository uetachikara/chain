class TopController < ApplicationController
	def index
		@projects = Project.all.order("id DESC")
	end
end
