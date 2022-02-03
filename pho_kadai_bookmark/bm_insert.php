<?php
$book_title = $_POST['book_title'];
$book_url = $_POST['book_url'];
$memo = $_POST['memo'];

// DB接続
try {
    $pdo = new PDO('mysql:dbname=unit4_db;charset=utf8;host=localhost','root','root');
} catch (PDOException $e) {
    exit('DBConnectError'.$e->getMessage());
}
// データ登録URL
// 1. SQL文を用意
$stmt = $pdo->prepare("INSERT INTO book_favorite(id, book_title, book_url, memo, datetime)VALUES(NULL, :book_title, :book_url, :memo, sysdate())");

// //  2. バインド変数を用意
$stmt->bindValue(':book_title', $book_title, PDO::PARAM_STR);
$stmt->bindValue(':book_url', $book_url, PDO::PARAM_STR); 
$stmt->bindValue(':memo', $memo, PDO::PARAM_STR);

// //  3. 実行
$status = $stmt->execute();

// //４．データ登録処理後
if($status==false){
    $error = $stmt->errorInfo();
    exit('ErrorMessage:'.$error[2]);
} else {
    header("Location: index.php");
    exit;
}
?>