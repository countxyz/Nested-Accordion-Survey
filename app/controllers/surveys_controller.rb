class SurveysController < ApplicationController
  before_action :set_survey,  only: [:edit, :update, :delete, :destroy]
  before_action :all_surveys, only: [:index, :create, :update, :destroy]
  respond_to :html, :js, :json

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.create(survey_params)
  end

  def update
    @survey.update_attributes(survey_params)
  end

  def destroy
    @survey.destroy
  end

  private

    def set_survey
      @survey = Survey.find(params[:id])
    end

    def all_surveys
      @surveys = Survey.all
    end

    def survey_params
      params.require(:survey).permit(:name,
        questions_attributes: [:id, :content, :_destroy,
          answers_attributes: [:id, :content, :_destroy]])
    end
end
