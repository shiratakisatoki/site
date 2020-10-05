class CreateCheckItems < ActiveRecord::Migration[5.1]
  def change
    create_table :check_items do |t|
      t.references :product, foreign_key: true
      t.references :favorite, foreign_key: true

      t.timestamps
    end
  end
end
