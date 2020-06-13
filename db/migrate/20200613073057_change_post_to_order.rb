class ChangePostToOrder < ActiveRecord::Migration[6.0]
  def change
    rename_column :order_follows, :post_id, :order_id
  end
end
