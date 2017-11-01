class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :location
      t.integer :containers
      t.string :job
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
