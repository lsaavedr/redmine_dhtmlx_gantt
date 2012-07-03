class PollsController < ApplicationController
  unloadable

  before_filter :find_project, :authorize, :only => [:index, :vote]

  rescue_from Query::StatementInvalid, :with => :query_statement_invalid

  helper :queries
  include QueriesHelper

  def index
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

    retrieve_query
    @query.group_by = nil
    @issues = @query.issues()
   end
end
