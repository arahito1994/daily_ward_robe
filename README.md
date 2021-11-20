# アプリケーション名
DailyWardrobe

# アプリケーション概要
ファッション系投稿アプリケーション

# URL
https://daily-wardrobe.herokuapp.com/

# テスト用アカウント

## Basic認証
- Basic認証ID: memell
- Basic認証Pass: 0920

# 利用方法
ユーザー情報を登録することで自身の記事を投稿し、アプリケーション上に公開することができます。また他のユーザーの投稿を見ることもでき、他のユーザーの投稿に対して、コメントやいいね機能を使うことでアプリケーション上でコミュニケーションをとることが可能になっています。

# 目指した課題解決
ファッションに興味のある人同士での交流や情報共有を行うことができます。

# 洗い出した要件


# 実装した機能についての画像やGIFおよびその説明

# 実装予定の機能
- リアクション機能(いいね機能)
- コメント機能

# ローカルでの操作方法






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

