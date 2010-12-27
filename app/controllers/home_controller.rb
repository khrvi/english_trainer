class HomeController < ApplicationController
  def index
    @words = Vocabulary.find(:all)
  end
end
