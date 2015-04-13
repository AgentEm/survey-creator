class Category < ActiveRecord::Base
  has_many :questions
  belongs_to :survey
end
