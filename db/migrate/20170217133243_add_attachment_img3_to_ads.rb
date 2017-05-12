class AddAttachmentImg3ToAds < ActiveRecord::Migration
  def self.up
    change_table :ads do |t|
      t.attachment :img3
    end
  end

  def self.down
    remove_attachment :ads, :img3
  end
end
