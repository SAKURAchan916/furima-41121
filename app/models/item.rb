class Item < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :genre
    with_options presence: true do
        validates :name
        validates :explanation
        validates :category_id
        validates :situation_id
        validates :burden_of_shipping_charge_id
        validates :delivery_area_id
        validates :delivery_area_id
        validates :money
        validates :user
          with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i
    end
end
