# Kmsk_birthday
あんガル誕生日botの実装

## 概要
定期実行(cron)にて日付が一致した場合、あんさんぶるガールズ！！の生徒の誕生日をツイッターに投稿します。  
twitter_api_key.phpとconfig.xmlの中身は必ず書き換えてください。  

## イメージ
- [稼働ツイッター](https://twitter.com/kmsk_book_club)

## フォルダ・ファイル構成
```
├ autoload.php … TwitterOAuth  
├ config.xml … log4phpメール送信定義  
├ kmsk_birthday.php … 本体   
├ LICENSE … ライセンス  
├ README.md … 現在のファイル  
├ twitter_api_key.php … APIキー定義  
│  
├ db … DBファイル  
│ ├ create_db.sh … kmsk_birthday.dbを作成(sqlite3)  
│ └ kmsk_birthday.sql … テーブルダンプ  
│  
├ img … アイコンファイル格納(下記参照)  
│  
├ log4php … log4php格納  
│    
└ twitteroauth … TwitterOAuth格納  
```

## テーブル仕様
**eg_char**

|列名|型|内容|
|:---|:---|:---|
|char_no|integer|(PK)キャラ番号|
|char_kanji|text|名前|
|char_kana|text|よみ|
|birthday|text|誕生日|
|icon_file|text|アイコンファイル|

## その他
使用しているアイコンはあんさんぶるガールズ！！の[公式サイト](http://kimisaki.happyelements.co.jp/)からダウンロードが可能です。

## 作者
[hatotank](https://github.com/hatotank)

## ライセンス
MIT

以下のパッケージを使用しています。
- [TwitterOAuth](https://twitteroauth.com/)
- [log4php](https://logging.apache.org/log4php/)