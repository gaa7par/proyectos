class Project < ActiveRecord::Base
  has_many :rooms
  has_many :users, through: :rooms

  validates :name, presence: true, length: { maximum: 20 }
end
