class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :country
      t.string :nif
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
