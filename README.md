# README

## アプリ名

Agri help


## 概要



## 使い方



## 制作背景

 農業をしている友人に、"農家同士が手伝いあえるようなアプリケーションが欲しい"と相談されたことがきっかけです。
まだまだレガシーな環境が続いている業界に新しい風を吹かせたいと思い作成を開始しました。
 それに加え近年では、レンタル農園などと呼ばれるように、趣味で自家菜園を行なっている人も増加しています。
そのような人たちにも本アプリを通して、不在時の対応や初めて行う作業の手伝いなどの際に活用してもらいたいです。


## 工夫したポイント

 ユーザー検索にGoogleマップを導入したことです。
実際に作業を手伝ってもらうことが最終目的なので、近くのユーザーを見つけないといけません。
そこで、GoogleMapsAPIを用いてユーザー登録時の住所から緯度・経度を取得し、
自分の近くで登録しているユーザーを見つけ、連絡をすることができます。


## 今後の実装

 ユーザーの繁忙期や専門分野がわかるように、
カレンダーに栽培中の作物や休耕期などを書き込めるような機能を実装したいです。
（現状は"自己紹介文"という形で文章による表現になっています。）


## 開発環境

- Ruby
  - 2.5.1
- Rails
  - 5.2.4.2
- Javascript
- HTML
- SCSS
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