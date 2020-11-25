# README

## アプリケーション名
　　　**CHECKER（冷蔵庫管理アプリ）**

### アプリケーション内で使用している技術の一覧・開発環境
 Ruby / Ruby on Rails / MySQL /HTMLCSSJavaScript / GitHub / AWS（EC2）

```
バージョン
　ruby '2.6.5'
 'rails', '~> 6.0.3', '>= 6.0.3.4'
 'mysql2', '>= 0.4.4'
```

## アプリケーションの開発背景
　今この瞬間、世界中のどこかで食べられる食材が大量に捨てられています。
　私もアルバイトの経験からその現場を数多く見てきました。

　今では食品ロスとして社会問題に発展し、飲食店の食品ロスを減らすサービスが世の中に誕生しています。
　しかしながら、日本国内の食品ロスは年間約600万トンとされている内、その半分は家庭内からの食品ロスとなっています。
　


　「買っても使うか分からないけど、安くなっているから」という理由で食材を購入していませんか？
　
　そこで家庭内の食品ロスを減らす方に着目し、冷蔵庫の状態を外出中でも確認できるアプリケーションを作成しました。


```
   ペルソナ像

　年齢：50代
  性別：女性
  血液型：O型
  職業：パート
　住まい：福岡県
　性格：大雑把。家事の中で掃除だけが苦手
　家族構成：旦那と長女の三人暮らし
　趣味：料理本を読むこと/ポイント活動
　ストレス発散方法：爆買い・寝ること
　悩み：セール品に弱い所
　今後のライフスタイル：娘が大学生になったので自分の好きなことをして生きる

　日頃の買い物は、仕事帰りに行く。
　チラシを見て事前に買う物を決めていることは少なく、その場で買う物を決めることが多い。
```

　　
### 問題定義
　上記の背景から、問題の原因を2点考えました。
　
　原因1　食品ロスの現状を知らない。あまり関心がない。
　原因2　冷蔵庫の状態を知らないので、ついつい余計なものを買ってしまう。

### 課題解決に向けて
　上記の問題から、解決策を2点考えました。

　解決策1　誰でも見られる部分に、食品ロスの現状を知ってもらえるページを作成する。（コンセプトページ）
　解決策2　実際の冷蔵庫の中を可視化して、無駄買いを抑えてもらう。
　

## アプリケーションの機能一覧
機能1　ユーザー登録
機能2　食材の追加・編集・削除機能
機能3　食材に対するコメント機能
機能4　ユーザー検索機能
　
### 要件定義

上記の原因を解決するために搭載した機能の役割。

|     　　課題　　　　　|                      手段　　　　　　　       |                        搭載機能 |
|---------------------|-------------------------------------------|--------------------------------|
|食品ロスの現状を知らない| コンセプトページの作成。  　|トップページに「コンセプト」のページを配置。|
|      　　   ↓||
|　冷蔵庫の状態を知らない　|購入した食材を追加する。　|　食材の追加機能（ログイン必須）　|
|      　　   ｜　　　　　|追加した商品を編集・削除できる。|　食材の編集・削除機能（ログイン必須）|
|      　　   ｜|食材ごとにメモ・コメントが可能。　|コメント機能（ログイン必須）|
|      　　   ↓|　　　　　　　　　　　　　　　　　                       |                               |
|　登録後の利用法|ユーザー名で検索を行えば食材が確認可能。| 検索機能（ログイン不要）|

　
##　実装機能
　ペルソナ像の年齢層高めに設定していることを踏まえて、特徴を記述しています。
　（2020年11月末の実装）

○トップページ
 特徴：情報量は少なめにして、選択肢を絞りました。
![トップページ](https://i.gyazo.com/cd683c4c1963dada670a76ef2cf83cd3.jpg)


○食材の追加
　特徴：タイピングは慣れていないことを想定して、プルダウンを使用しました。
![食材の追加](https://i.gyazo.com/9ed804c1ac66f7b5c28eb15475e3a1bf.png)

○食材の削除
　特徴：複数の食材登録することを見越し、カーソルが乗っているものにアニメーションを加えました。
　　　　「間違えて、処分（削除）を押してしまった」ということを避けるためにアラームを設けました。
![食材の削除](https://i.gyazo.com/abc57cdaf270a3731c5262ea6ec39021.png)

○検索機能
　特徴：自宅以外でパスワードを入力したくないユーザー・パスワードを忘れがちなユーザー向けに
　　　　一度ユーザー登録さえして頂ければ、食材の登録状況がログイン無しに行えます。

![検索機能](https://i.gyazo.com/fbfcc112d9148b3ac4ae2b724376bbb8.png)





####　今後の追加機能

　実際に使ってみて、追加機能・修正を決めていきます。

現時点では、検討している修正。
　修正1　お問い合わせフォームの作成
　修正2　レスポンシブデザインをより使いやすく。（ハンバーガーメニュー・ボトムボタン）



___

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