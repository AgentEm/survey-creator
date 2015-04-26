class Category < ActiveRecord::Base
  has_many :questions
  belongs_to :survey

  validates :name, :colour, :icon_id, presence: true
end
