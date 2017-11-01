class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.integer :job_id
      t.integer :boat_id


      t.timestamps
    end

    add_index :assignments, [:job_id, :boat_id], unique: true
    
  end
end
