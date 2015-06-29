class Type < ActiveRecord::Base
  has_many :businesses, dependent: :destroy

  validates :name, presence: true
end
