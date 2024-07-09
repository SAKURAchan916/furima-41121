## users table
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|e-mail|string|null: false|
|password|string|null: false|
|farstname|string|null: false|
|rastname|string|null: false|
|farstnamekana|string|null: false|
|rastnamekana|string|null: false|
|date|string|null: false|

### Association
- has_many :items
- has_many :buys

## items table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|explanation|string|null: false|
|category|string|
|situation|string|
|burden of shipping charges|string|
|delivery area|string|
|number of days|string|null: false|
|money|string|null: false|

### Association
- belongs_to :users
- has_many :buys

## buys table
|Column|Type|Options|
|------|----|-------|
|user|references|null: false ,foreign_key: true|
|item|references|null: false ,foreign_key: true|

### Association
- belongs_to :items
- belongs_to :users

## addresses table
|Column|Type|Options|
|------|----|-------|
|post code|Integer|null: false|
|municipalities|string|null: false|
|street address|Integer|null: false|
|building name|string|null: false|
|telephone number|Integer|null: false|

### Association
- belongs_to :buys
- belongs_to :users