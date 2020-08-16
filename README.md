## groupsテーブル
|Column|Type|Options|
|------|----|-------|

### Association
- has_many :groups_users
- has_many :messages
- has_many :users, through: :groups_users


## usersテーブル
|Column|Type|Options|
|------|----|-------|

### Association
- has_many :groups_users
- has_many :messages
- has_many :groups, through: :groups_users


## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
<!-- 外部キー制約 -->
### Association
- belongs_to :group
- belongs_to :user


## massegesテーブル
|Column|Type|Options|
|------|----|-------|

### Association
- belongs_to :user
- belongs_to :group
