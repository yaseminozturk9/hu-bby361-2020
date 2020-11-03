-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 03 Kas 2020, 19:51:35
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `yaseminozturk_01`
--
CREATE DATABASE IF NOT EXISTS `yaseminozturk_01` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `yaseminozturk_01`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitabın konusu`
--

CREATE TABLE `kitabın konusu` (
  `kitabınKonuNO` smallint(6) NOT NULL COMMENT 'Kitabın konusu tablosunun anahtar alanı',
  `kitapKonuAdi` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın konusu bilgisi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Kitabın konusu';

--
-- Tablo döküm verisi `kitabın konusu`
--

INSERT INTO `kitabın konusu` (`kitabınKonuNO`, `kitapKonuAdi`) VALUES
(1, 'Edebiyat'),
(2, 'Siyaset-Politika'),
(3, 'Edebiyat'),
(4, 'Edebiyat-Aşk'),
(5, 'Edebiyat'),
(6, 'Polisiye'),
(7, 'Felsefe-Düşünce'),
(8, 'Edebiyat-Aşk'),
(9, 'Edebiyat'),
(10, 'Edebiyat');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitabın türü`
--

CREATE TABLE `kitabın türü` (
  `KitapTurNo` smallint(6) NOT NULL COMMENT 'Kitap türü tablosunun anahtar alanı',
  `KitapTurAdi` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın türü bilgisi(şiir, hikaye, roman vb.)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Kitap türü';

--
-- Tablo döküm verisi `kitabın türü`
--

INSERT INTO `kitabın türü` (`KitapTurNo`, `KitapTurAdi`) VALUES
(1, 'Roman'),
(2, 'Roman'),
(3, 'Roman'),
(4, 'Roman'),
(5, 'Şiir'),
(6, 'Roman'),
(7, 'Roman'),
(8, 'Roman'),
(9, 'Roman'),
(10, 'Roman');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap`
--

CREATE TABLE `kitap` (
  `kitapID` smallint(6) NOT NULL COMMENT 'Kitap tablosunun anahtar alanı',
  `ISBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın standart numarası',
  `kitapAdi` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın tam adı',
  `yazarAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Katabın yazarının tam adı',
  `basimYili` year(4) NOT NULL COMMENT 'Kitabın basıldığı yıl',
  `yayıneviAdi` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın yayınevi adı',
  `yayinDili` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın yazıldığı dil',
  `sayfaSayisi` int(11) NOT NULL COMMENT 'Kitabın toplam sayfa sayısı',
  `kopyaSayisi` int(11) NOT NULL COMMENT 'Kitabın kütüphanede kaç adet olduğu '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`kitapID`, `ISBN`, `kitapAdi`, `yazarAdi`, `basimYili`, `yayıneviAdi`, `yayinDili`, `sayfaSayisi`, `kopyaSayisi`) VALUES
(11, '9786054927821', 'Kirpinin Zarafeti', 'Muriel BARBERY', 2014, 'Kırmızı Kedi Yayınevi', 'Türkçe', 303, 3),
(12, '9789750718533', 'Bin Dokuz Yüz Seksen Dört', 'George ORWEL', 2020, 'Can Sanat Yayınları Yapım ve Dağıtım Ticaret ve Sanayi A.Ş.', 'Türkçe', 350, 5),
(13, '9789751414502', 'Tutku Otobüsü', 'John STEINBECK', 2013, 'Remzi Kitabevi', 'Türkçe', 271, 1),
(14, '9789750516832', 'Fakat Müzeyyen Bu Derin Bir Tutku', 'İlhami ALGÖR', 2015, 'İletişim Yayınları', 'Türkçe', 59, 2),
(15, '9789750813887', 'Sakın Şaşırma', 'Orhan VELİ', 2008, 'Yapı Kredi Yayınları', 'Türkçe', 111, 1),
(16, '9789752897458', 'İstanbul Hatırası', 'Ahmet ÜMİT', 2010, 'Everest Yayınları', 'Türkçe', 565, 3),
(17, '9786053607021', 'Sokrates\'in Savunması', 'Platon', 2012, 'Doğan Kitap', 'Türkçe', 201, 4),
(18, '9789754587029', 'Gurur ve Önyargı', 'Jane AUSTEN', 2006, 'Türkiye İş Bankası Kültür Yayınları', 'Türkçe', 423, 1),
(19, '9786059127110', 'Dava', 'Franz KAFKA', 2016, 'Panama Yayıncılık', 'Türkçe', 271, 2),
(20, '9786052050453', 'Piraye\'de Nazım Olmak', 'Nazan ARISOY', 2019, 'Dokuz Yayınları', 'Türkçe', 208, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayınevi`
--

CREATE TABLE `yayınevi` (
  `yayineviNo` smallint(6) NOT NULL COMMENT 'Yayınevi tablosunun anahtar alanı',
  `yayineviAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın yayınevinin adı',
  `yayineviAdresi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yayınevinin web sitesi veya konumu bilgisi',
  `yayineviEposta` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yayınevinin e-posta adresi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yayınevi`
--

INSERT INTO `yayınevi` (`yayineviNo`, `yayineviAdi`, `yayineviAdresi`, `yayineviEposta`) VALUES
(1, 'Kırmızı Kedi Yayınevi', 'https://www.kirmizikedi.com/', 'info@kirmizikedi.com'),
(2, 'Can Sanat Yayınları Yapım ve Dağıtım Ticaret ve Sanayi A.Ş.', 'https://canyayinlari.com/', 'yayinevi@canyayinlari.com'),
(3, 'Remzi Kitabevi', 'http://www.remzi.com.tr/anasayfa', 'post@remzi.com.tr'),
(4, 'İletişim Yayınları', 'https://iletisim.com.tr/', 'iletisim@iletisim.com.tr'),
(5, 'Yapı Kredi Yayınları', 'https://www.yapikrediyayinlari.com.tr/', 'iletisim@ykykultur.com.tr'),
(6, 'Everest Yayınları', 'https://www.everestyayinlari.com/', 'info@everestyayinlari.com'),
(7, 'Doğan Kitap', 'https://www.dogankitap.com.tr/anasayfa', 'iletisim@dogankitap.com.tr'),
(8, 'Türkiye İş Bankası Kültür Yayınları', 'https://www.iskultur.com.tr/', '-----'),
(9, 'Panama Yayıncılık', 'https://www.panamayayincilik.com/', 'info@panamayayincilik.com'),
(10, 'Dokuz Yayınları', 'https://dokuzyayinlari.com/', 'bilgi@dokuzyayinlari.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE `yazar` (
  `yazarID` smallint(6) NOT NULL COMMENT 'Yazar tablosunun anahtar alanı',
  `yazarAdi` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kitabın yazarının adı',
  `yazarSoyadi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Kitabın yazarının soyadı'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yazar`
--

INSERT INTO `yazar` (`yazarID`, `yazarAdi`, `yazarSoyadi`) VALUES
(1, 'Muriel', 'BARBERY'),
(2, 'George', 'ORWEL'),
(3, 'John', 'STEINBECK'),
(4, 'İlhami ', 'ALGÖR'),
(5, 'Orhan ', 'VELİ'),
(6, 'Ahmet ', 'ÜMİT'),
(7, 'Platon', '-'),
(8, 'Jane ', 'AUSTEN'),
(9, 'Franz ', 'KAFKA'),
(10, 'Nazan ', 'ARISOY');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kitabın konusu`
--
ALTER TABLE `kitabın konusu`
  ADD PRIMARY KEY (`kitabınKonuNO`);

--
-- Tablo için indeksler `kitabın türü`
--
ALTER TABLE `kitabın türü`
  ADD PRIMARY KEY (`KitapTurNo`);

--
-- Tablo için indeksler `kitap`
--
ALTER TABLE `kitap`
  ADD PRIMARY KEY (`kitapID`),
  ADD UNIQUE KEY `ISBN` (`ISBN`),
  ADD UNIQUE KEY `yayıneviAdi` (`yayıneviAdi`);

--
-- Tablo için indeksler `yayınevi`
--
ALTER TABLE `yayınevi`
  ADD PRIMARY KEY (`yayineviNo`),
  ADD UNIQUE KEY `yayineviAdi` (`yayineviAdi`),
  ADD UNIQUE KEY `yayineviAdresi` (`yayineviAdresi`),
  ADD KEY `yayineviEposta` (`yayineviEposta`) USING BTREE;

--
-- Tablo için indeksler `yazar`
--
ALTER TABLE `yazar`
  ADD PRIMARY KEY (`yazarID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kitabın konusu`
--
ALTER TABLE `kitabın konusu`
  MODIFY `kitabınKonuNO` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Kitabın konusu tablosunun anahtar alanı', AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `kitabın türü`
--
ALTER TABLE `kitabın türü`
  MODIFY `KitapTurNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Kitap türü tablosunun anahtar alanı', AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `kitap`
--
ALTER TABLE `kitap`
  MODIFY `kitapID` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Kitap tablosunun anahtar alanı', AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `yayınevi`
--
ALTER TABLE `yayınevi`
  MODIFY `yayineviNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yayınevi tablosunun anahtar alanı', AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `yazar`
--
ALTER TABLE `yazar`
  MODIFY `yazarID` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yazar tablosunun anahtar alanı', AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
