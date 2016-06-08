class Room < ActiveRecord::Base
  belongs_to :users
  belongs_to :project
end
