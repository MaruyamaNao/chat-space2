## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|add_index : unique: true|

### Association
- has_many :groups_users
- has_many :messages
- has_many :groups, through: :groups_users


## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :groups_users
- has_many :messages
- has_many :users, through: :groups_users


## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user


## massegesテーブル
|Column|Type|Options|
|------|----|-------|
|content|text||
|image|string||
|user_id|reference|null: false, foreign_key: true|
|group_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group
