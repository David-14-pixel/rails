class AddProductToCategories < ActiveRecord::Migration[6.1]
  def change
    add_reference :categories, :product, null: false, foreign_key: true
  end
end