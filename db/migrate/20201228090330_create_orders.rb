class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :username
      t.string :tel
      t.string :address
      t.timestamps
    end
  end
end
