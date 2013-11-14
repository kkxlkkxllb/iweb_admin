class HomeController < ApplicationController
  def index
  	@project = Project.first
  	@geo = @project.analytics.results
  end
end
