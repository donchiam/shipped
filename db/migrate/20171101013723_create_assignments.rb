class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.references :job, foreign_key: true
       t.references :boat, foreign_key: true
       t.integer :containers



      t.timestamps
    end

end
end