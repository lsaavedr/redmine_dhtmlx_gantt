class DhtmlxGanttProjectController < ApplicationController
  unloadable

  before_filter :find_project, :authorize, :only => :index

  def index
    @milista = [7,8,9,0]
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end
end
