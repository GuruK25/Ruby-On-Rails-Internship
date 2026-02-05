class AddTest3ToTest4 < ActiveRecord::Migration[8.1]
  def change
    add_reference :test4s, :test3, null: false, foreign_key: true, default: 1
  end
end
