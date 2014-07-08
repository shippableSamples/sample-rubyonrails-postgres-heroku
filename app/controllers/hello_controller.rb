class HelloController < ApplicationController
  def index
    @score = Score.new(:score => 1234)
    @score.save
  end
end
