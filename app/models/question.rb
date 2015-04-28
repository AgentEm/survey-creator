class Question < ActiveRecord::Base
  has_many :possible_responses
  belongs_to :category

  validates :question_id, :label, :question_type_id, presence: true
  validates :question_id, uniqueness: true
  validates_format_of :question_id, :question_type_id, :with => /\A[_a-z]+\z/
end
