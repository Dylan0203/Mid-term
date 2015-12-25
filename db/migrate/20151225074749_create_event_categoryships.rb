class CreateEventCategoryships < ActiveRecord::Migration
  def change
    create_table :event_categoryships do |t|
      t.integer :article_id
      t.integer :category_id
      

      t.timestamps null: false
    end
  end
end
