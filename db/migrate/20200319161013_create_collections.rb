class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.string :category
      t.integer :user_id
      
      t.timestamps
    end
  end
end
