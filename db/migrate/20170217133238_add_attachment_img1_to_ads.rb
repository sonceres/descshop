class AddAttachmentImg1ToAds < ActiveRecord::Migration
  def self.up
    change_table :ads do |t|
      t.attachment :img1
    end
  end

  def self.down
    remove_attachment :ads, :img1
  end
end
