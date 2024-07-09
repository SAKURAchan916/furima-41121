## users table
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|encrypted_password|string|null: false|
|farstname|string|null: false|
|rastname|string|null: false|
|farstnamekana|string|null: false|
|rastnamekana|string|null: false|
|date|date|null: false|

### Association
- has_many :items
- has_many :buys

## items table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|explanation|string|null: false|
|category_id|Integer|null: false|
|situation_id|Integer|null: false|
|burden_of_shipping charges_id|Integer|null: false|
|delivery_area_id|Integer|null: false|
|number_of_days_id|Integer|null: false|
|money|string|null: false|
|user|refernces|null: false ,foreign_key: true|

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
|prefecture_id|Integer|null: false|
|municipalies|string|null: false|
|street_address|string|null: false|
|building_name|string|
|telephone_number|string|null: false|
|buy|references|null: false ,foreign_key: true|

### Association
- belongs_to :buy
