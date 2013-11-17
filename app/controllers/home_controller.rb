class HomeController < ApplicationController
  def index
  	@questions = Survey::Question.all

  end
end
