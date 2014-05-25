class PollsController < ApplicationController
  respond_to :html, :js

  def index
    @polls = Poll.all
  end

  def new
    @poll = Poll.new
  end

  def create
    @polls = Poll.all
    @poll = Poll.create(poll_params)
  end

  private

    def poll_params
      params.require(:poll).permit(:name)
    end
end
