class DeleteAssAdSec < ActiveRecord::Migration[5.0]
  def change
    remove_reference :ads, :section, index: true
  end
end
