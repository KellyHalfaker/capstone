class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :address
      t.string :date
      t.integer :user_id

      t.timestamps
    end
  end
end
