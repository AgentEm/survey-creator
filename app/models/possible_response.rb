class PossibleResponse < ActiveRecord::Base
  belongs_to :question

  validates :value, :colour, presence: true
end
