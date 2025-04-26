-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Oca 2024, 05:09:13
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sex`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `announcement`
--

CREATE TABLE `announcement` (
  `id` int(99) NOT NULL,
  `annContent` varchar(255) DEFAULT 'Tanımlanmamış',
  `annAdmin` varchar(255) NOT NULL,
  `annTime` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `announcement`
--

INSERT INTO `announcement` (`id`, `annContent`, `annAdmin`, `annTime`) VALUES
(1, 'Mariel', 'Lexper', '2023-12-24');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `login`
--

CREATE TABLE `login` (
  `id` int(99) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `userWelcomeMessage` varchar(255) NOT NULL,
  `userLoginTime` varchar(10) DEFAULT NULL,
  `userAvatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `msg`
--

CREATE TABLE `msg` (
  `id` int(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `userAvatar` int(11) NOT NULL,
  `msg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services`
--

CREATE TABLE `services` (
  `id` int(99) NOT NULL,
  `serviceContent` varchar(255) DEFAULT 'Tanımlanmamış',
  `serviceTime` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `services`
--

INSERT INTO `services` (`id`, `serviceContent`, `serviceTime`) VALUES
(1, 'Ad-Soyad Sorgu', '2023-01-30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(500) NOT NULL,
  `logo` varchar(500) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `title`, `url`, `logo`, `status`) VALUES
(1, 'Mariel Community', 'http://localhost/', '', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userİd` varchar(11) NOT NULL,
  `userRole` int(10) DEFAULT 0,
  `userLog` varchar(40) DEFAULT NULL,
  `userTime` date DEFAULT NULL,
  `userStartTime` date DEFAULT NULL,
  `userBrowser` varchar(255) DEFAULT NULL,
  `userOS` varchar(50) DEFAULT NULL,
  `userModerator` varchar(100) DEFAULT NULL,
  `userAuthKey` varchar(144) DEFAULT NULL,
  `userVerified` int(99) DEFAULT 0,
  `multiCheck` int(11) NOT NULL DEFAULT 0,
  `userName` varchar(255) DEFAULT NULL,
  `userAvatar` varchar(255) DEFAULT 'assets/images/mariel-user-logo.png',
  `İdDiscord` varchar(255) DEFAULT NULL,
  `Telegramİsim` varchar(255) NOT NULL,
  `cooldown` int(11) NOT NULL,
  `cooldownbypass` int(11) NOT NULL DEFAULT 30,
  `lastlogin` int(11) DEFAULT NULL,
  `f2Secretcode` varchar(255) DEFAULT NULL,
  `f2Status` int(11) DEFAULT 0,
  `f2Base64` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `userİd`, `userRole`, `userLog`, `userTime`, `userStartTime`, `userBrowser`, `userOS`, `userModerator`, `userAuthKey`, `userVerified`, `multiCheck`, `userName`, `userAvatar`, `İdDiscord`, `Telegramİsim`, `cooldown`, `cooldownbypass`, `lastlogin`, `f2Secretcode`, `f2Status`, `f2Base64`) VALUES
(1, '', 1, '::1', '2025-12-16', '2024-01-04', 'Google Chrome', 'Windows OS', 'lexper', 'sexper', 1, 0, 'lexper', 'assets/images/mariel-user-logo.png', NULL, '', 1704430307, 30, 1704432285, 'NN5UOZDHKU3UKWZEKQSDGVDUPF3DS2CF', 0, 'data:image/png;base64,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');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Tablo için AUTO_INCREMENT değeri `login`
--
ALTER TABLE `login`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `msg`
--
ALTER TABLE `msg`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `services`
--
ALTER TABLE `services`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
