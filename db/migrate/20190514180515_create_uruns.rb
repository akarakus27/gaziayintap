class CreateUruns < ActiveRecord::Migration[5.2]
  def change
    create_table :uruns do |t|
      t.string :baslik
      t.text :aciklama
      t.integer :fiyat

      t.timestamps
    end
  end
end
