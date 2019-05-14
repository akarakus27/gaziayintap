class AddAttachmentResimToUruns < ActiveRecord::Migration[5.2]
  def self.up
    change_table :uruns do |t|
      t.attachment :resim
    end
  end

  def self.down
    remove_attachment :uruns, :resim
  end
end
