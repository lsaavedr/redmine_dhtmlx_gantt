class PollsController < ApplicationController
  unloadable

  before_filter :find_project, :authorize, :only => [:index, :vote]

  def index
    @project = Project.find(params[:project_id])
    @polls = Poll.all
  end

  def vote
    pool = Poll.find(params[:id])
    pool.vote(params[:answer])
    if pool.save
      flash[:notice] = 'Vote saved.'
    end
    redirect_to :action => 'index'
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end
end
