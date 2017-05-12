class Ewn < ActiveRecord::Migration[5.0]
  def change
    remove_reference :ads, :model, index: true
  end
end
