class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      ## items table
      t.string :name,  null: false
      t.string :explanation,  null: false
      t.string :category_id, null: false
      t.string :situation_id, null: false
      t.string :burden_of_shipping_charge_id, null: false
      t.string :delivery_area_id, null: false
      t.string :number_of_day_id, null: false
      t.string :money, null: false
      t.string :user, null: false

      t.timestamps
    end
  end
end
