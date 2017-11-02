class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :description
      t.integer :containers
      t.string :origin
      t.string :destination
      t.integer :cost
      t.string :boat
      t.references :user, foreign_key: true
      t.references :assignment

      t.timestamps
    end
  end
end
