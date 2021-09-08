class CreateEmployes < ActiveRecord::Migration[6.1]
  def change
    create_table :employes do |t|
      t.string :name
      t.string :last_name
      t.integer :age
      t.string :telephone
      t.float :salary
      t.string :cargo

      t.timestamps
    end
  end
end
