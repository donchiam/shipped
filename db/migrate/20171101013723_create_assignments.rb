class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.string :job
      t.string :boat
      t.integer :containers

      t.timestamps
    end
  end
end
