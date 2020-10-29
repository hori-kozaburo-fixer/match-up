# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

#usersテーブル

| Column             |  Type   | Options     |
|--------------------|---------|-------------|
| nickname           | string  | null: false |
| email              | string  | null: false |
| team_id            | integer | null: false |
| encrypted_password | string  | null: false |
| full_name          | string  | null: false |
| full_name_kana     | string  | null: false |
| birth_day          | date    | null: false |
| prefecture_id      | integer | null: false |


###Association
- has_many :tweets
- has_many :tweet_comments
- belongs_to_active_hash :team
- has_many :rooms, through:user_rooms
- has_many :user_rooms
- has_many :likes

- has_many :user_rooms

#Reactionテーブル

| Column             |  Type   | Options     |
|--------------------|---------|-------------|
| from_user_id     | integer  | null: false |
| to_user_id         | integer    | null: false |
| status            | integer | null: false |

#roomテーブル

| Column             |  Type   | Options     |
|--------------------|---------|-------------|
| user_id     | integer  | null: false |
| to_user_id         | integer    | null: false |
| status            | integer | null: false |

#user_roomテーブル

| Column             |  Type   | Options     |
|--------------------|---------|-------------|
| user_id     | integer  | null: false |
| to_user_id         | integer    | null: false |
| status            | integer | null: false |











#tweetsテーブル

| Column           |  Type      | Options                        |
|------------------|------------|--------------------------------|
| name             | string     | null: false                    |
| text             | text       | null: false                    |
| team_id          | integer    | null: false                    |
| user             | references | null: false, foreign_key: true |

###Association
- belongs_to :user
- has_many :tweet_comments
- belongs_to_active_hash :team

#tweet_comments
| Column           |  Type      | Options                        |
|------------------|------------|--------------------------------|
| text             | text       | null: false                    |
| user             | references | null: false, foreign_key: true |
| tweet            | references | null: false, foreign_key: true |

###Association
- belongs_to :user
- belongs_to :tweet
