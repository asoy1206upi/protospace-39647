# テーブル設計

## users テーブル

| Column             | Type   | Constraints      |
| ------------------ | ------ | -----------      |
| email              | string | NOT NULL, UNIQUE |
| encrypted_password | string | NOT NULL         |
| name               | string | NOT NULL         |
| profile            | text   | NOT NULL         |
| occupation         | text   | NOT NULL         |
| position           | text   | NOT NULL         |

### Association
- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages

## comments テーブル

| Column     | Type       | Constraints |
| ------     | ------     | ----------- |
| content    | text       | NOT NULL 　　| 
| prototypes | references | NOT NULL 　　|
| user       | references | NOT NULL　　 |

### Association

- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages

## prototypes テーブル

| Column     | Type       | Constraints |
| ------     | ---------- | ----------- |
| title      | string     | NOT NULL　　 |
| catch_copy | text       | NOT NULL　　 |
| concept    | text       | NOT NULL　　 |
| user       | references | NOT NULL　　 |

### Association

- belongs_to :room
- belongs_to :user