class ChangeDateFormatInOrders < ActiveRecord::Migration[8.0]
  def change
    change_column :orders, :order_date, :date
  end
end
