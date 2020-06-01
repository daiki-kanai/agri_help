# README

# Contents

## Team

fleamarket_sample_74f
Team develogging
Menber：４ persons

## App

Flea Market app

## Delivery

3 weeks

## Tecknology

- Ruby
  - 2.5.1p57 (2018-03-29 revision 63029)
- Rails
- Javascript
- HTML/HAML
- CSS/SCSS
- Git
  - 2.26.0
- MySQL
- AWS


# DB 設計

## users Table

| Column       | Type   | Options                   |
| ------------ | ------ | ------------------------- |
| username     | string | null: false               |
| email        | string | null: false, unique: true |
| address      | string | null: false               |
| userimage    | string |                           |
| latitude     | float  |                           |
| longitude    | float  |                           |
| introduction | text   |                           |
| password     | string | null: false               |

### Association

- has_many :messages
- has_many :entries


## rooms Table

| Column | Type | Options |
| ------ | ---- | ------- |
|        |      |         |

### Association

- has_many :messages
- has_many :entries


## entries Table

| Column  | Type    | Options           |
| ------- | ------- | ----------------- |
| user_id | integer | foreign_key: true |
| room_id | integer | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :room


## messages Table

| Column  | Type    | Options           |
| ------- | ------- | ----------------- |
| user_id | integer | foreign_key: true |
| content | string  | null: false       |
| image   | string  |                   |

### Association

- belongs_to :user
- belongs_to :room


---