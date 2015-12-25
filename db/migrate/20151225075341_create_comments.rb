class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :reply
      t.integer :user_id
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
