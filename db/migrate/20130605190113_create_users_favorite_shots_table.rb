class CreateUsersFavoriteShotsTable < ActiveRecord::Migration
   def change
    create_table :users_favorite_shots, :id => false do |t|
      t.integer :user_id
      t.integer :shot_id
    end
    add_index :users_favorite_shots, :user_id
    add_index :users_favorite_shots, :shot_id
  end
end
