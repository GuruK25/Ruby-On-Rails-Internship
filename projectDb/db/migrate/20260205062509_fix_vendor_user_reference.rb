class FixVendorUserReference < ActiveRecord::Migration[8.1]
  def change
    remove_reference :vendors, :users, foreign_key: true
    add_reference :vendors, :user, foreign_key: true
  end
end
