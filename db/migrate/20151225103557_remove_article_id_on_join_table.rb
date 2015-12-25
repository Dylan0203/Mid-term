class RemoveArticleIdOnJoinTable < ActiveRecord::Migration
  def change
    remove_column :event_categoryships, :article_id
  end
end
