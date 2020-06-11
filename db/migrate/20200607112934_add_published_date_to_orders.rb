class AddPublishedDateToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :published_at, :date
  end
end
