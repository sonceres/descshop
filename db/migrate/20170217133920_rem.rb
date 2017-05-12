class Rem < ActiveRecord::Migration[5.0]
  def change
     remove_column :ads, :image1 
     remove_column :ads, :image2 
     remove_column :ads, :image3 
  end
end
