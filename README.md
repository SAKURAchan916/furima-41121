## users table
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false ,unique: true|
|encrypted_password|string|null: false|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|birth|date|null: false|

### Association
- has_many :items
- has_many :buys

## items table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|explanation|text|null: false|
|category_id|integer|null: false|
|situation_id|integer|null: false|
|burden_of_shipping_charge_id|integer|null: false|
|delivery_area_id|integer|null: false|
|number_of_day_id|integer|null: false|
|money|integer|null: false|
|user|references|null: false ,foreign_key: true|

### Association
- belongs_to :user
- has_one :buy

## buys table
|Column|Type|Options|
|------|----|-------|
|user|references|null: false ,foreign_key: true|
|item|references|null: false ,foreign_key: true|

### Association
- belongs_to :item
- belongs_to :user
- has_one :address


## addresses table
|Column|Type|Options|
|------|----|-------|
|post_code|string|null: false|
|delivery_area_id|integer|null: false |
|municipality|string|null: false|
|street_address|string|null: false|
|building_name|string|
|telephone_number|string|null: false|
|buy|references|null: false ,foreign_key: true|

### Association
- belongs_to :buy
