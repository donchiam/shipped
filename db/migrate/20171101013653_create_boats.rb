class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :location
      t.integer :containers
      t.attachment :photo
      t.references :user, foreign_key: true
      t.references :assignment

      t.timestamps
    end
  end
end
