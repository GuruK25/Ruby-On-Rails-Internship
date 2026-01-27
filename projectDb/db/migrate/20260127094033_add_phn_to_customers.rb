class AddPhnToCustomers < ActiveRecord::Migration[8.1]
  def change
    add_column :customers, :phn, :string
  end
end
