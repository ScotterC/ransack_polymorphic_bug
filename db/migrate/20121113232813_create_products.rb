class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name

      t.timestamps
    end

    Product.create!(:name => 'Test Product')
    prod = Product.first
    prod.data_errors.create!
  end
end
