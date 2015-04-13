class Question < ActiveRecord::Base
  has_many :possible_responses
  belongs_to :category
end
