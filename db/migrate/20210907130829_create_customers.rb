class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :last_name
      t.string :telephone
      t.string :address
      t.boolean :state

      t.timestamps
    end
  end
end
