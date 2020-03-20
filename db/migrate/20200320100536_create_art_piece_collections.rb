class CreateArtPieceCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :art_piece_collections do |t|
      t.integer :art_piece_id
      t.integer :collection_id
      t.timestamps
    end
  end
end
