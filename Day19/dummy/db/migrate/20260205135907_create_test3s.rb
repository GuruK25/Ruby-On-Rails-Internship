class CreateTest3s < ActiveRecord::Migration[8.1]
  def change
    create_table :test3s do |t|
      t.string :name

      t.timestamps
    end
  end
end
