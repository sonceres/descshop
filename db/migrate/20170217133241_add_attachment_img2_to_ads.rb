class AddAttachmentImg2ToAds < ActiveRecord::Migration
  def self.up
    change_table :ads do |t|
      t.attachment :img2
    end
  end

  def self.down
    remove_attachment :ads, :img2
  end
end
