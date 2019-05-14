class AddAttachmentResimToFaydalars < ActiveRecord::Migration[5.2]
  def self.up
    change_table :faydalars do |t|
      t.attachment :resim
    end
  end

  def self.down
    remove_attachment :faydalars, :resim
  end
end
