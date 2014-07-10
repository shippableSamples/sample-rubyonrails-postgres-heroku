class Score < ActiveRecord::Base
  validates :score, presence: true
end
