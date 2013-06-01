class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.string :description
      t.integer :user_id

      t.timestamps
    end
    add_index :shots, :user_id
  end
end
