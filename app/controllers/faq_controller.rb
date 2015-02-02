class FaqController < ApplicationController
  def index
    @quote= CommonQuestion.question

  end
end
