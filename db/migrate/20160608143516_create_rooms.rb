class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.belongs_to :user, index: true
      t.belongs_to :project, index: true

      t.timestamps null: false
    end
  end
end
