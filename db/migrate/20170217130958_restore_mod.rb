class RestoreMod < ActiveRecord::Migration[5.0]
  def change
    add_reference :ads, :model, foreign_key: true
  end
end
