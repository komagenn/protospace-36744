# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | NOT NULL    |
| password           | string | NOT NULL    |
| name               | string | NOT NULL    |
| profile            | text   | NOT NULL    |
| occupation         | text   | NOT NULL    |
| position           | text   | NOT NULL    |

## comments テーブル

| Column      | Type        | Options     |
| ------      | ------      | ----------- |
| text        | text        | NOT NULL    |
| user        | references  |             |
| prototype   | references  |             |


## prototypes テーブル

| Column      | Type          | Options     |
| ------      | ----------    | ----------- |
| title       | string        | NOT NULL    |
| catch_copy  | references    | NOT NULL    |
| concept     | text          | NOT NULL    |
| image       | ActiveStorage | NOT NULL    |
| user        | references    | NOT NULL    |

