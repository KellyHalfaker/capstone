class ChangeCommentsPostIdToEventId < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :post_id, :event_id
  end
end
