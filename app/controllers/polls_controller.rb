class PollsController < ApplicationController
  respond_to :html, :js
  before_action :set_poll, only: [:destroy]

  def index
    @polls = Poll.all
  end

  def new
    @poll = Poll.new
  end

  def create
    @poll, @polls = Poll.create(poll_params), Poll.all
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

    def poll_params
      params.require(:poll).permit(:name)
    end
end
