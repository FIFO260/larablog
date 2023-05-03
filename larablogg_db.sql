-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: St 03.Máj 2023, 11:00
-- Verzia serveru: 10.4.27-MariaDB
-- Verzia PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `larablogg_db`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_19_143730_create_posts_table', 1),
(6, '2022_09_19_145733_create_tags_table', 1),
(7, '2022_09_19_145859_create_post_tag_table', 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` longtext NOT NULL,
  `description` longtext NOT NULL,
  `min_to_read` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `excerpt`, `description`, `min_to_read`, `created_at`, `updated_at`) VALUES
(3, 1, 'Vesmír', 'Vesmír je veľmi tajomný, sme však sami?', 'Vesmír, ktorý sa nám javí ako nekonečný priestor plný hviezd, planét, galaxií a iných tajomných útvarov, fascinuje ľudí už tisíce rokov. Pre niektorých z nás je to len oblasť, ktorú obdivujeme z diaľky, pre iných je to však predmet bádania a skúmania.\r\n\r\nVesmír predstavuje obrovský priestor, ktorý sa neustále mení a vyvíja. Preto vedecké bádanie o vesmíre je veľmi dôležité a prebieha už viac ako sto rokov. Výsledky týchto výskumov nám poskytujú zaujímavé poznatky o vzniku a vývoji vesmíru, o hmotnosti a rozložení hviezd, o čiernych dierach a o mnohých iných javoch.\r\n\r\nJedným z najväčších objavov v bádaní o vesmíre bol Big Bang, ktorý sa udial pred viac ako 13,7 miliardami rokov. Podľa tohto modelu vesmír vznikol ako veľmi malá, ale extrémne hustá a horúca bodka, ktorá sa v priebehu času rozšírila a vytvorila vesmír, aký poznáme dnes.', 10, '2023-05-03 08:43:20', NULL),
(4, 1, 'Učiteľstvo', 'V tomto článku sa zameriame na slovenské školstvo.', 'Výzva, ktorú predstavuje výučba, je jednou z najdôležitejších úloh, ktoré môže človek prekonať. Učitelia sú kľúčovými osobami v našich životoch a hrajú kľúčovú rolu v budúcnosti spoločnosti. V tomto článku sa pozrieme na niektoré dôležité aspekty učiteľstva a ako učitelia ovplyvňujú svet okolo nás.\r\n\r\nVzdelávanie je rozhodujúcim faktorom v našom živote a je to práve učiteľ, kto zohráva kľúčovú úlohu pri tvorbe kvalitného vzdelania. Učiteľ musí byť schopný získať a udržať pozornosť študentov, motivovať ich a podporovať ich záujmy a ciele. To zahŕňa aj schopnosť efektívne komunikovať s rôznymi typmi osobností a prispôsobiť sa rozdielnym vzdelávacím štýlom.', 1, '2023-05-03 08:47:21', NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'filipko', 'dtzfutio', NULL, 'fugghgjghd', NULL, NULL, NULL),
(2, 'Delbert Boyle', 'timmothy80@example.org', '2023-05-03 06:59:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C1eDPZeIRf', '2023-05-03 06:59:43', '2023-05-03 06:59:43'),
(3, 'Ms. Sarina Wilderman DVM', 'xlabadie@example.com', '2023-05-03 06:59:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'piBGiNLgjw', '2023-05-03 06:59:43', '2023-05-03 06:59:43'),
(4, 'Tanner Schumm', 'ghowell@example.net', '2023-05-03 06:59:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oRdT4dcleA', '2023-05-03 06:59:43', '2023-05-03 06:59:43'),
(5, 'Grayson Leuschke', 'fahey.deven@example.net', '2023-05-03 06:59:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FK8UJfpzYD', '2023-05-03 06:59:43', '2023-05-03 06:59:43'),
(6, 'Prof. Enola Baumbach PhD', 'cora03@example.com', '2023-05-03 06:59:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6Dm8qDfa6x', '2023-05-03 06:59:43', '2023-05-03 06:59:43'),
(7, 'Hermann Senger', 'iva18@example.com', '2023-05-03 06:59:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OB9gFMk3o6', '2023-05-03 06:59:43', '2023-05-03 06:59:43'),
(8, 'Lea Fahey', 'cquigley@example.com', '2023-05-03 06:59:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JyCbS5NtaR', '2023-05-03 06:59:43', '2023-05-03 06:59:43'),
(9, 'Dr. Rafaela Trantow II', 'stehr.cruz@example.net', '2023-05-03 06:59:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm6drvpxUa6', '2023-05-03 06:59:43', '2023-05-03 06:59:43'),
(10, 'Mrs. Winona Bradtke', 'emanuel50@example.net', '2023-05-03 06:59:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4xiY86fGGn', '2023-05-03 06:59:43', '2023-05-03 06:59:43'),
(11, 'Prof. Samanta Paucek I', 'ritchie.assunta@example.net', '2023-05-03 06:59:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oVKo0HBWNy', '2023-05-03 06:59:43', '2023-05-03 06:59:43');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexy pre tabuľku `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexy pre tabuľku `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexy pre tabuľku `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexy pre tabuľku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pre tabuľku `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pre tabuľku `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Obmedzenie pre exportované tabuľky
--

--
-- Obmedzenie pre tabuľku `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
