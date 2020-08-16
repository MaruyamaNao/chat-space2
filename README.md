## groupsテーブル
|Column|Type|Options|
|------|----|-------|

### Association

## usersテーブル
|Column|Type|Options|
|------|----|-------|

### Association

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
- belongs_to :users
- belongs_to :groups
