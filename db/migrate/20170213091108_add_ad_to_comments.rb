class AddAdToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :ad, foreign_key: true
  end
end
