class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :location
      t.integer :containers
      t.string :job
      t.attachment :photo
      t.references :user, foreign_key: true
      t.references :assignment
<<<<<<< HEAD


=======
>>>>>>> b650b334d3f51215aa84cde44457f88b1d6b5700
      t.timestamps
    end
  end
end
