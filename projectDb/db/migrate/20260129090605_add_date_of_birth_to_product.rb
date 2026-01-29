class AddDateOfBirthToProduct < ActiveRecord::Migration[8.1]
  def change
    add_column :products, :dob, :date
  end
end
