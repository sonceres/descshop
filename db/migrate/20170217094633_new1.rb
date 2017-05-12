class New1 < ActiveRecord::Migration[5.0]
  def change
     add_column :ads ,:model_id,:integer
  end
end
