class CreateSalesOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :sales_orders, id: :uuid do |t|
      t.string :sales_order_number, null: false, unique: true
      t.date :sales_order_date, null: false, default: Date.today
      t.string :status, null: false, default: "draft"
      t.date :delivery_date, null: false

      t.references :client, null: true, type: :uuid, foreign_key: {to_table: :clients, index: {name: "so_on_client_indx"}}

      t.timestamps
    end
  end
end
