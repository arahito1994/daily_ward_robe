
# DB 設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |




### Association
- has_many :items
- has_many :comments
- has_many :favorites


## items テーブル

| Column       | Type        | Options                        |
| ------------ | ----------- | ------------------------------ |
| title        | string      | null: false                    |
| style_text   | text        | null: false                    |
| outer_item   | text        |                                |
| tops_item    | text        |                                |
| bottoms_item | text        |                                |
| shoes_item   | text        |                                |
| goods_item   | text        |                                |
| user         | references  | null: false, foreign_key: true |




### Association
- belongs_to :user
- has_many :comments
- has_many :favorites


## favorites テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item

## comments テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| comments    | text       | null: false                    |
| user        | references | null: false, foreign_key: true |
| item        | references | null: false, foreign_key: true |


### Association
- belongs_to :user
- belongs_to :item

