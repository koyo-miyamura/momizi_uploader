# Koyo intern もみじあっぷろ〜だ〜

## 構成
* ログインページ(login)
* 投稿一覧ページ(post_index)
    * 画像と自分のコメント投稿機能
    * 投稿一覧(最新５件のコメント)
* 投稿詳細ページ(post_detail)
    * 投稿に対してコメント機能
    * すべてのコメントの表示


## テーブル定義

#### Users

|カラム名|属性|NN|UQ|Index|
|:--:|:--:|:--:|:--:|:--:|
|id|integer|T|T|F|
|name|string|T|F|F|
|email|string|T|T|F|
|password|string|T|F|F|
|password_conf|string|T|F|F|
|created_at|datetime|T|F|F|
|deleted_at|datetime|F|F|F|


#### Contents

|カラム名|属性|NN|UQ|Index|
|:--:|:--:|:--:|:--:|:--:|
|id|int|T|T|F|
|user_id|integer|T|F|T|
|image_path|string|T|T|F|
|text|text|T|F|F|
|created_at|datetime|T|F|F|
|deleted_at|datetime|F|F|F|


#### Comments

|カラム名|属性|NN|UQ|Index|
|:--:|:--:|:--:|:--:|:--:|
|id|int|T|T|F|
|content_id|integer|T|F|T|
|user_id|integer|T|F|T|
|text|text|T|F|F|
|created_at|datetime|T|F|F|
|deleted_at|datetime|F|F|F|
