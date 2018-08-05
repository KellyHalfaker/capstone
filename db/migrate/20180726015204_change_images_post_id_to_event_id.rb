class ChangeImagesPostIdToEventId < ActiveRecord::Migration[5.2]
  def change
    rename_column :images, :post_id, :event_id
  end
end
