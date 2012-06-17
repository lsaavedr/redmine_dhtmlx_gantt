class PollsController < ApplicationController
  unloadable


  def index
    @polls = Pool.all
  end

  def vote
    pool = Poll.find(params[:id])
    pool.vote(params[:answer])
    if pool.save
      flash[:notice] = 'Vote saved.'
    end
    redirect_to :action => 'index'
  end
end
