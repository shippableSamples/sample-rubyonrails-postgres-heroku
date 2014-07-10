require 'test_helper'

class ScoreTest < ActiveSupport::TestCase
  test "should not save without score" do
    score = Score.new
    assert_not score.save
  end
end
