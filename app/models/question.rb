class Question < ActiveRecord::Base
  has_many :possible_responses
  belongs_to :category

  validates :question_id, :label, :question_type_id, presence: true
end
