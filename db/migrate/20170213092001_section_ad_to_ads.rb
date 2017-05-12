class SectionAdToAds < ActiveRecord::Migration[5.0]
  def change
    add_reference :ads, :section, index: true
  end
end
