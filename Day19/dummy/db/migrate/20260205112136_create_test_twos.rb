class CreateTestTwos < ActiveRecord::Migration[8.1]
  def change
    create_table :test_twos do |t|
      t.string :name
      t.references :test_one, null: false, foreign_key: true

      t.timestamps
    end
  end
end
