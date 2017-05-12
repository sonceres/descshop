class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.text :title
      t.text :body
      t.text :image1
      t.text :image2
      t.text :image3
      t.text :tags
      t.text :status
      t.text :location
      t.timestamps

    end
  end
end
