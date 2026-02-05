class FixVendorUserColumn < ActiveRecord::Migration[8.1]
  def change
     #remove wrong column
    remove_column :vendors, :users_id if column_exists?(:vendors, :users_id)

    # add correct column
    add_reference :vendors, :user, foreign_key: true, index: true
  end
end
