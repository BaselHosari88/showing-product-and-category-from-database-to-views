-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2023 at 10:47 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baselt`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `tags`, `company`, `location`, `email`, `website`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Veritatis sint dolor illo quibusdam dignissimos velit.', 'laravel, api, backend', 'Kirlin Group', 'West Flobury', 'eleanora28@mcdermott.com', 'http://harris.com/', 'Hic numquam qui neque. Vero vero optio sit qui neque id quasi. Beatae mollitia nam ipsum quae laudantium. Non labore harum enim totam. Voluptas veritatis enim dolor atque.', '2023-11-02 07:43:40', '2023-11-02 07:43:40'),
(2, 'Dolorem tenetur rerum in dolor omnis qui.', 'laravel, api, backend', 'Howe Ltd', 'Koelpinburgh', 'davis.john@gottlieb.net', 'https://www.wehner.com/inventore-ut-et-dolor-omnis-velit', 'Laborum consequatur est dolor odio. Rerum commodi expedita et itaque qui. Quisquam sunt molestiae perferendis eos. Illo iure et rem a deserunt quasi. Et est ut consequuntur est.', '2023-11-02 07:43:40', '2023-11-02 07:43:40'),
(3, 'Eum aliquid voluptates inventore occaecati dolor facere totam est.', 'laravel, api, backend', 'Koelpin-Tillman', 'South Marquesberg', 'nienow.elian@kuhic.com', 'http://www.bednar.info/aut-ea-et-voluptatem-rerum-similique-adipisci.html', 'Libero sit ex et qui. Iusto sint qui tempora voluptas provident magnam. Fuga rerum eligendi voluptas voluptas occaecati rerum. Nostrum illum in veritatis id. Aut ut facilis amet unde ipsum reiciendis. Odio et nesciunt iste sit perspiciatis.', '2023-11-02 07:43:40', '2023-11-02 07:43:40'),
(4, 'Nesciunt ullam provident adipisci nisi dolor cupiditate.', 'laravel, api, backend', 'Hayes, Gleichner and Kub', 'Tonifort', 'darren.ratke@schmitt.com', 'https://purdy.com/atque-nihil-ducimus-doloribus-vitae-odit.html', 'Sit sit magni et sint dolorem. Sint in qui incidunt voluptatum veritatis. Vel voluptatem ut sit dignissimos. Et ut enim qui ad qui dicta dolorum tenetur. Numquam sit veniam odio earum voluptas deserunt aperiam. Optio vel exercitationem ducimus modi dolorem.', '2023-11-02 07:43:40', '2023-11-02 07:43:40'),
(5, 'Quo aut in corrupti doloremque officiis adipisci debitis.', 'laravel, api, backend', 'Carroll, Barrows and Kunze', 'Port Jimmy', 'keyon.jones@wisoky.com', 'http://okeefe.net/neque-eius-sunt-beatae-eum-delectus-nisi-ab', 'Quod nihil voluptas numquam fugiat aut molestiae quia. Consequatur vel quam optio ut accusamus repellendus sunt nihil. Et eveniet ipsum voluptates. Doloribus totam voluptatibus iste repellat ipsa ut. Alias possimus quaerat impedit voluptatibus soluta quibusdam ad.', '2023-11-02 07:43:40', '2023-11-02 07:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(86, '2014_10_12_000000_create_users_table', 1),
(87, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(88, '2019_08_19_000000_create_failed_jobs_table', 1),
(89, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(90, '2023_11_02_074053_create_listings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lottie Donnelly', 'laurine.kutch@example.com', '2023-11-02 07:43:40', '$2y$12$I3jkWFFvp6fIZfEVifF0XeHj2EGkOEYSNxsyEUfmNrZdy.MLvq83a', 'uNG0kanyTD', '2023-11-02 07:43:40', '2023-11-02 07:43:40'),
(2, 'Prof. Liliana Fahey', 'sunny54@example.net', '2023-11-02 07:43:40', '$2y$12$I3jkWFFvp6fIZfEVifF0XeHj2EGkOEYSNxsyEUfmNrZdy.MLvq83a', 'zX400OMRxF', '2023-11-02 07:43:40', '2023-11-02 07:43:40'),
(3, 'Selena Kohler', 'barrows.pearline@example.org', '2023-11-02 07:43:40', '$2y$12$I3jkWFFvp6fIZfEVifF0XeHj2EGkOEYSNxsyEUfmNrZdy.MLvq83a', '4M8s7KXoGT', '2023-11-02 07:43:40', '2023-11-02 07:43:40'),
(4, 'Kim Ankunding', 'constantin66@example.org', '2023-11-02 07:43:40', '$2y$12$I3jkWFFvp6fIZfEVifF0XeHj2EGkOEYSNxsyEUfmNrZdy.MLvq83a', 'v9l1hIRveU', '2023-11-02 07:43:40', '2023-11-02 07:43:40'),
(5, 'Geovany Lubowitz', 'ila07@example.com', '2023-11-02 07:43:40', '$2y$12$I3jkWFFvp6fIZfEVifF0XeHj2EGkOEYSNxsyEUfmNrZdy.MLvq83a', 'fFC6njBxaC', '2023-11-02 07:43:40', '2023-11-02 07:43:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
