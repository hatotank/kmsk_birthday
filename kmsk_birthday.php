<?php
/**
 * @fileOverview kmsk_birthday.php
 * あんガル誕生日をTwitterに投稿
 * 
 * @author hatotank.net
 */
error_reporting(E_ALL & ~E_NOTICE);

// タイムゾーン設定
date_default_timezone_set("Asia/Tokyo");

// インクルード
require_once("ca-bundle/src/CaBundle.php");
require_once(dirname(__FILE__)."/twitter_api_key.php");
require_once(dirname(__FILE__)."/twitteroauth/autoload.php");
use Abraham\TwitterOAuth\TwitterOAuth;

// DB接続
try{
  $db = new PDO('sqlite:db/kmsk_birthday.db');
  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(PDOException $e){
  die('Connection failed:'.$e->getMessage());
}

// 誕生日取得
try{
  // 日付を取得
  $birthday_mmdd = date('md',time()); // mmdd
  $birthday_mmdd_znone = date('n月j日',time()); // m月d日

  $sql  = "";
  $sql .= "select char_no,char_kanji,char_kana,birthday,icon_file";
  $sql .= "  from eg_char";
  $sql .= " where birthday = '$birthday_mmdd'";
  $sql .= " order by char_no";
  $stmt = $db->query($sql);
  $result = $stmt->fetchall(PDO::FETCH_ASSOC);
}catch(PDOException $e){
  die("PDOException:".$e->getMessage());
}

// 該当がある場合Twitterへ投稿
if(count($result) > 0){

  // log4php
  require_once("log4php/Logger.php");
  Logger::configure('config.xml');
  $log4 = Logger::getLogger('myLogger');

  // TwitterOAuth
  $tw = new TwitterOAuth($consumer_key,$consumer_secret,$access_token,$access_token_secret);
  $media = array();

  // 投稿内容作成
  $tw_string = "【あんガル誕生日】".$birthday_mmdd_znone."は";
  $idx = 0;
  foreach($result as $v){
    if($idx > 0){
      $tw_string = $tw_string."、".$v['char_kanji'];
    }else{
      $tw_string = $tw_string.$v['char_kanji'];
    }
    $media[] = $tw->upload('media/upload',['media'=>"img/".$v['icon_file'].".png"]);
    $idx++;
  }
  $tw_string = $tw_string . "の誕生日です。";

  // メディアパラメータ作成
  $tw_media_ids = array();
  $idx = 0;
  foreach($media as $v){
    $tw_media_ids[] = $v->media_id_string;
  }

  // パラメータに投稿内容とメディア指定
  $parameters = [
    'text' => $tw_string,
    'media' => [
      'media_ids' => $tw_media_ids
    ]
  ];

  // API v2指定
  $tw->setApiVersion("2");
  // Twitter投稿
  $statues = $tw->post('tweets',$parameters,true);
  // エラーチェック
  if($tw->getLastHttpCode() == 201){
    // Tweet posted succesfully
    $log4->debug("Tweet posted succesfully");
    $log4->debug($tw_string);
  }else{
    // Handle error case
    $log4->debug("Handle error case");
    $log4->debug($tw_string);
  }
}
$db = null;
?>