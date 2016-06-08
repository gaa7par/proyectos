class User < ActiveRecord::Base
  has_many :rooms
  has_many :projects, through: :rooms

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true, length: { maximum: 40 }
end
