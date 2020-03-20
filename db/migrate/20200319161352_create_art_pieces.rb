class CreateArtPieces < ActiveRecord::Migration[6.0]
  def change
    create_table :art_pieces do |t|
      t.string :title
      t.integer :objectID
      t.boolean :isHighlight
      t.integer :primaryImage
      t.string :primaryImageSmall
      t.string :department
      t.string :culture
      t.string :artistDisplayName
      t.string :artistDisplayBio
      t.string :artistAlphaSort
      t.string :artistNationality
      t.string :artistWikidata_URL
      t.integer :objectBeginDate
      t.integer :objectEndDate
      t.string :medium
      t.string :dimensions
      t.string :city
      t.string :state
      t.string :country
      t.string :classification
      t.string :repository
      t.string :objectURL
      t.timestamps
    end
  end
end
