class ReplaceArticleIdToEventIdOnEventCategoryship < ActiveRecord::Migration
  def change
     add_column :event_categoryships, :event_id, :integer
     remove_column :event_categoryships, :article
  end
end
