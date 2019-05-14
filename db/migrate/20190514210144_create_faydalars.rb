class CreateFaydalars < ActiveRecord::Migration[5.2]
  def change
    create_table :faydalars do |t|
      t.string :baslik
      t.text :aciklama

      t.timestamps
    end
  end
end
