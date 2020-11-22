# README

## アプリケーションの概要
 目的：外出中でも冷蔵庫の状態が可視化できる。
      家庭内の食材の無駄買いを抑える。

## アプリケーションの機能一覧
 ユーザー登録・冷蔵庫内の食材の登録、編集、削除
 食材に対するコメント、ユーザー検索

## アプリケーション内で使用している技術の一覧
 Ruby / Ruby on Rails / MySQL /JavaScript / GitHub / AWS / 


# テーブル設計
## users テーブル

| Column                | Type     | Options     |
| --------------------- | -------- | ----------- |
| nickname              | string   | null: false |
| email                 | string   | null: false |
| encrypted_password    | string   | null: false |

### Association

- has_many :items
- has_many :comments


## items テーブル

| Column                 | Type        | Options                        |
| ---------------------- | ----------- | ------------------------------ |
| buy_day                | date        | null: false                    |
| category_id            | integer     | null: false                    |
| food_id                | integer     | null: false                    |
| size_id                | integer     | null: false                    |
| sell_by                | date        | null: false                    |
| memo                   | text        |                                |
| user                   | references  | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many   :comments


## comments テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| user            | references | null: false, foreign_key: true |
| item            | references | null: false, foreign_key: true |
| text            | text       | null: false                    |

### Association

- belongs_to :user
- belongs_to :item

