class PollsController < ApplicationController
  respond_to :html, :js
  before_action :set_poll,  only: [:edit, :update, :destroy]
  before_action :all_polls, only: [:index, :create, :update]

  def new
    @poll = Poll.new
  end

  def create
    @poll = Poll.create(poll_params)
  end

  def update
    @poll.update_attributes(poll_params)
  end

  def destroy
    @poll.destroy

    respond_to do |format|
      format.html { redirect_to @poll }
      format.js   { head :no_content  }
    end
  end

  private

    def set_poll
      @poll = Poll.find(params[:id])
    end

    def all_polls
      @polls = Poll.all
    end

    def poll_params
      params.require(:poll).permit(:name)
    end
end
