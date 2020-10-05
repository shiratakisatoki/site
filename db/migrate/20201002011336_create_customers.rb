class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.references :employee, foreign_key: true
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
