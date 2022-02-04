-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2022 年 2 月 04 日 09:54
-- サーバのバージョン： 5.7.34
-- PHP のバージョン: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `unit4_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `book_favorite`
--

CREATE TABLE `book_favorite` (
  `id` int(12) NOT NULL,
  `book_title` varchar(64) NOT NULL,
  `book_url` text,
  `memo` text,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='読みたい本の登録DB';

--
-- テーブルのデータのダンプ `book_favorite`
--

INSERT INTO `book_favorite` (`id`, `book_title`, `book_url`, `memo`, `datetime`) VALUES
(5, '鬼滅の刃', 'https://www.amazon.co.jp/%E9%AC%BC%E6%BB%85%E3%81%AE%E5%88%83-1-%E3%82%B8%E3%83%A3%E3%83%B3%E3%83%97%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF%E3%82%B9DIGITAL-%E5%90%BE%E5%B3%A0%E5%91%BC%E4%B8%96%E6%99%B4-ebook/dp/B01EJ7AK5O/ref=sr_1_4?keywords=%E9%AC%BC%E6%BB%85%E3%81%AE%E5%88%83&qid=1643929668&s=books&sprefix=%E9%AC%BC%E6%BB%85%E3%81%AE%2Cstripbooks%2C271&sr=1-4', 'テスト', '2022-02-04 08:09:21');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `book_favorite`
--
ALTER TABLE `book_favorite`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `book_favorite`
--
ALTER TABLE `book_favorite`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
