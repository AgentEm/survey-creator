class Survey < ActiveRecord::Base
  has_many :categories
  has_many :questions through :categories
  has_many :possible_responses, through :questions
  belongs_to :user
end
