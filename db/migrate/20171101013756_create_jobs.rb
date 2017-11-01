class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :description
      t.integer :containers
      t.string :origin
      t.string :destination
      t.integer :cost

      t.timestamps
    end
  end
end
