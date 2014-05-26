class SurveysController < ApplicationController
  respond_to :html, :js
  before_action :set_survey,  only: [:edit, :update, :destroy]
  before_action :all_surveys, only: [:index, :create, :update]

  def new
    @survey = Survey.new
    @survey.questions.build
  end

  def create
    @survey = Survey.create(survey_params)
  end

  def update
    @survey.update_attributes(survey_params)
  end

  def destroy
    @survey.destroy

    respond_to do |format|
      format.html { redirect_to @survey }
      format.js   { head :no_content    }
    end
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
                                     questions_attributes: [:id, :content])
    end
end
