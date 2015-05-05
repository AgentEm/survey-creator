class Survey < ActiveRecord::Base
  has_many :categories
  belongs_to :user

  validates :name, :languages, presence: true
  validates :name, uniqueness: true
  serialize :languages
  LANGUAGES = [:en, :fr, :sp, :ch]
end
