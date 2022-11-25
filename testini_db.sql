-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 20 mai 2022 à 23:15
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `testini_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_19_113733_create_surveys_table', 1),
(6, '2021_12_19_114138_create_survey_questions_table', 1),
(7, '2021_12_19_114318_create_survey_answers_table', 1),
(8, '2021_12_19_114337_create_survey_question_answers_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(7, 'App\\Models\\User', 1, 'main', 'b9497d7b7e8afa18ac9e8f5ce954cbb966d1a6b368d9ed8f0e3f12a59c302f3c', '[\"*\"]', '2022-03-02 13:38:14', '2022-03-02 13:17:44', '2022-03-02 13:38:14'),
(14, 'App\\Models\\User', 1, 'main', 'f54ecb75af61179f2b65285622a778b44b76389aa0895017422541eab74ff5e0', '[\"*\"]', '2022-03-08 19:51:27', '2022-03-08 19:47:22', '2022-03-08 19:51:27'),
(17, 'App\\Models\\User', 2, 'main', '3da3130be7c0b22141ca801798313973e03bc54f61c07e2b7c62450ee77a730b', '[\"*\"]', '2022-03-22 15:13:57', '2022-03-22 14:58:00', '2022-03-22 15:13:57'),
(18, 'App\\Models\\User', 2, 'main', 'b20b225e57286a164fe1c26220069b9cfd181e706712aefeaa70e9f6e19fa2cf', '[\"*\"]', '2022-03-22 15:15:08', '2022-03-22 15:15:07', '2022-03-22 15:15:08'),
(23, 'App\\Models\\User', 1, 'main', '4c0412401ac3fc2f805358581cd8262969618720e39e699715e4d3db422f8dac', '[\"*\"]', '2022-04-03 00:05:15', '2022-04-03 00:03:07', '2022-04-03 00:05:15'),
(25, 'App\\Models\\User', 1, 'main', 'bbc2c7d739a26b9839a6a65ff7790c1fa710bae18a2898a0ae5956745def6dd6', '[\"*\"]', '2022-04-14 07:14:45', '2022-04-13 20:32:06', '2022-04-14 07:14:45'),
(31, 'App\\Models\\User', 4, 'main', '9806f8c9e02d59505eab1047ac343c8facc05793c11ee8757076c3acc9a0390e', '[\"*\"]', '2022-05-07 17:21:27', '2022-05-07 17:20:11', '2022-05-07 17:21:27');

-- --------------------------------------------------------

--
-- Structure de la table `surveys`
--

CREATE TABLE `surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expire_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `surveys`
--

