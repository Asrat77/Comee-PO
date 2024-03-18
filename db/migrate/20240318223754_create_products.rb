class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :code, null: false, unique: true
      t.string :name, null: false
      t.string :description

      t.timestamps
    end
  end
end
