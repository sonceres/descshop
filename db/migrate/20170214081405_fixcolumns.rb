class Fixcolumns < ActiveRecord::Migration[5.0]
  def change

rename_column :ads, :title , :zagolovok
rename_column :ads, :body , :tekst


  end
end