INSERT INTO `surveys` (`id`, `user_id`, `image`, `title`, `slug`, `status`, `description`, `created_at`, `updated_at`, `expire_date`) VALUES
(2, 1, 'images/sTyZQAUKJCnbwX0K.png', 'first', 'first', 1, 'idk', '2022-03-02 13:22:24', '2022-03-02 13:22:24', '2022-03-10 23:00:00'),
(3, 1, 'images/BZNVs4oyTSKvqr7d.png', 'first', 'first-1', 0, 'idk', '2022-03-02 13:22:24', '2022-03-08 17:58:19', '2022-03-10 23:00:00'),
(4, 1, 'images/wav6SKdB14AWaKpM.png', 'test2', 'test2', 1, 'adjhakj', '2022-03-08 19:49:32', '2022-03-08 19:49:32', '2022-03-11 23:00:00'),
(6, 1, 'images/S5XFxFU8eWR9Soic.png', 'test2', 'test2-2', 0, 'adjhakj', '2022-03-08 19:49:57', '2022-03-08 19:49:57', '2022-03-11 23:00:00'),
(7, 1, 'images/6z9oocfu5ljhCLe1.png', 'test2', 'test2-3', 0, 'adjhakj', '2022-03-08 19:50:00', '2022-03-08 19:50:00', '2022-03-11 23:00:00'),
(8, 1, 'images/Wje5xbz4iacRLNkM.png', 'test2', 'test2-4', 0, 'adjhakj', '2022-03-08 19:50:01', '2022-03-08 19:50:01', '2022-03-11 23:00:00'),
(9, 1, 'images/eEo5R7G1r1KEj1ST.png', 'test2', 'test2-5', 0, 'adjhakj', '2022-03-08 19:50:02', '2022-03-08 19:50:02', '2022-03-11 23:00:00'),
(10, 1, 'images/4p3Fq4M8R94ydzyZ.png', 'test2', 'test2-6', 0, 'adjhakj', '2022-03-08 19:50:17', '2022-03-08 19:50:17', '2022-03-11 23:00:00'),
(11, 2, 'images/vRsGxNlVxL5zLauZ.jpeg', 'test2', 'test2-1', 1, 'lmfjkjahk', '2022-03-22 14:59:53', '2022-03-22 14:59:53', '2022-03-23 23:00:00'),
(12, 1, 'images/J42KdrzKbl7tsnwC.jpeg', 'test3', 'test3', 1, 'b333', '2022-04-06 19:16:29', '2022-04-06 19:17:12', '2022-04-13 22:00:00'),
(13, 1, 'images/KF38t8rMQaXVEuVR.png', 'question', 'question', 1, 'mmdkelzjflelzh', '2022-04-21 08:31:27', '2022-04-21 08:31:27', '2022-04-22 22:00:00'),
(14, 1, 'images/4r230vCfcVy3mAZF.png', 'Question de referance', 'question-de-referance', 1, 'poiuytyuiokjhghdzhz', '2022-04-21 08:38:17', '2022-04-21 08:38:17', '2022-04-22 22:00:00'),
(15, 4, 'images/cPvfW0clPxLtxDWQ.png', 'mohamed', 'mohamed', 1, 'dldhakfgaicgfu', '2022-05-07 17:21:19', '2022-05-07 17:21:19', '2022-05-20 22:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `survey_answers`
--

CREATE TABLE `survey_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `survey_answers`
--

INSERT INTO `survey_answers` (`id`, `survey_id`, `start_date`, `end_date`) VALUES
(1, 3, '2022-03-02 13:23:11', '2022-03-02 13:23:11'),
(2, 3, '2022-03-08 17:57:24', '2022-03-08 17:57:24'),
(3, 11, '2022-03-22 15:00:22', '2022-03-22 15:00:22'),
(4, 11, '2022-03-22 15:00:30', '2022-03-22 15:00:30'),
(5, 12, '2022-04-06 19:17:28', '2022-04-06 19:17:28'),
(6, 14, '2022-04-21 08:38:52', '2022-04-21 08:38:52');

-- --------------------------------------------------------

--
-- Structure de la table `survey_questions`
--

CREATE TABLE `survey_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `survey_questions`
--

INSERT INTO `survey_questions` (`id`, `type`, `question`, `description`, `data`, `survey_id`, `created_at`, `updated_at`) VALUES
(1, 'text', 'mekjcofzajoczjdcjoz', 'vcgnvgnhgv,gh', '[]', 2, '2022-03-02 13:22:24', '2022-03-02 13:22:24'),
(2, 'radio', 'sdcsd', 'cxbfb', '{\"options\":[{\"uuid\":\"e8c54a36-3e19-4dab-87a8-e14cce2eeeb3\",\"text\":\"42424\"},{\"uuid\":\"76e3b9d1-1ef8-4fce-b58c-2cb25398ec6b\",\"text\":\"5313143\"},{\"uuid\":\"883e7b87-8078-4cfb-8fcc-8aa59348488a\",\"text\":\"1242\"}]}', 2, '2022-03-02 13:22:24', '2022-03-02 13:22:24'),
(3, 'checkbox', 'gfhjhfgjyj', 'vbfgngfgvn', '{\"options\":[{\"uuid\":\"7c55068d-78be-46b8-80f0-42ccc2b99539\",\"text\":\"4241\"},{\"uuid\":\"d6502654-ec28-41d7-a3ca-36a5c53bda7c\",\"text\":\"4242\"}]}', 2, '2022-03-02 13:22:24', '2022-03-02 13:22:24'),
(4, 'textarea', 'tfhtjygj', 'gfhfghfg', '[]', 2, '2022-03-02 13:22:24', '2022-03-02 13:22:24'),
(5, 'text', 'mekjcofzajoczjdcjoz', 'vcgnvgnhgv,gh', '[]', 3, '2022-03-02 13:22:25', '2022-03-02 13:22:25'),
(6, 'radio', 'sdcsd', 'cxbfb', '{\"options\":[{\"uuid\":\"e8c54a36-3e19-4dab-87a8-e14cce2eeeb3\",\"text\":\"42424\"},{\"uuid\":\"76e3b9d1-1ef8-4fce-b58c-2cb25398ec6b\",\"text\":\"5313143\"},{\"uuid\":\"883e7b87-8078-4cfb-8fcc-8aa59348488a\",\"text\":\"1242\"}]}', 3, '2022-03-02 13:22:25', '2022-03-02 13:22:25'),
(7, 'checkbox', 'gfhjhfgjyj', 'vbfgngfgvn', '{\"options\":[{\"uuid\":\"7c55068d-78be-46b8-80f0-42ccc2b99539\",\"text\":\"4241\"},{\"uuid\":\"d6502654-ec28-41d7-a3ca-36a5c53bda7c\",\"text\":\"4242\"}]}', 3, '2022-03-02 13:22:25', '2022-03-02 13:22:25'),
(8, 'textarea', 'tfhtjygj', 'gfhfghfg', '[]', 3, '2022-03-02 13:22:25', '2022-03-02 13:22:25'),
(9, 'text', 'fzef', NULL, '[]', 4, '2022-03-08 19:49:32', '2022-03-08 19:49:32'),
(10, 'text', 'ezfzefez', NULL, '[]', 4, '2022-03-08 19:49:33', '2022-03-08 19:49:33'),
(11, 'text', 'fzef', NULL, '[]', 5, '2022-03-08 19:49:39', '2022-03-08 19:49:39'),
(12, 'text', 'ezfzefez', NULL, '[]', 5, '2022-03-08 19:49:39', '2022-03-08 19:49:39'),
(13, 'text', 'fzef', NULL, '[]', 6, '2022-03-08 19:49:57', '2022-03-08 19:49:57'),
(14, 'text', 'ezfzefez', NULL, '[]', 6, '2022-03-08 19:49:58', '2022-03-08 19:49:58'),
(15, 'text', 'fzef', NULL, '[]', 7, '2022-03-08 19:50:00', '2022-03-08 19:50:00'),
(16, 'text', 'ezfzefez', NULL, '[]', 7, '2022-03-08 19:50:00', '2022-03-08 19:50:00'),
(17, 'text', 'fzef', NULL, '[]', 8, '2022-03-08 19:50:01', '2022-03-08 19:50:01'),
(18, 'text', 'ezfzefez', NULL, '[]', 8, '2022-03-08 19:50:01', '2022-03-08 19:50:01'),
(19, 'text', 'fzef', NULL, '[]', 9, '2022-03-08 19:50:02', '2022-03-08 19:50:02'),
(20, 'text', 'ezfzefez', NULL, '[]', 9, '2022-03-08 19:50:02', '2022-03-08 19:50:02'),
(21, 'radio', 'vfvv', NULL, '{\"options\":[]}', 10, '2022-03-08 19:50:17', '2022-03-08 19:50:17'),
(22, 'radio', 'sdcsd', NULL, '{\"options\":[{\"uuid\":\"71b0c586-ca54-4c25-8bcb-cf11c69d0227\",\"text\":\"med\"},{\"uuid\":\"8b6709c0-47c7-4e83-9b30-ea3859a5a5cf\",\"text\":\"slim\"}]}', 11, '2022-03-22 14:59:54', '2022-03-22 14:59:54'),
(23, 'select', 'fzef', NULL, '{\"options\":[{\"uuid\":\"b6ac6641-d6e1-4801-a1b1-58f79d091181\",\"text\":\"hgfd\"},{\"uuid\":\"9f269428-7b93-4c19-a739-b3d78aa3bb96\",\"text\":\"huhu\"}]}', 12, '2022-04-06 19:16:29', '2022-04-06 19:17:12'),
(24, 'select', 'd,najkdnjka', NULL, '{\"options\":[{\"uuid\":\"ece014a2-80df-46f3-8bc2-30e7fddd67a2\",\"text\":\"dzlzmadkm\"},{\"uuid\":\"7f2156bb-16e6-433d-9793-0451f60ece1c\",\"text\":\"l,lzkdj\"},{\"uuid\":\"6d9893e6-fb13-4cfd-8cc9-89790fb017d8\",\"text\":\"ds:dn\"}]}', 13, '2022-04-21 08:31:28', '2022-04-21 08:31:28'),
(25, 'select', 'pfizehfzhefckhzfjcj', 'fzkelfjlzefik', '{\"options\":[{\"uuid\":\"b16c973a-0f03-4c5c-979c-ce1517c3f77d\",\"text\":\"21\"},{\"uuid\":\"7fe4c0c4-7537-49da-a8e4-d1cad6964483\",\"text\":\"55\"},{\"uuid\":\"399b8e5a-8528-4c49-8500-7d148dad3200\",\"text\":\"66\"}]}', 14, '2022-04-21 08:38:17', '2022-04-21 08:38:17'),
(26, 'text', 'zdjhajkzdjadg', 'dakzjdkzad', '[]', 15, '2022-05-07 17:21:20', '2022-05-07 17:21:20');

-- --------------------------------------------------------

--
-- Structure de la table `survey_question_answers`
--

CREATE TABLE `survey_question_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_question_id` bigint(20) UNSIGNED NOT NULL,
  `survey_answer_id` bigint(20) UNSIGNED NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `survey_question_answers`
--

INSERT INTO `survey_question_answers` (`id`, `survey_question_id`, `survey_answer_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 'gggh', '2022-03-02 13:23:11', '2022-03-02 13:23:11'),
(2, 6, 1, '1242', '2022-03-02 13:23:11', '2022-03-02 13:23:11'),
(3, 7, 1, '[\"4241\",\"4242\"]', '2022-03-02 13:23:12', '2022-03-02 13:23:12'),
(4, 8, 1, 'yjikoyg', '2022-03-02 13:23:12', '2022-03-02 13:23:12'),
(5, 5, 2, 'mzs', '2022-03-08 17:57:24', '2022-03-08 17:57:24'),
(6, 6, 2, '42424', '2022-03-08 17:57:24', '2022-03-08 17:57:24'),
(7, 7, 2, '[\"4241\",\"4242\"]', '2022-03-08 17:57:24', '2022-03-08 17:57:24'),
(8, 8, 2, 'l;l', '2022-03-08 17:57:25', '2022-03-08 17:57:25'),
(9, 22, 3, 'med', '2022-03-22 15:00:22', '2022-03-22 15:00:22'),
(10, 22, 4, 'slim', '2022-03-22 15:00:30', '2022-03-22 15:00:30'),
(11, 23, 5, 'hgfd', '2022-04-06 19:17:28', '2022-04-06 19:17:28'),
(12, 25, 6, '55', '2022-04-21 08:38:52', '2022-04-21 08:38:52');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mohamed slimen', 'slimen@isima.tn', NULL, '$2y$10$WyOotoGBgCSNy.uL0udhTOHBvdn//T54GKi0v8cf2MNC6.ldgHkp2', NULL, '2022-03-02 12:19:21', '2022-03-02 12:19:21'),
(2, 'ahmed', 'ahmed@isims.com', NULL, '$2y$10$aWIG1Vh0rX5N9Gtb3kmxae80Ulll4shXNUt1yT1iG7DXnNktguinu', NULL, '2022-03-22 14:54:41', '2022-03-22 14:54:41'),
(3, 'ffgg', 'mojaasa@mpoka.com', NULL, '$2y$10$h26S/HrszCklw9QOSJRehulmJAQgGP.8vU8nNWmQAPnR699pVpV7S', NULL, '2022-03-31 09:28:30', '2022-03-31 09:28:30'),
(4, 'ofjzejfzefij', 'mohamed@gmail.com', NULL, '$2y$10$7lYIpHw1KqSCCxacHmbCIe6FUGAcC9Eswt9yL2pZ/5Sut8wIUM/LG', NULL, '2022-04-21 08:41:22', '2022-04-21 08:41:22');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `survey_answers`
--
ALTER TABLE `survey_answers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `survey_questions`
--
ALTER TABLE `survey_questions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `survey_question_answers`
--
ALTER TABLE `survey_question_answers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `survey_answers`
--
ALTER TABLE `survey_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `survey_questions`
--
ALTER TABLE `survey_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `survey_question_answers`
--
ALTER TABLE `survey_question_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
