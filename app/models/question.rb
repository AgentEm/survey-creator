class Question < ActiveRecord::Base
  has_many :possible_responses
end
