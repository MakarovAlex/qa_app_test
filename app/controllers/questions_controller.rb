class QuestionsController < ApplicationController

  def new
    current_user.questions.create(permit_params)
  end


  private

  def permit_params
    params.require(:questions).permit(:title, :content)
  end
end
