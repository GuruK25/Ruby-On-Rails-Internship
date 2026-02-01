class CreateOrders < ActiveRecord::Migration[8.1]
  def change
    create_table :orders do |t|
      t.string :Details
      t.integer :Count

      t.timestamps
    end
  end
end
