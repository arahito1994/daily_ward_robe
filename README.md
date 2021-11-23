# アプリ名
## Daily_Wardrobe

# 概要 
ファッション系に特化した記事投稿のアプリケーションになっています。ファッションに特化したアプリケーションは他にもあると思うのですが、登録内容を最低限にして、シンプル且つ使いやすいものを目指しました。
# 制作背景(意図)
私自身がファッションを好きなこともあり、普段からファッション系のアプリケーションは利用しているのですが、もっとシンプルなものがあれば使いやすいなと思い、制作に至りました。

# 本番環境
https://daily-wardrobe.herokuapp.com/

## テスト用アカウント
### アカウント1
- Nickname: sample
- Email: s@s
- Password: sssss0
### アカウント2
- Nickname: test
- Email: t@t
- Password: testtest1


## Basic認証
- Basic認証ID: memell
- Basic認証Pass: 0920

# 利用方法
ユーザー情報を登録することで自身の記事を投稿し、アプリケーション上に公開することができます。また他のユーザーの投稿を見ることもでき、他のユーザーの投稿に対して、コメントやいいね機能を使うことでアプリケーション上で簡単にコミュニケーションをとることが可能になっています。

# 目指した課題解決
- 自身のコーディネートを気軽に共有することができます。
- ファッションに興味のある人同士での交流や情報共有を行うことができます。
- 日々の服選びの参考にできます。
# DEMO
- トップページ[![Image from Gyazo](https://i.gyazo.com/3e91b94b111fa639bad479200af32a5a.jpg)](https://gyazo.com/3e91b94b111fa639bad479200af32a5a)
[![Image from Gyazo](https://i.gyazo.com/55155a9ced045ec206c70061652b0db1.jpg)](https://gyazo.com/55155a9ced045ec206c70061652b0db1)
トップページではページ下部に投稿された記事の一覧が表示されるようになっています。(上記のgifでは何も投稿されていない状態です。)
- 新規アカウント作成![Image from Gyazo](https://i.gyazo.com/c5551925a1f59c0c7207e1864f6d8718.png)
新規アカウント作成画面になります。必要事項を入力することで新規アカウント登録ができます。必要事項が入力されていない、または正しく入力されていない場合はエラー文が表示されます。
- ログインページ![Image from Gyazo](https://i.gyazo.com/a771a4345e010768e026f633d9c51c59.png)
アカウントを既に登録してあるユーザーはログイン画面よりメールアドレスとパスワードを入力することでログインすることができます。情報が未入力および、正しく入力されていない場合はエラー文が表示されます。
- 新規投稿ページ![Image from Gyazo](https://i.gyazo.com/0fb06c5fa99d87fad10733b4dd8d6114.gif)
新規投稿画面になります。必須事項を入力で記事を投稿することができます。必要に応じて任意で入力することができる項目もあります。画像は一度に6枚まで登録することができます。また、選択した画像はプレビュー表示することができます(現段階では、まとめて選択した場合は一枚のみプレビューされます)。必須事項が未入力や情報が正しくない場合はエラー文が表示されます。
- 投稿詳細ページ[![Image from Gyazo](https://i.gyazo.com/d7dbfa4b212d9c49b7c2cf4160dc5466.jpg)](https://gyazo.com/d7dbfa4b212d9c49b7c2cf4160dc5466)
[![Image from Gyazo](https://i.gyazo.com/2b2acfdc49ad83129c48d4ebbf8f5701.png)](https://gyazo.com/2b2acfdc49ad83129c48d4ebbf8f5701)
投稿されている記事の詳細を表示することができます。投稿画面で入力されている情報を全て見ることができます。自身の投稿の場合は投稿詳細ページで"編集"、"削除"の表示がされ、投稿の編集および削除が可能です。
- ユーザー詳細ページ![Image from Gyazo](https://i.gyazo.com/42d66efac733481d0f4d7518a853a5f3.jpg)
ユーザーの詳細ページになり、表示されているユーザーの投稿を一覧で確認することができます。
# 実装予定の機能
- リアクション機能(いいね機能)
- コメント機能
- 検索機能

# ローカルでの操作方法
- 1.ユーザーの新規登録をします。
- 2.ヘッダーの"投稿する"から投稿画面に遷移し、必須事項および任意の情報を入力し、投稿することができます。
- 3.一覧ページより自身および他のユーザーの投稿を"詳細"のリンクから投稿の詳細情報を確認することがで来ます。
- 4.自身の投稿の場合は投稿詳細ページより編集および削除をすることができます。
- 5.一覧ページおよびヘッダー、投稿詳細ページのユーザー名のリンクより、ユーザー詳細ページに遷移することができ、そのユーザーの投稿を一覧として見ることができます。

# 使用技術(開発環境)
## バックエンド
Ruby, Ruby on Rails
## フロントエンド
HTML, CSS, JavaScript, Bootstrap
## データベース
MySQL, SeaquelPro
## アプリケーションサーバ(本番環境)
Heroku
## ソース管理
GitHub, GitHubDesktop
## テスト
Rspec
## エディタ
VSCode





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

