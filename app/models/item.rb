class Item < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :genre
    has_one_attached :image
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
    end
end
