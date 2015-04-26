class Survey < ActiveRecord::Base
  has_many :categories
  belongs_to :user

  validates :name, :languages, presence: true
end
