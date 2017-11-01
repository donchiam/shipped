class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :boat
      t.string :job
      t.integer :containers

      t.timestamps
    end
  end
end
