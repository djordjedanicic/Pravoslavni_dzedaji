-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2020 at 10:21 PM
-- Server version: 8.0.19
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotty`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sifra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `sifra`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'admin', '2020-05-21 18:20:53', '2020-05-21 18:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `jelos`
--

CREATE TABLE `jelos` (
  `id` bigint UNSIGNED NOT NULL,
  `id_rest` bigint UNSIGNED NOT NULL,
  `naziv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cena` double(8,2) NOT NULL,
  `sastojci` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vrsta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gramaza` int NOT NULL,
  `slika` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jelos`
--

INSERT INTO `jelos` (`id`, `id_rest`, `naziv`, `cena`, `sastojci`, `vrsta`, `gramaza`, `slika`, `created_at`, `updated_at`) VALUES
(1, 26, 'Pica', 541.00, 'Alias est aliquid nostrum dolores ut qui. Aliquid occaecati dignissimos voluptas. Asperiores dolores enim in asperiores aut occaecati asperiores. Voluptatem autem inventore libero est. Amet sequi aut ea quas provident modi.', 'Pica', 253, '1590014834.jpeg', '2020-05-21 16:51:34', '2020-05-21 16:51:34'),
(2, 6, 'Pasta', 768.00, 'Ullam nemo nihil minus est. Distinctio sint aliquid cum accusantium quo. Nesciunt dolorem asperiores optio.', 'Pasta', 459, '1590013504.jpeg', '2020-05-21 16:51:34', '2020-05-21 16:51:34'),
(3, 15, 'Susi', 520.00, 'Et et quasi similique sint inventore culpa qui repellat. Quia vel culpa autem ut saepe. Dolores autem quos temporibus.', 'Susi', 454, '1590017444.jpeg', '2020-05-21 16:51:34', '2020-05-21 16:51:34'),
(4, 20, 'Pasta', 496.00, 'Veniam non nihil quisquam veritatis fuga aliquid. Eligendi harum non cumque et reiciendis iure molestiae aut. Omnis enim omnis illum fugit necessitatibus qui.', 'Pasta', 208, '1590013504.jpeg', '2020-05-21 16:51:34', '2020-05-21 16:51:34'),
(5, 0, 'Rostilj', 150.00, 'Unde aut dignissimos quaerat alias. Dolorum omnis nostrum vel exercitationem consectetur repellendus. Dolorem fugiat repellat rerum est voluptatem facilis.', 'Rostilj', 394, '1590020436.jpeg', '2020-05-21 16:51:34', '2020-05-21 16:51:34'),
(6, 29, 'Sendvic', 520.00, 'Maxime quia perspiciatis soluta voluptatem. Blanditiis quia eius est necessitatibus vero. Perspiciatis dolorem similique velit aut tenetur repudiandae facilis deleniti. Iste aut vero dicta neque eveniet sit esse quaerat.', 'Sendvic', 463, '1590015231.jpeg', '2020-05-21 16:51:34', '2020-05-21 16:51:34'),
(7, 28, 'Susi', 327.00, 'Mollitia et blanditiis aut voluptatem consequuntur laborum vitae. Possimus dolorem aut ipsum iste unde aut. Nihil est tenetur autem quia.', 'Susi', 500, '1590017444.jpeg', '2020-05-21 16:51:34', '2020-05-21 16:51:34'),
(8, 23, 'Pica', 720.00, 'Quo est molestiae culpa quia accusamus. Nulla et vel fugit nemo eos eos. Aut quisquam delectus tempore officia velit non. Cumque ut quibusdam dolores nam magnam ab.', 'Pica', 424, '1590014834.jpeg', '2020-05-21 16:51:35', '2020-05-21 16:51:35'),
(9, 27, 'Pasta', 411.00, 'Dolorem magni ab veritatis. Laboriosam et ad natus voluptas asperiores aut sapiente. Nulla veniam quia aut qui voluptatum odio.', 'Pasta', 202, '1590013504.jpeg', '2020-05-21 16:51:35', '2020-05-21 16:51:35'),
(10, 27, 'Susi', 828.00, 'Dicta doloribus nemo excepturi modi nesciunt itaque eius. Quia cum non maiores sed ut aut. Iste et nobis exercitationem earum. Et inventore cumque eum ipsum temporibus tempora omnis.', 'Susi', 221, '1590017444.jpeg', '2020-05-21 16:51:35', '2020-05-21 16:51:35'),
(11, 25, 'Pasta', 296.00, 'Qui inventore et eius. Illum quasi qui soluta vel aperiam earum.', 'Pasta', 212, '1590013504.jpeg', '2020-05-21 16:51:35', '2020-05-21 16:51:35'),
(12, 13, 'Rostilj', 668.00, 'Et est quidem sequi est minima nesciunt reprehenderit voluptatem. At similique sed aut et rem. Aut quam qui eum veritatis dolor fugit praesentium consequatur.', 'Rostilj', 383, '1590020436.jpeg', '2020-05-21 16:51:35', '2020-05-21 16:51:35'),
(13, 10, 'Supa', 944.00, 'Iusto velit repellendus qui amet consectetur nisi. At ea recusandae consequuntur deleniti voluptate. Autem nobis iusto dolor ad blanditiis error eaque. Ducimus minima ea neque qui eaque.', 'Supa', 380, '1589928897.jpeg', '2020-05-21 16:51:35', '2020-05-21 16:51:35'),
(14, 26, 'Supa', 517.00, 'Quo iure dolorem quod nostrum in magnam alias numquam. Qui et saepe dolorum fuga.', 'Supa', 384, '1589928897.jpeg', '2020-05-21 16:51:35', '2020-05-21 16:51:35'),
(15, 19, 'Supa', 841.00, 'Voluptate dignissimos error doloribus harum quo quia in. Eaque voluptatem aliquam et dolorem rerum ea ipsa. Sint tenetur placeat totam quia eligendi qui.', 'Supa', 436, '1589928897.jpeg', '2020-05-21 16:51:35', '2020-05-21 16:51:35'),
(16, 7, 'Supa', 957.00, 'Et mollitia asperiores eligendi est. Recusandae ducimus nam aut. Corrupti omnis expedita quia ab eos. Ex nihil iusto molestiae.', 'Supa', 306, '1589928897.jpeg', '2020-05-21 16:51:35', '2020-05-21 16:51:35'),
(17, 14, 'Sendvic', 855.00, 'Et aut consequuntur esse velit excepturi. Reprehenderit molestiae accusamus repudiandae occaecati. Omnis et consequuntur error magnam et.', 'Sendvic', 279, '1590015231.jpeg', '2020-05-21 16:51:36', '2020-05-21 16:51:36'),
(18, 15, 'Rostilj', 165.00, 'Sint ea ipsa unde harum vero. Rerum ratione quo ratione a repellendus voluptate. Qui officia et voluptatum aut deleniti repudiandae natus. Numquam quo aspernatur sapiente porro iure. Eum mollitia occaecati nemo culpa.', 'Rostilj', 347, '1590020436.jpeg', '2020-05-21 16:51:36', '2020-05-21 16:51:36'),
(19, 22, 'Sendvic', 307.00, 'Aut sequi hic qui atque molestiae odit. Corrupti et ut dolore ea itaque totam.', 'Sendvic', 249, '1590015231.jpeg', '2020-05-21 16:51:36', '2020-05-21 16:51:36'),
(20, 3, 'Supa', 393.00, 'Unde ipsam libero debitis sit quod. Voluptatem excepturi officia quod non sunt in. Cumque qui voluptas commodi voluptate. Placeat vel illo distinctio dolores autem consequatur eaque.', 'Supa', 253, '1589928897.jpeg', '2020-05-21 16:51:36', '2020-05-21 16:51:36'),
(21, 7, 'Salata', 146.00, 'Aut unde molestias et quas nihil quibusdam ut. Nobis repudiandae quibusdam voluptatibus distinctio autem dolorem. Fugit esse sint laudantium est nemo animi veritatis.', 'Salata', 402, '1589932587.jpeg', '2020-05-21 16:51:36', '2020-05-21 16:51:36'),
(22, 23, 'Supa', 386.00, 'Libero reiciendis ut officiis voluptatum rem itaque alias dolorem. Atque iste provident ducimus suscipit.', 'Supa', 372, '1589928897.jpeg', '2020-05-21 16:51:36', '2020-05-21 16:51:36'),
(23, 19, 'Supa', 196.00, 'Ut sit aut minus culpa aut quasi. Fugit deserunt nam ut. Labore voluptatem sit incidunt numquam. Eum vero quam distinctio velit atque sit suscipit explicabo.', 'Supa', 242, '1589928897.jpeg', '2020-05-21 16:51:36', '2020-05-21 16:51:36'),
(24, 20, 'Supa', 477.00, 'Qui esse excepturi similique voluptatem. Inventore vel optio ut fuga repellat quibusdam ex. Beatae deserunt molestiae sapiente ipsa occaecati ut accusantium. Dignissimos nobis voluptas impedit dolorem.', 'Supa', 499, '1589928897.jpeg', '2020-05-21 16:51:36', '2020-05-21 16:51:36'),
(25, 6, 'Salata', 871.00, 'Vel voluptatem neque necessitatibus aliquam cumque. Aut eum ea ex iure eum. Velit consectetur molestiae dignissimos qui ipsum quis.', 'Salata', 372, '1589932587.jpeg', '2020-05-21 16:51:36', '2020-05-21 16:51:36'),
(26, 14, 'Pica', 330.00, 'Quisquam aperiam necessitatibus unde quia repudiandae itaque. Molestias ipsa cum illo officia optio omnis. Ea illum eum aliquid delectus et. Molestiae consequuntur deleniti iure eum magnam. Qui accusamus dignissimos doloribus velit.', 'Pica', 409, '1590014834.jpeg', '2020-05-21 16:51:36', '2020-05-21 16:51:36'),
(27, 21, 'Supa', 689.00, 'Molestiae enim et necessitatibus nisi ut magnam. Rem explicabo eius sit sint aperiam laborum suscipit. Possimus ut aut sunt dolor laudantium repellat. Sunt rerum esse ullam veniam vel consequuntur explicabo.', 'Supa', 343, '1589928897.jpeg', '2020-05-21 16:51:36', '2020-05-21 16:51:36'),
(28, 1, 'Pasta', 753.00, 'Quidem exercitationem ad dolores veritatis nobis. Et molestias esse voluptatibus qui assumenda. Nihil dicta repudiandae veniam reiciendis. Nostrum porro et minima et nisi ad tempora.', 'Pasta', 290, '1590013504.jpeg', '2020-05-21 16:51:36', '2020-05-21 16:51:36'),
(29, 10, 'Sendvic', 255.00, 'Ea aspernatur in quam id aliquam velit. Laborum occaecati nesciunt porro eveniet tempora ab vel.', 'Sendvic', 357, '1590015231.jpeg', '2020-05-21 16:51:36', '2020-05-21 16:51:36'),
(30, 0, 'Salata', 173.00, 'Nihil explicabo numquam quod voluptatem recusandae dolorum. Est recusandae commodi voluptas fuga. Dolore molestiae ut dolorem qui similique impedit.', 'Salata', 377, '1589932587.jpeg', '2020-05-21 16:51:37', '2020-05-21 16:51:37'),
(31, 24, 'Supa', 255.00, 'Nesciunt tempore facilis quo neque aut. Ipsum molestiae qui quisquam dolor. Dolorem mollitia quibusdam beatae quas. Voluptatem maxime illum consectetur magni numquam dolorem.', 'Supa', 394, '1589928897.jpeg', '2020-05-21 16:51:37', '2020-05-21 16:51:37'),
(32, 21, 'Susi', 749.00, 'Eum dolorem eligendi sunt porro possimus iste aut. Dolores quos et maiores nostrum minima dolorem.', 'Susi', 381, '1590017444.jpeg', '2020-05-21 16:51:37', '2020-05-21 16:51:37'),
(33, 3, 'Salata', 736.00, 'Voluptatem recusandae sunt numquam culpa. Autem accusantium rerum qui culpa laudantium corporis quia fuga. Sunt pariatur quae voluptate. Eveniet dolorem est dicta voluptatem ut.', 'Salata', 491, '1589932587.jpeg', '2020-05-21 16:51:37', '2020-05-21 16:51:37'),
(34, 7, 'Supa', 940.00, 'Eum sunt inventore ea. Dolores aliquid rerum expedita officia dolorem sunt. Voluptatibus at dolorem laborum quam sed. Iure alias et enim voluptatibus. Ut voluptatum accusamus voluptates nobis dolores quaerat sed.', 'Supa', 249, '1589928897.jpeg', '2020-05-21 16:51:37', '2020-05-21 16:51:37'),
(35, 9, 'Pica', 705.00, 'Quo atque a asperiores necessitatibus et laboriosam enim. Omnis omnis rem qui minima necessitatibus sit ipsum. Culpa in laboriosam sint. Suscipit recusandae quasi tempora cupiditate minima laborum.', 'Pica', 250, '1590014834.jpeg', '2020-05-21 16:51:37', '2020-05-21 16:51:37'),
(36, 22, 'Susi', 622.00, 'Omnis perspiciatis eos veniam alias. Accusamus ut aliquid deleniti et quasi consequatur consequatur.', 'Susi', 496, '1590017444.jpeg', '2020-05-21 16:51:37', '2020-05-21 16:51:37'),
(37, 26, 'Rostilj', 459.00, 'Qui tenetur libero perspiciatis cupiditate molestias. Rerum voluptatem est tenetur. Qui ducimus harum aut itaque voluptate laboriosam. Aut saepe labore vel.', 'Rostilj', 487, '1590020436.jpeg', '2020-05-21 16:51:37', '2020-05-21 16:51:37'),
(38, 13, 'Pasta', 655.00, 'Expedita architecto quod blanditiis et facilis dolorum. Voluptatem temporibus sed fugiat enim molestias perferendis aut quisquam. Voluptas aperiam atque voluptatem dolores et illum id enim.', 'Pasta', 427, '1590013504.jpeg', '2020-05-21 16:51:37', '2020-05-21 16:51:37'),
(39, 21, 'Rostilj', 737.00, 'Iure soluta officiis rerum. Nesciunt autem veniam est dolor quas optio. Natus voluptatum repellendus repudiandae dicta omnis architecto.', 'Rostilj', 317, '1590020436.jpeg', '2020-05-21 16:51:37', '2020-05-21 16:51:37'),
(40, 20, 'Susi', 689.00, 'Ut tempora dolores quasi aut eligendi. Id repellendus enim nemo inventore molestiae nihil velit.', 'Susi', 441, '1590017444.jpeg', '2020-05-21 16:51:38', '2020-05-21 16:51:38'),
(41, 16, 'Sendvic', 581.00, 'Officia et quasi reiciendis laboriosam cumque porro. Eveniet rerum animi debitis nostrum qui. Itaque perferendis quisquam officia eos fugit saepe recusandae porro. Dolor qui nesciunt omnis at magnam illum expedita.', 'Sendvic', 467, '1590015231.jpeg', '2020-05-21 16:51:38', '2020-05-21 16:51:38'),
(42, 5, 'Pica', 466.00, 'Hic dolor recusandae quam perferendis sapiente. Animi non qui et iure rerum. Sint recusandae ratione harum rerum distinctio molestiae nihil. Ex fugiat possimus et ut exercitationem molestiae et.', 'Pica', 425, '1590014834.jpeg', '2020-05-21 16:51:38', '2020-05-21 16:51:38'),
(43, 25, 'Supa', 265.00, 'Perferendis occaecati ullam et quis debitis cum ut. At voluptas eos vel molestiae. Enim earum non nostrum labore sed quos sed autem.', 'Supa', 313, '1589928897.jpeg', '2020-05-21 16:51:38', '2020-05-21 16:51:38'),
(44, 27, 'Susi', 687.00, 'Eos eum ipsa qui eius. Error et quaerat ullam. Veritatis omnis omnis quo quis.', 'Susi', 270, '1590017444.jpeg', '2020-05-21 16:51:38', '2020-05-21 16:51:38'),
(45, 28, 'Salata', 473.00, 'Quia laboriosam et ad optio. Vel possimus fugit ipsum et consectetur. Et necessitatibus ipsam eos atque. Placeat impedit vel officia non non dolor.', 'Salata', 454, '1589932587.jpeg', '2020-05-21 16:51:38', '2020-05-21 16:51:38'),
(46, 16, 'Pasta', 930.00, 'Facilis aspernatur rerum quidem unde odit sit. Tenetur qui aut voluptatem vel dolor consequatur recusandae.', 'Pasta', 307, '1590013504.jpeg', '2020-05-21 16:51:38', '2020-05-21 16:51:38'),
(47, 2, 'Susi', 746.00, 'Est aspernatur laudantium unde et consequatur. Assumenda nulla odio unde quia. Ratione aut non vitae est officiis. Voluptas nihil iste mollitia deserunt.', 'Susi', 428, '1590017444.jpeg', '2020-05-21 16:51:38', '2020-05-21 16:51:38'),
(48, 29, 'Susi', 467.00, 'Asperiores reiciendis expedita reiciendis alias. Autem nihil sint vero rem error. Consequuntur voluptatum dolores inventore porro voluptatem at aperiam.', 'Susi', 215, '1590017444.jpeg', '2020-05-21 16:51:39', '2020-05-21 16:51:39'),
(49, 23, 'Pasta', 694.00, 'Sequi eum porro nulla sit. Expedita repudiandae nulla sequi tempore adipisci nostrum. Consequatur tenetur sunt velit.', 'Pasta', 220, '1590013504.jpeg', '2020-05-21 16:51:39', '2020-05-21 16:51:39'),
(50, 5, 'Rostilj', 437.00, 'Placeat non vel aut voluptatibus corporis sunt. Laborum et recusandae et reiciendis repellendus. Dolorem autem officiis aut ea qui aut. Quidem et quia laboriosam dolore nam omnis. Autem rem consequuntur debitis et vero tenetur quia.', 'Rostilj', 319, '1590020436.jpeg', '2020-05-21 16:51:39', '2020-05-21 16:51:39'),
(51, 2, 'Supa', 565.00, 'Reprehenderit voluptatem et dolorem temporibus. Repudiandae qui quae delectus. Neque sequi quia quibusdam odio ea saepe possimus. Quasi rem sed culpa est iste ipsam eius.', 'Supa', 340, '1589928897.jpeg', '2020-05-21 16:51:39', '2020-05-21 16:51:39'),
(52, 17, 'Pica', 192.00, 'Voluptatem quisquam consectetur ab dolorum ea. Similique quia nostrum repellat. Natus qui voluptas omnis consequuntur voluptate ipsam officiis eligendi. Error perspiciatis et nostrum unde.', 'Pica', 362, '1590014834.jpeg', '2020-05-21 16:51:39', '2020-05-21 16:51:39'),
(53, 2, 'Susi', 376.00, 'Mollitia molestiae eligendi tempora et maiores. Omnis mollitia et eum nemo labore. Ad atque et perferendis voluptas.', 'Susi', 496, '1590017444.jpeg', '2020-05-21 16:51:39', '2020-05-21 16:51:39'),
(54, 7, 'Sendvic', 361.00, 'Quia numquam temporibus ea qui nemo delectus repellendus. Ab tempore possimus amet. Laboriosam est dolorem repellendus ea deleniti quo.', 'Sendvic', 401, '1590015231.jpeg', '2020-05-21 16:51:39', '2020-05-21 16:51:39'),
(55, 29, 'Sendvic', 227.00, 'Et dolorem et eius ut ab. Laborum ab accusantium vero dolor. Molestiae corrupti ut provident omnis. Est id qui quos unde iste et harum.', 'Sendvic', 420, '1590015231.jpeg', '2020-05-21 16:51:39', '2020-05-21 16:51:39'),
(56, 13, 'Susi', 580.00, 'At rerum numquam quasi officia possimus voluptatem. Natus fuga error voluptas ut aut. Sunt magnam a ab adipisci repellat repellat. Et velit explicabo laboriosam itaque.', 'Susi', 493, '1590017444.jpeg', '2020-05-21 16:51:39', '2020-05-21 16:51:39'),
(57, 4, 'Supa', 433.00, 'Ut nulla sed natus expedita est ut magnam. Consequatur fuga sit enim eos accusantium id. Aspernatur cumque consequatur sed illum et. Dolorem deserunt natus odio aut et.', 'Supa', 409, '1589928897.jpeg', '2020-05-21 16:51:39', '2020-05-21 16:51:39'),
(58, 18, 'Salata', 102.00, 'Cupiditate voluptatibus quis hic eos. Veritatis neque sit omnis corporis. Consequatur velit sequi vero voluptas quidem. Nisi eaque ut explicabo quisquam voluptate eveniet aperiam natus. Sunt aliquid possimus expedita voluptas.', 'Salata', 382, '1589932587.jpeg', '2020-05-21 16:51:40', '2020-05-21 16:51:40'),
(59, 15, 'Pasta', 614.00, 'Non voluptatibus accusantium praesentium rerum consequuntur alias. Deleniti quos dolores est voluptatem. Rerum dolor odit sunt dolore.', 'Pasta', 251, '1590013504.jpeg', '2020-05-21 16:51:40', '2020-05-21 16:51:40'),
(60, 20, 'Salata', 650.00, 'Minus nisi sit ea repudiandae quidem ratione. Cum perferendis nam placeat. Expedita aut non voluptas et. Molestiae accusamus sed adipisci animi maiores.', 'Salata', 231, '1589932587.jpeg', '2020-05-21 16:51:40', '2020-05-21 16:51:40'),
(61, 3, 'Pica', 706.00, 'Rerum reiciendis mollitia iure necessitatibus. Quia ut fugiat esse sint asperiores. Aperiam omnis occaecati nobis sapiente voluptatum. Quibusdam debitis quas voluptate tempore est.', 'Pica', 309, '1590014834.jpeg', '2020-05-21 16:51:40', '2020-05-21 16:51:40'),
(62, 11, 'Susi', 262.00, 'Placeat earum atque et rerum qui. Non qui nemo et doloribus.', 'Susi', 476, '1590017444.jpeg', '2020-05-21 16:51:40', '2020-05-21 16:51:40'),
(63, 22, 'Rostilj', 132.00, 'Est occaecati eligendi necessitatibus itaque et sit. Iusto quam iusto eligendi qui totam laboriosam. Maxime molestiae rerum ad debitis commodi error culpa velit. Vitae tenetur occaecati animi quo et totam.', 'Rostilj', 280, '1590020436.jpeg', '2020-05-21 16:51:40', '2020-05-21 16:51:40'),
(64, 14, 'Salata', 942.00, 'Quasi alias voluptas debitis vero velit. Similique praesentium id sint voluptatem. Perferendis ut magni assumenda eum. Iusto libero dolores voluptas praesentium.', 'Salata', 334, '1589932587.jpeg', '2020-05-21 16:51:40', '2020-05-21 16:51:40'),
(65, 12, 'Supa', 851.00, 'Commodi itaque ad cupiditate cupiditate aspernatur. Architecto sed ut modi mollitia excepturi laboriosam. Voluptatem quia ullam delectus. Quas optio pariatur a dolorum soluta sed et.', 'Supa', 318, '1589928897.jpeg', '2020-05-21 16:51:40', '2020-05-21 16:51:40'),
(66, 24, 'Pica', 418.00, 'Voluptatem voluptas nesciunt consequuntur fugit. Atque quo id laborum est nam repudiandae. Est libero accusamus adipisci corporis.', 'Pica', 229, '1590014834.jpeg', '2020-05-21 16:51:40', '2020-05-21 16:51:40'),
(67, 16, 'Pica', 792.00, 'Nesciunt repellendus aut eius repudiandae quibusdam laboriosam. Quo sint ex et aut ut incidunt molestiae. Corporis cum qui iusto ut id aspernatur. Expedita exercitationem eaque quis dolorem voluptatem.', 'Pica', 284, '1590014834.jpeg', '2020-05-21 16:51:40', '2020-05-21 16:51:40'),
(68, 18, 'Salata', 917.00, 'Laudantium dicta eaque mollitia ab suscipit. Nobis aliquid rerum suscipit labore ut sit dolore. Repudiandae ut nostrum facere esse blanditiis. Quidem nobis velit omnis illum.', 'Salata', 301, '1589932587.jpeg', '2020-05-21 16:51:41', '2020-05-21 16:51:41'),
(69, 10, 'Pasta', 467.00, 'Sapiente deleniti quidem eum voluptatum pariatur architecto molestiae. Voluptatem ducimus esse rerum. Vel id qui quam non. Sint ipsum eaque et non.', 'Pasta', 201, '1590013504.jpeg', '2020-05-21 16:51:41', '2020-05-21 16:51:41'),
(70, 5, 'Sendvic', 323.00, 'Officia temporibus incidunt libero architecto corrupti. Rerum cumque omnis accusantium. Velit fugit saepe sequi ea non deleniti voluptates. Placeat earum fugiat quia ea nam.', 'Sendvic', 234, '1590015231.jpeg', '2020-05-21 16:51:41', '2020-05-21 16:51:41'),
(71, 11, 'Pasta', 896.00, 'Sequi non architecto placeat nihil a. Repellendus nulla eum neque provident qui maxime. Omnis adipisci aut tenetur sunt dolorem id doloribus. Dicta accusamus quas eum doloremque beatae praesentium cumque quas.', 'Pasta', 359, '1590013504.jpeg', '2020-05-21 16:51:41', '2020-05-21 16:51:41'),
(72, 28, 'Susi', 106.00, 'Omnis nobis tempore molestiae quia occaecati quis. Et corrupti et aut aut fugiat nesciunt. Omnis aut enim ut cumque enim.', 'Susi', 223, '1590017444.jpeg', '2020-05-21 16:51:41', '2020-05-21 16:51:41'),
(73, 22, 'Pica', 828.00, 'Aliquam aut neque incidunt neque aliquam non. Veritatis aut vel doloribus explicabo eum.', 'Pica', 283, '1590014834.jpeg', '2020-05-21 16:51:41', '2020-05-21 16:51:41'),
(74, 17, 'Pica', 221.00, 'Aperiam velit repellendus maxime beatae id ipsum. Dolorem blanditiis officia quia iste.', 'Pica', 447, '1590014834.jpeg', '2020-05-21 16:51:41', '2020-05-21 16:51:41'),
(75, 26, 'Sendvic', 609.00, 'Et omnis iure ducimus temporibus. Doloremque omnis deleniti perspiciatis quia. Laboriosam pariatur nostrum ut in. Illo voluptas natus architecto distinctio.', 'Sendvic', 222, '1590015231.jpeg', '2020-05-21 16:51:41', '2020-05-21 16:51:41'),
(76, 20, 'Supa', 918.00, 'Rerum rerum exercitationem ea placeat. Qui ut ipsum voluptas minus qui consequatur in adipisci. Officia aut corporis ut repellendus est dolorum facilis. Possimus accusamus ut et.', 'Supa', 373, '1589928897.jpeg', '2020-05-21 16:51:41', '2020-05-21 16:51:41'),
(77, 22, 'Supa', 175.00, 'Enim aperiam temporibus commodi inventore ut est sint. Est id vel optio consequatur aut dolores dolores. Eaque voluptatem accusantium non odio. Non eius exercitationem ea repellendus ut quae.', 'Supa', 329, '1589928897.jpeg', '2020-05-21 16:51:42', '2020-05-21 16:51:42'),
(78, 15, 'Salata', 912.00, 'Est quia iusto tempore aut et eum quo. Corrupti autem reprehenderit et dignissimos porro. Accusamus labore mollitia ut recusandae.', 'Salata', 232, '1589932587.jpeg', '2020-05-21 16:51:42', '2020-05-21 16:51:42'),
(79, 16, 'Pasta', 254.00, 'Perspiciatis quod molestias exercitationem eos. Et quo architecto necessitatibus eius minus. Et quam aliquid error quia non quam. Sunt quia dignissimos voluptatem quasi.', 'Pasta', 361, '1590013504.jpeg', '2020-05-21 16:51:42', '2020-05-21 16:51:42'),
(80, 12, 'Susi', 247.00, 'Reprehenderit hic consequatur aliquid aut sit temporibus beatae. Deleniti est ut maxime a totam. Rerum ut et et vel aut deleniti et. Minus occaecati perspiciatis in eum voluptatem dolorem.', 'Susi', 208, '1590017444.jpeg', '2020-05-21 16:51:42', '2020-05-21 16:51:42'),
(81, 19, 'Supa', 175.00, 'Eius aliquam maxime enim error dolor dolores ducimus. Reiciendis qui soluta dolorum beatae qui laborum. Ea et est eum ducimus rerum autem est sequi. Eius ea et ipsa qui quam assumenda dicta velit. Porro eos consequatur fugiat dolores esse fuga.', 'Supa', 397, '1589928897.jpeg', '2020-05-21 16:51:42', '2020-05-21 16:51:42'),
(82, 28, 'Pasta', 421.00, 'Libero architecto id est explicabo dolorem. Et occaecati quia iure veniam perferendis doloremque reiciendis. Illo voluptas molestiae minus aliquam sit consectetur debitis. Est est libero consectetur eligendi.', 'Pasta', 314, '1590013504.jpeg', '2020-05-21 16:51:42', '2020-05-21 16:51:42'),
(83, 26, 'Sendvic', 409.00, 'Autem provident eius nostrum nihil molestiae omnis. Rem a illo cumque reprehenderit ipsam. Possimus neque eos iusto voluptatem dolor. Et aut ut labore facere.', 'Sendvic', 352, '1590015231.jpeg', '2020-05-21 16:51:43', '2020-05-21 16:51:43'),
(84, 8, 'Rostilj', 168.00, 'Soluta quis eum asperiores mollitia voluptas esse laborum sed. Quo debitis iusto et minus. Voluptatem suscipit vero qui et quis eaque aliquam. Nostrum nesciunt a et.', 'Rostilj', 298, '1590020436.jpeg', '2020-05-21 16:51:43', '2020-05-21 16:51:43'),
(85, 20, 'Sendvic', 746.00, 'Nihil quia quo architecto assumenda non quia. Repellendus cupiditate natus odio qui eum officiis. Reiciendis ut velit repellendus alias amet.', 'Sendvic', 355, '1590015231.jpeg', '2020-05-21 16:51:43', '2020-05-21 16:51:43'),
(86, 10, 'Supa', 531.00, 'Autem nihil velit esse modi ducimus et. Inventore odit sed fugit minima quisquam. Molestias sunt pariatur ipsam quasi est enim et. Ad quis distinctio voluptatem minus repellat eligendi.', 'Supa', 352, '1589928897.jpeg', '2020-05-21 16:51:43', '2020-05-21 16:51:43'),
(87, 16, 'Sendvic', 893.00, 'Facilis commodi eligendi a dolores doloribus. At sequi cupiditate delectus aut exercitationem. Numquam eligendi ea autem dolor commodi eius qui.', 'Sendvic', 497, '1590015231.jpeg', '2020-05-21 16:51:43', '2020-05-21 16:51:43'),
(88, 7, 'Susi', 360.00, 'Est sit fuga laboriosam est amet. Quia blanditiis quo animi consequatur. Omnis sint eius perspiciatis veritatis. Deserunt occaecati qui omnis et modi et voluptas et.', 'Susi', 424, '1590017444.jpeg', '2020-05-21 16:51:43', '2020-05-21 16:51:43'),
(89, 0, 'Pasta', 632.00, 'Modi deserunt cumque deleniti temporibus rerum sed ut. Ut molestiae deserunt laborum doloribus incidunt quibusdam. Aut unde esse consequatur et illo eos.', 'Pasta', 487, '1590013504.jpeg', '2020-05-21 16:51:43', '2020-05-21 16:51:43'),
(90, 4, 'Rostilj', 393.00, 'Nulla illo et quisquam hic consequuntur ut eveniet. Voluptatem dolore eos voluptas iure voluptatem iste autem. Voluptas quaerat est quia sit commodi expedita enim. Quae autem nostrum aliquid vel eum iusto qui.', 'Rostilj', 295, '1590020436.jpeg', '2020-05-21 16:51:43', '2020-05-21 16:51:43'),
(91, 19, 'Salata', 894.00, 'Debitis quibusdam soluta qui id quia inventore. Et veniam fugit exercitationem adipisci quod in consequatur. Necessitatibus sed beatae corporis quis nihil sapiente.', 'Salata', 365, '1589932587.jpeg', '2020-05-21 16:51:43', '2020-05-21 16:51:43'),
(92, 17, 'Rostilj', 565.00, 'Aperiam id esse debitis facilis. Totam voluptatem voluptas eum nemo aspernatur nesciunt et. Explicabo nesciunt voluptas earum.', 'Rostilj', 429, '1590020436.jpeg', '2020-05-21 16:51:44', '2020-05-21 16:51:44'),
(93, 29, 'Salata', 827.00, 'Aut nam qui explicabo dicta facere totam velit molestias. Dolor et omnis eos aperiam quos beatae consequuntur. Maxime voluptates porro repellat consequatur nesciunt quaerat. Rem totam ad excepturi nam incidunt fugiat et a.', 'Salata', 374, '1589932587.jpeg', '2020-05-21 16:51:44', '2020-05-21 16:51:44'),
(94, 23, 'Salata', 802.00, 'Eveniet dignissimos deserunt harum amet consequuntur. Veritatis quas ratione temporibus aut voluptatem illum. Odio molestias quisquam laboriosam.', 'Salata', 460, '1589932587.jpeg', '2020-05-21 16:51:44', '2020-05-21 16:51:44'),
(95, 8, 'Supa', 586.00, 'Eos cupiditate eum hic temporibus rerum neque. Ipsam fuga qui incidunt et quis neque perferendis. Minima adipisci quod autem velit.', 'Supa', 334, '1589928897.jpeg', '2020-05-21 16:51:44', '2020-05-21 16:51:44'),
(96, 17, 'Rostilj', 397.00, 'Quia harum ut voluptatem alias nobis expedita ut. Et autem ut placeat quo voluptatem tempore aut. Consequatur cupiditate nemo ducimus maiores. Quaerat earum magnam sit ab consequatur aperiam voluptatibus nostrum. Odio voluptate magni quos quidem sunt iure.', 'Rostilj', 421, '1590020436.jpeg', '2020-05-21 16:51:44', '2020-05-21 16:51:44'),
(97, 28, 'Pasta', 240.00, 'Ea provident error cumque architecto consequatur alias nam. Consectetur incidunt odio voluptates non aut. Ipsa maxime distinctio rem voluptatibus qui. Quaerat exercitationem velit provident qui repellendus et voluptas.', 'Pasta', 461, '1590013504.jpeg', '2020-05-21 16:51:45', '2020-05-21 16:51:45'),
(98, 4, 'Pica', 688.00, 'Sed quas in itaque tempore repudiandae. Suscipit ut qui consequatur voluptatem sequi animi. Praesentium esse porro tempore et omnis quis cumque. Possimus aut eum ut recusandae perspiciatis.', 'Pica', 374, '1590014834.jpeg', '2020-05-21 16:51:45', '2020-05-21 16:51:45'),
(99, 17, 'Sendvic', 486.00, 'Ullam odio temporibus provident ratione. Magnam dolorem maxime et vitae. Perferendis voluptas incidunt aperiam cumque dolor omnis temporibus.', 'Sendvic', 212, '1590015231.jpeg', '2020-05-21 16:51:45', '2020-05-21 16:51:45'),
(100, 17, 'Susi', 826.00, 'Nemo quis nisi itaque eveniet sed. Animi eos rerum velit quia vel et. Mollitia quia vel tempora minus.', 'Susi', 464, '1590017444.jpeg', '2020-05-21 16:51:45', '2020-05-21 16:51:45'),
(101, 2, 'Rostilj', 530.00, 'Et modi ea nemo aut et dicta autem amet. Aut et possimus voluptatem. Sint inventore dolores unde blanditiis.', 'Rostilj', 236, '1590020436.jpeg', '2020-05-21 16:51:45', '2020-05-21 16:51:45'),
(102, 9, 'Supa', 192.00, 'Placeat hic facere iure quia. Dolores non tenetur aliquid culpa quasi quia cupiditate. Sunt laudantium consequuntur optio velit dolores dicta qui harum.', 'Supa', 303, '1589928897.jpeg', '2020-05-21 16:51:45', '2020-05-21 16:51:45'),
(103, 12, 'Supa', 895.00, 'Ea et dolores laudantium optio. Molestias consequatur voluptas tenetur quis. Optio cupiditate ut doloremque quia iure inventore sequi. Et quo sit reiciendis.', 'Supa', 440, '1589928897.jpeg', '2020-05-21 16:51:45', '2020-05-21 16:51:45'),
(104, 27, 'Salata', 247.00, 'Cum animi voluptatem vel laborum culpa. Explicabo eum cupiditate et ullam sed saepe quas voluptas. Dolores commodi sed quia voluptas soluta impedit. Odit et eum possimus fuga dignissimos facilis.', 'Salata', 487, '1589932587.jpeg', '2020-05-21 16:51:45', '2020-05-21 16:51:45'),
(105, 3, 'Supa', 588.00, 'Aspernatur aliquid porro dolores et aut. Corrupti distinctio quo quo omnis non totam alias. Iusto neque illo optio nihil blanditiis.', 'Supa', 308, '1589928897.jpeg', '2020-05-21 16:51:45', '2020-05-21 16:51:45'),
(106, 16, 'Salata', 697.00, 'Nisi magni sed recusandae ratione qui. Voluptatem est iusto aut ratione. Voluptate id voluptatem tenetur et reprehenderit.', 'Salata', 299, '1589932587.jpeg', '2020-05-21 16:51:45', '2020-05-21 16:51:45'),
(107, 0, 'Rostilj', 455.00, 'Qui quia quis nostrum explicabo distinctio et. Dolorem dolorem ex totam quia error dolore et. Fugiat qui necessitatibus modi omnis voluptas facilis.', 'Rostilj', 355, '1590020436.jpeg', '2020-05-21 16:51:46', '2020-05-21 16:51:46'),
(108, 29, 'Pica', 730.00, 'Libero molestiae labore sed id. Repellat quibusdam minima adipisci minima autem repellendus impedit. Magnam architecto quam aspernatur consequatur. Esse tenetur in soluta id quo placeat minima. Aperiam ea ipsa sequi quia impedit inventore tenetur aut.', 'Pica', 373, '1590014834.jpeg', '2020-05-21 16:51:46', '2020-05-21 16:51:46'),
(109, 24, 'Pica', 868.00, 'Esse rerum quis eos possimus corporis voluptatem commodi et. Quidem cum ipsam repudiandae quia sed corporis debitis. Dolor nulla ut aliquid perspiciatis.', 'Pica', 271, '1590014834.jpeg', '2020-05-21 16:51:46', '2020-05-21 16:51:46'),
(110, 25, 'Pasta', 252.00, 'Doloribus saepe vel exercitationem non dolor assumenda. Molestiae voluptatem ipsam qui corporis illum. Blanditiis sed eius voluptatem illum in non maiores.', 'Pasta', 235, '1590013504.jpeg', '2020-05-21 16:51:46', '2020-05-21 16:51:46'),
(111, 4, 'Salata', 882.00, 'Et quasi maiores aperiam fugit quia. Reprehenderit dolor perferendis quisquam cum est eveniet. Occaecati nihil dolor enim.', 'Salata', 207, '1589932587.jpeg', '2020-05-21 16:51:46', '2020-05-21 16:51:46'),
(112, 22, 'Rostilj', 758.00, 'Vero ad sit necessitatibus officiis quia. Eius nisi impedit voluptate aut magni quis voluptas eaque. Delectus iste asperiores autem voluptatibus similique. Magni voluptatem vel repellendus expedita rerum eum libero.', 'Rostilj', 266, '1590020436.jpeg', '2020-05-21 16:51:46', '2020-05-21 16:51:46'),
(113, 13, 'Salata', 877.00, 'Animi id cumque non qui sed voluptatem est. Consequatur corrupti dolorum qui voluptas consequatur. Rerum nulla eum maiores rerum blanditiis est qui. Harum quaerat harum temporibus quas eligendi non assumenda quisquam.', 'Salata', 333, '1589932587.jpeg', '2020-05-21 16:51:47', '2020-05-21 16:51:47'),
(114, 1, 'Supa', 860.00, 'Fugiat nulla totam eum qui. Ratione quia excepturi sit nobis. Ratione veritatis sunt et quasi amet quas quidem. Et et qui quia maxime dolores.', 'Supa', 207, '1589928897.jpeg', '2020-05-21 16:51:47', '2020-05-21 16:51:47'),
(115, 17, 'Susi', 753.00, 'Et optio iste amet necessitatibus velit. Unde ipsa temporibus totam repellendus laudantium quis modi ipsam. Eveniet cum odit porro vel. Quas vitae enim iure vel ad quidem qui.', 'Susi', 460, '1590017444.jpeg', '2020-05-21 16:51:47', '2020-05-21 16:51:47'),
(116, 15, 'Supa', 118.00, 'Quaerat ut et sed quo et exercitationem maiores veniam. Aut vero nisi quia similique dolor harum magni.', 'Supa', 471, '1589928897.jpeg', '2020-05-21 16:51:47', '2020-05-21 16:51:47'),
(117, 14, 'Pasta', 965.00, 'Ducimus voluptas esse ut inventore ut. Voluptatibus laborum et velit voluptas et.', 'Pasta', 324, '1590013504.jpeg', '2020-05-21 16:51:47', '2020-05-21 16:51:47'),
(118, 19, 'Sendvic', 635.00, 'Cum et repellendus quo ut ab suscipit quisquam. Id cumque velit ullam laudantium eos explicabo possimus. Necessitatibus perspiciatis minima ut aut. Nostrum similique fuga est et facilis. Omnis commodi et dolores magnam officia.', 'Sendvic', 489, '1590015231.jpeg', '2020-05-21 16:51:47', '2020-05-21 16:51:47'),
(119, 12, 'Pasta', 215.00, 'Eum unde quibusdam et consectetur perspiciatis qui reiciendis. Voluptas optio architecto rerum sint ut ducimus. Tempore quis aliquam optio ut. Soluta et laboriosam dolorem aut aut autem et.', 'Pasta', 358, '1590013504.jpeg', '2020-05-21 16:51:47', '2020-05-21 16:51:47'),
(120, 3, 'Susi', 526.00, 'Quia deserunt eveniet ipsam qui omnis unde. Tempore similique eos dolores. Accusamus porro beatae et. Porro ut saepe optio ab hic delectus.', 'Susi', 358, '1590017444.jpeg', '2020-05-21 16:51:48', '2020-05-21 16:51:48'),
(121, 18, 'Supa', 711.00, 'Enim doloremque reiciendis cumque ea culpa aliquam et. Et corporis est dolore est cupiditate soluta et enim. Dolorem quis et voluptatibus provident nobis aut dolores. Et amet dolorem autem rerum dolorem.', 'Supa', 325, '1589928897.jpeg', '2020-05-21 16:51:48', '2020-05-21 16:51:48'),
(122, 12, 'Pica', 966.00, 'Porro veritatis possimus sed repellendus. Ut omnis nam sed magnam et commodi nostrum. Earum aperiam odit ut autem fugiat officia fuga.', 'Pica', 420, '1590014834.jpeg', '2020-05-21 16:51:48', '2020-05-21 16:51:48'),
(123, 19, 'Rostilj', 615.00, 'Et molestias dolorem id ducimus esse. Veritatis explicabo aliquid laboriosam sed voluptatibus qui. Et et recusandae tempore voluptatem id doloribus et.', 'Rostilj', 314, '1590020436.jpeg', '2020-05-21 16:51:48', '2020-05-21 16:51:48'),
(124, 29, 'Sendvic', 675.00, 'Incidunt neque quis aut odit. Consequatur quia libero eos eos. Natus dignissimos molestias eligendi amet et praesentium.', 'Sendvic', 343, '1590015231.jpeg', '2020-05-21 16:51:48', '2020-05-21 16:51:48'),
(125, 0, 'Sendvic', 728.00, 'In dolorem nihil dicta aut qui. Et dolor excepturi itaque quia ipsum consequatur. Cupiditate nulla omnis aut corrupti qui voluptates fugiat in.', 'Sendvic', 369, '1590015231.jpeg', '2020-05-21 16:51:48', '2020-05-21 16:51:48'),
(126, 21, 'Supa', 702.00, 'Voluptatem quia itaque quam molestiae voluptas quo amet. Eaque doloremque est sequi. Nulla expedita molestiae illum nobis. Aut et et qui totam veritatis ut.', 'Supa', 278, '1589928897.jpeg', '2020-05-21 16:51:48', '2020-05-21 16:51:48'),
(127, 5, 'Susi', 306.00, 'Ipsam esse quo aut labore. Et sed culpa et praesentium. Natus necessitatibus perferendis eaque eum.', 'Susi', 424, '1590017444.jpeg', '2020-05-21 16:51:48', '2020-05-21 16:51:48'),
(128, 29, 'Rostilj', 701.00, 'Est consequatur autem similique deleniti. Est quod at aut sapiente sit. Aut illum aperiam quam delectus. Omnis sit accusamus reprehenderit excepturi.', 'Rostilj', 294, '1590020436.jpeg', '2020-05-21 16:51:49', '2020-05-21 16:51:49'),
(129, 25, 'Salata', 647.00, 'Et blanditiis in nisi pariatur maiores necessitatibus aut. Unde sed maiores enim. Aliquid repellendus quasi consequatur fugiat rerum cupiditate atque.', 'Salata', 415, '1589932587.jpeg', '2020-05-21 16:51:49', '2020-05-21 16:51:49'),
(130, 20, 'Rostilj', 165.00, 'Id impedit tenetur sit qui eum. Et officia doloremque rerum officiis officia non. Eligendi quam voluptatem tenetur deleniti eos quisquam tempora.', 'Rostilj', 321, '1590020436.jpeg', '2020-05-21 16:51:49', '2020-05-21 16:51:49'),
(131, 27, 'Sendvic', 271.00, 'Ipsa velit eius est fugiat vero eum. Inventore quasi accusantium facere et. Rem voluptas illo dicta occaecati voluptate id.', 'Sendvic', 496, '1590015231.jpeg', '2020-05-21 16:51:49', '2020-05-21 16:51:49'),
(132, 2, 'Supa', 862.00, 'Esse in dolor minus assumenda architecto illum veniam. Autem voluptatem et quia id vitae vero quo. Et eos molestiae molestias ab nihil tenetur odio consequatur. Rerum non quia cumque temporibus.', 'Supa', 492, '1589928897.jpeg', '2020-05-21 16:51:49', '2020-05-21 16:51:49'),
(133, 22, 'Susi', 714.00, 'Eveniet ut consequatur itaque quod omnis ut. Dolorem quia quis architecto blanditiis similique numquam praesentium voluptatibus. Et necessitatibus iste quod aut. Aliquam in pariatur itaque et est voluptatibus et.', 'Susi', 334, '1590017444.jpeg', '2020-05-21 16:51:49', '2020-05-21 16:51:49'),
(134, 27, 'Rostilj', 870.00, 'Est consequatur repudiandae natus officia neque maiores omnis. Consequatur est perferendis eaque ea aperiam excepturi consectetur quisquam. Numquam temporibus deleniti officia eius ut rerum.', 'Rostilj', 477, '1590020436.jpeg', '2020-05-21 16:51:49', '2020-05-21 16:51:49'),
(135, 3, 'Pasta', 690.00, 'Corrupti sit sapiente veritatis aliquam totam atque nihil ducimus. Et aliquid quis consequatur quibusdam repellendus dolor. Natus exercitationem accusamus voluptatem asperiores quidem. Qui dolorem ducimus culpa consequatur. Laboriosam aut atque error recusandae autem dignissimos nemo adipisci.', 'Pasta', 463, '1590013504.jpeg', '2020-05-21 16:51:49', '2020-05-21 16:51:49'),
(136, 19, 'Rostilj', 641.00, 'Aliquid quia repellendus consectetur consequatur quae. At quasi exercitationem quos omnis ut tempora. Aperiam blanditiis qui pariatur omnis in.', 'Rostilj', 381, '1590020436.jpeg', '2020-05-21 16:51:49', '2020-05-21 16:51:49'),
(137, 13, 'Supa', 278.00, 'Aut qui debitis sed voluptates blanditiis et aut eius. Et aut est corrupti eum. Aspernatur molestias quas neque aperiam tempora et.', 'Supa', 362, '1589928897.jpeg', '2020-05-21 16:51:49', '2020-05-21 16:51:49'),
(138, 14, 'Pica', 759.00, 'A sed repellendus et odit quidem nulla doloribus. Esse ratione exercitationem molestias qui iusto sunt est. Tenetur amet molestiae eum quia perspiciatis accusamus ullam nemo.', 'Pica', 358, '1590014834.jpeg', '2020-05-21 16:51:50', '2020-05-21 16:51:50'),
(139, 24, 'Sendvic', 216.00, 'Tenetur cum nisi ullam. Eos vel nisi consequatur dignissimos numquam eum est. Sit consequuntur temporibus blanditiis voluptatum. Nam ipsum consequatur culpa nemo doloremque fuga.', 'Sendvic', 217, '1590015231.jpeg', '2020-05-21 16:51:50', '2020-05-21 16:51:50'),
(140, 23, 'Rostilj', 492.00, 'Nam sunt similique rem quia et voluptas alias. Vel voluptatem quis et id aliquid. Veniam quidem enim repellendus.', 'Rostilj', 308, '1590020436.jpeg', '2020-05-21 16:51:50', '2020-05-21 16:51:50'),
(141, 18, 'Salata', 364.00, 'Optio vel dolores voluptatem omnis qui. Eos esse porro ut quos dicta. Qui eos sit quis excepturi.', 'Salata', 215, '1589932587.jpeg', '2020-05-21 16:51:50', '2020-05-21 16:51:50'),
(142, 29, 'Salata', 980.00, 'Pariatur at consequatur molestiae accusamus fugit voluptas. Sint accusamus ipsa nulla molestias quia optio. Dolore voluptas alias voluptatem accusamus.', 'Salata', 307, '1589932587.jpeg', '2020-05-21 16:51:50', '2020-05-21 16:51:50'),
(143, 3, 'Pasta', 269.00, 'Tenetur ipsam occaecati repudiandae dolor eius blanditiis nobis. Nam inventore soluta nihil. Nihil saepe dolor molestias nulla.', 'Pasta', 434, '1590013504.jpeg', '2020-05-21 16:51:50', '2020-05-21 16:51:50'),
(144, 18, 'Supa', 543.00, 'Facere optio natus et officiis cum rem. Et soluta cupiditate dolore molestiae perferendis voluptatem. Non omnis repellat deleniti aut possimus sed et. Laborum voluptas temporibus ut consequuntur ipsa.', 'Supa', 295, '1589928897.jpeg', '2020-05-21 16:51:50', '2020-05-21 16:51:50'),
(145, 10, 'Sendvic', 146.00, 'Autem ut excepturi nihil odit excepturi temporibus voluptatibus. Alias sint qui ullam tenetur ipsa. Dicta qui ex iste aut reprehenderit et. Nihil error ad est neque rerum. Id doloribus molestiae voluptatem hic iure sit rerum.', 'Sendvic', 219, '1590015231.jpeg', '2020-05-21 16:51:50', '2020-05-21 16:51:50'),
(146, 1, 'Pasta', 277.00, 'Unde porro aut fugiat et. Id voluptas a est nesciunt. Qui aliquid accusantium sit nostrum eos.', 'Pasta', 353, '1590013504.jpeg', '2020-05-21 16:51:51', '2020-05-21 16:51:51'),
(147, 17, 'Pasta', 236.00, 'Deserunt laborum aliquam totam ut. Laborum consequatur in recusandae error ut nisi exercitationem. A aut incidunt in voluptas reiciendis architecto esse. Suscipit rerum voluptas deserunt ut maiores.', 'Pasta', 250, '1590013504.jpeg', '2020-05-21 16:51:51', '2020-05-21 16:51:51'),
(148, 18, 'Supa', 109.00, 'Cupiditate et sint exercitationem aliquam ratione dolores. Est reiciendis quo non enim odio.', 'Supa', 291, '1589928897.jpeg', '2020-05-21 16:51:51', '2020-05-21 16:51:51'),
(149, 28, 'Pica', 765.00, 'Facilis nam magnam voluptates molestiae. Occaecati non qui architecto et natus ut. Officia dolorum illo aut voluptatem quisquam distinctio. Sunt distinctio praesentium ut debitis eligendi sed nam beatae.', 'Pica', 303, '1590014834.jpeg', '2020-05-21 16:51:51', '2020-05-21 16:51:51'),
(150, 10, 'Sendvic', 245.00, 'Consequuntur enim repellendus qui qui unde laudantium reprehenderit quia. Vero quia aliquid quo nobis mollitia molestiae. Saepe impedit in non rem nihil. Vel voluptatibus quia at ut et.', 'Sendvic', 284, '1590015231.jpeg', '2020-05-21 16:51:51', '2020-05-21 16:51:51'),
(151, 20, 'Sendvic', 899.00, 'Sunt omnis aut voluptatem id nisi quas. Facere est dolorem veritatis voluptas impedit. Voluptate non neque culpa doloribus. Nemo cupiditate deleniti consequatur aspernatur voluptatem ducimus odio et.', 'Sendvic', 441, '1590015231.jpeg', '2020-05-21 16:51:51', '2020-05-21 16:51:51'),
(152, 24, 'Supa', 615.00, 'Blanditiis omnis iure sed et. Ipsam consequuntur assumenda vero excepturi est. Voluptate ad culpa deserunt dolores. Aut dolores hic laborum voluptatem.', 'Supa', 431, '1589928897.jpeg', '2020-05-21 16:51:51', '2020-05-21 16:51:51'),
(153, 23, 'Supa', 753.00, 'Et ea rerum molestiae pariatur. Ipsam delectus aut reiciendis totam aut. Soluta odio quibusdam reiciendis officiis deserunt qui animi magni. Et odit similique tempore et deleniti asperiores ad.', 'Supa', 308, '1589928897.jpeg', '2020-05-21 16:51:51', '2020-05-21 16:51:51'),
(154, 16, 'Pica', 728.00, 'Ut sunt eligendi sit nulla ea aperiam qui rerum. Qui voluptate aut aperiam et suscipit et autem. Molestiae repudiandae quos a possimus et quod. Ea beatae laboriosam et consectetur quia quia quia.', 'Pica', 407, '1590014834.jpeg', '2020-05-21 16:51:51', '2020-05-21 16:51:51'),
(155, 23, 'Pasta', 682.00, 'Eveniet qui aut eum non impedit. Iure sequi non omnis quasi id velit earum tenetur. Dolorem et consequatur vitae explicabo cupiditate expedita consequatur. Ut modi occaecati ut optio fuga laboriosam.', 'Pasta', 357, '1590013504.jpeg', '2020-05-21 16:51:52', '2020-05-21 16:51:52'),
(156, 12, 'Salata', 295.00, 'Est sed omnis aut aliquam. Qui aspernatur ut aut repellat. Ratione quia minus illum facere neque culpa.', 'Salata', 323, '1589932587.jpeg', '2020-05-21 16:51:52', '2020-05-21 16:51:52'),
(157, 17, 'Supa', 314.00, 'Sed dicta quod eveniet sint omnis esse aliquam. Nihil sint reprehenderit aut quibusdam. Necessitatibus vero distinctio cupiditate ut quia quidem molestiae. Aut facere debitis non veritatis magni impedit incidunt.', 'Supa', 279, '1589928897.jpeg', '2020-05-21 16:51:52', '2020-05-21 16:51:52'),
(158, 0, 'Salata', 717.00, 'Vel ipsum sequi voluptatum. Laudantium incidunt labore id occaecati tempora nihil vero. Aut sunt rerum quod quidem.', 'Salata', 491, '1589932587.jpeg', '2020-05-21 16:51:52', '2020-05-21 16:51:52'),
(159, 20, 'Susi', 716.00, 'Perferendis officiis aut voluptas numquam maiores. Praesentium magnam laborum deleniti enim quisquam aspernatur quia porro. Ut porro repudiandae provident ut. Commodi numquam doloremque sint enim recusandae.', 'Susi', 466, '1590017444.jpeg', '2020-05-21 16:51:52', '2020-05-21 16:51:52'),
(160, 27, 'Salata', 921.00, 'Repellat adipisci eum nam quod. Alias voluptatem excepturi ducimus exercitationem. Nobis ipsum quod quam dolor illo nulla nemo eveniet. Nostrum consequatur aperiam quam fugit ut. Quis iure soluta vitae.', 'Salata', 439, '1589932587.jpeg', '2020-05-21 16:51:52', '2020-05-21 16:51:52'),
(161, 21, 'Pasta', 233.00, 'Sunt temporibus nesciunt deleniti aut explicabo corporis suscipit. Consequuntur maiores saepe rerum sed esse culpa. Repellendus illum omnis exercitationem est. Veritatis ipsum qui repudiandae accusantium magni dolorem fugiat. Laboriosam voluptatibus molestiae consequatur ut doloremque.', 'Pasta', 276, '1590013504.jpeg', '2020-05-21 16:51:52', '2020-05-21 16:51:52'),
(162, 29, 'Susi', 353.00, 'Labore ut quis quibusdam architecto expedita. Amet quaerat velit quas molestiae. Dicta exercitationem perferendis provident. Minus ipsa et dicta adipisci labore et.', 'Susi', 358, '1590017444.jpeg', '2020-05-21 16:51:52', '2020-05-21 16:51:52'),
(163, 7, 'Supa', 505.00, 'Ex porro inventore quia voluptas cumque. Delectus laborum velit incidunt qui et atque. Ratione eveniet porro saepe voluptatem quos dolores est. Labore explicabo error nostrum.', 'Supa', 335, '1589928897.jpeg', '2020-05-21 16:51:53', '2020-05-21 16:51:53'),
(164, 13, 'Supa', 402.00, 'Voluptatem et et voluptas voluptatem beatae. Aut omnis aperiam et aperiam voluptatem quaerat libero explicabo. Fuga quasi veritatis vel esse reprehenderit repellat laudantium. Error cupiditate cupiditate veniam provident beatae.', 'Supa', 303, '1589928897.jpeg', '2020-05-21 16:51:53', '2020-05-21 16:51:53'),
(165, 2, 'Pasta', 785.00, 'Et qui porro rem aut porro itaque aut. Qui dolorum et iure eos nemo.', 'Pasta', 429, '1590013504.jpeg', '2020-05-21 16:51:53', '2020-05-21 16:51:53'),
(166, 16, 'Susi', 139.00, 'Cumque impedit deserunt doloremque nemo. Laudantium omnis voluptatem voluptatibus magnam dignissimos eos aliquam. Quia eos nostrum quibusdam odit est nesciunt quis.', 'Susi', 323, '1590017444.jpeg', '2020-05-21 16:51:53', '2020-05-21 16:51:53'),
(167, 10, 'Susi', 478.00, 'Ratione reprehenderit vitae aliquid sit ea velit vel aliquam. Necessitatibus nostrum accusamus voluptas minima odit. Laudantium aliquid ducimus ipsa rem. Aspernatur est et assumenda aspernatur.', 'Susi', 360, '1590017444.jpeg', '2020-05-21 16:51:53', '2020-05-21 16:51:53'),
(168, 1, 'Rostilj', 955.00, 'Mollitia expedita consequatur excepturi consequuntur magnam. Odit magnam ducimus laudantium sequi ullam. Ducimus excepturi laborum nihil illum temporibus sunt. Nisi qui mollitia omnis sunt itaque nobis suscipit et.', 'Rostilj', 273, '1590020436.jpeg', '2020-05-21 16:51:53', '2020-05-21 16:51:53'),
(169, 1, 'Salata', 191.00, 'Qui ab iste aut mollitia laborum ea. Nulla voluptatem in dolores. Maxime quod repudiandae vero minima et dolore facere consectetur. Aliquid esse tempore in et.', 'Salata', 436, '1589932587.jpeg', '2020-05-21 16:51:53', '2020-05-21 16:51:53'),
(170, 18, 'Rostilj', 949.00, 'Rerum distinctio voluptatem nihil occaecati exercitationem perspiciatis. Ex vel ab ipsa voluptas cupiditate consequatur sit. Quod officiis voluptate tempore aut debitis qui sint. Et vitae eum quas totam.', 'Rostilj', 499, '1590020436.jpeg', '2020-05-21 16:51:53', '2020-05-21 16:51:53'),
(171, 9, 'Sendvic', 891.00, 'Quo aliquam saepe amet voluptatem quis debitis. Aut optio ab possimus sed similique aut. Sed molestiae aut necessitatibus. Quia dolor id architecto labore quae sunt. Vitae rem voluptates eum occaecati.', 'Sendvic', 483, '1590015231.jpeg', '2020-05-21 16:51:53', '2020-05-21 16:51:53'),
(172, 24, 'Susi', 997.00, 'Eos porro molestias asperiores dolorem tenetur temporibus qui. Est sit dolorem natus suscipit est.', 'Susi', 339, '1590017444.jpeg', '2020-05-21 16:51:53', '2020-05-21 16:51:53'),
(173, 9, 'Salata', 944.00, 'Deserunt et perspiciatis iusto minus sunt ex sed. Eligendi et qui repellendus dignissimos dolorem maxime possimus et. Dolor maxime mollitia est minima tempora.', 'Salata', 396, '1589932587.jpeg', '2020-05-21 16:51:54', '2020-05-21 16:51:54'),
(174, 12, 'Sendvic', 765.00, 'Debitis est enim quam dolor. Omnis consequatur dolorum laudantium voluptas. Possimus ex exercitationem magnam incidunt. Et ab consequuntur aut minus.', 'Sendvic', 354, '1590015231.jpeg', '2020-05-21 16:51:54', '2020-05-21 16:51:54'),
(175, 20, 'Susi', 279.00, 'Rem sed nam minus nostrum reiciendis est molestias. Qui facilis repellendus assumenda. Quibusdam porro facilis voluptatibus adipisci. Temporibus expedita beatae repudiandae. Architecto est animi iusto ut similique.', 'Susi', 432, '1590017444.jpeg', '2020-05-21 16:51:54', '2020-05-21 16:51:54'),
(176, 16, 'Pasta', 540.00, 'Quae similique eos maxime nemo in quo modi. Accusamus soluta ex at minus porro cumque. Aspernatur dignissimos qui sint illum doloremque accusantium.', 'Pasta', 367, '1590013504.jpeg', '2020-05-21 16:51:54', '2020-05-21 16:51:54'),
(177, 12, 'Sendvic', 286.00, 'Ea doloremque saepe consequatur amet molestiae consectetur. Atque sint voluptatem rerum similique maxime eaque non.', 'Sendvic', 462, '1590015231.jpeg', '2020-05-21 16:51:54', '2020-05-21 16:51:54'),
(178, 4, 'Pasta', 410.00, 'Inventore ea dolores iusto reprehenderit et quis. Quaerat esse enim et sunt sit enim et. Quo voluptatum ratione dolorum. Debitis non qui quasi explicabo.', 'Pasta', 415, '1590013504.jpeg', '2020-05-21 16:51:54', '2020-05-21 16:51:54'),
(179, 24, 'Sendvic', 223.00, 'Qui nesciunt aspernatur sit qui libero qui consequatur aut. Sit dolore earum a asperiores et ratione iure. Id non accusantium doloremque ipsam et aut blanditiis.', 'Sendvic', 361, '1590015231.jpeg', '2020-05-21 16:51:54', '2020-05-21 16:51:54'),
(180, 24, 'Supa', 665.00, 'Blanditiis quia et architecto deleniti qui. Rerum doloremque ut odit molestias nemo deserunt voluptates. Porro soluta ut consequatur iusto cupiditate labore. Libero placeat assumenda blanditiis quam aspernatur earum.', 'Supa', 402, '1589928897.jpeg', '2020-05-21 16:51:54', '2020-05-21 16:51:54'),
(181, 3, 'Pica', 127.00, 'Natus labore soluta sed magnam nihil sequi voluptatibus. Eligendi sint consequatur ipsa ut deserunt ea amet ut. Ut quia ut harum totam velit minima.', 'Pica', 380, '1590014834.jpeg', '2020-05-21 16:51:54', '2020-05-21 16:51:54'),
(182, 11, 'Supa', 420.00, 'Atque quibusdam aperiam eaque qui vitae aperiam. Vel fuga doloremque omnis repellendus suscipit in dignissimos. Et pariatur ipsum autem praesentium maxime.', 'Supa', 488, '1589928897.jpeg', '2020-05-21 16:51:55', '2020-05-21 16:51:55'),
(183, 19, 'Supa', 772.00, 'Nemo sed qui non officiis enim. Dolores dolorum ex sunt vero nobis accusamus libero. Dolorem delectus odit repellat iste dolor voluptatibus doloribus.', 'Supa', 331, '1589928897.jpeg', '2020-05-21 16:51:55', '2020-05-21 16:51:55'),
(184, 29, 'Pica', 170.00, 'Tenetur soluta explicabo distinctio tempore officia ullam. At possimus deserunt consequatur officiis. Et qui consequuntur magni aperiam.', 'Pica', 314, '1590014834.jpeg', '2020-05-21 16:51:55', '2020-05-21 16:51:55');
INSERT INTO `jelos` (`id`, `id_rest`, `naziv`, `cena`, `sastojci`, `vrsta`, `gramaza`, `slika`, `created_at`, `updated_at`) VALUES
(185, 22, 'Sendvic', 154.00, 'Atque occaecati eius quo voluptatem modi nemo enim. Modi laudantium quos hic ea praesentium voluptatem. Ut sed et dolorem itaque consequatur ipsam explicabo. Placeat autem optio facilis eveniet quia dolorem aperiam. Vitae quos mollitia sed non porro sequi.', 'Sendvic', 500, '1590015231.jpeg', '2020-05-21 16:51:55', '2020-05-21 16:51:55'),
(186, 25, 'Pasta', 507.00, 'Sint unde eligendi modi nihil occaecati est natus. Tempora id ipsam sint voluptas rem quam eum. Ipsa autem aspernatur laboriosam.', 'Pasta', 297, '1590013504.jpeg', '2020-05-21 16:51:55', '2020-05-21 16:51:55'),
(187, 10, 'Pica', 243.00, 'Facilis fugit necessitatibus pariatur sed repellat suscipit et excepturi. Est neque illo repellat quia. Vero rerum aliquid nostrum dicta quibusdam.', 'Pica', 358, '1590014834.jpeg', '2020-05-21 16:51:55', '2020-05-21 16:51:55'),
(188, 20, 'Rostilj', 227.00, 'Officiis qui rerum ab eligendi. Laudantium eum ipsam dolorem praesentium vero non. Enim vel deserunt laboriosam sed vel. Voluptate doloremque quis sit.', 'Rostilj', 202, '1590020436.jpeg', '2020-05-21 16:51:55', '2020-05-21 16:51:55'),
(189, 6, 'Supa', 646.00, 'Sunt fugiat id atque aut cum officiis provident. Quia ut quidem sequi provident unde atque qui vero.', 'Supa', 218, '1589928897.jpeg', '2020-05-21 16:51:55', '2020-05-21 16:51:55'),
(190, 11, 'Rostilj', 961.00, 'Corrupti magnam vel officiis et nesciunt ipsa id. Facilis asperiores sed perspiciatis soluta non aut. Quod nulla corrupti omnis fuga. Pariatur deserunt commodi illo excepturi minus et.', 'Rostilj', 233, '1590020436.jpeg', '2020-05-21 16:51:55', '2020-05-21 16:51:55'),
(191, 0, 'Sendvic', 436.00, 'Omnis non in hic laborum esse ex corporis. Ea tempore vero autem necessitatibus quas cumque eligendi enim. Ullam tempore quidem quia tempore. Repellat optio quisquam minus fugiat unde voluptate necessitatibus quia.', 'Sendvic', 480, '1590015231.jpeg', '2020-05-21 16:51:55', '2020-05-21 16:51:55'),
(192, 4, 'Sendvic', 228.00, 'Et nostrum ipsa voluptatibus non ut et. Reprehenderit ad blanditiis accusantium provident inventore esse. Cum possimus nihil occaecati earum.', 'Sendvic', 209, '1590015231.jpeg', '2020-05-21 16:51:55', '2020-05-21 16:51:55'),
(193, 27, 'Sendvic', 920.00, 'Vitae repudiandae quibusdam eligendi nisi provident nemo ipsum. Laboriosam quis aperiam facere a ut. Magni commodi voluptatem iusto excepturi enim harum ea. Et aperiam eligendi sed aperiam similique aut cumque dolorum. Ut earum ad corrupti aperiam est porro.', 'Sendvic', 368, '1590015231.jpeg', '2020-05-21 16:51:56', '2020-05-21 16:51:56'),
(194, 10, 'Pasta', 281.00, 'Est repellendus dolores quo. Sequi consequatur iusto tenetur laudantium aut ut.', 'Pasta', 380, '1590013504.jpeg', '2020-05-21 16:51:56', '2020-05-21 16:51:56'),
(195, 13, 'Sendvic', 612.00, 'Voluptatem voluptatem accusamus aliquid harum dolores dolor. Est dolores magni saepe sunt omnis beatae. Autem amet nostrum similique repellendus corporis voluptatem.', 'Sendvic', 302, '1590015231.jpeg', '2020-05-21 16:51:56', '2020-05-21 16:51:56'),
(196, 23, 'Susi', 910.00, 'Modi ut quia ut voluptate voluptas ipsa sint. Non a praesentium dolorem atque. Minima quasi et alias cumque enim rem.', 'Susi', 221, '1590017444.jpeg', '2020-05-21 16:51:56', '2020-05-21 16:51:56'),
(197, 11, 'Salata', 363.00, 'Et ea et molestiae repellendus non neque aut. Labore sunt hic amet. Corrupti tempore fuga est.', 'Salata', 405, '1589932587.jpeg', '2020-05-21 16:51:56', '2020-05-21 16:51:56'),
(198, 2, 'Rostilj', 523.00, 'Sunt aliquam dolor iusto autem illum et blanditiis. Nisi neque qui debitis veritatis unde dicta autem.', 'Rostilj', 395, '1590020436.jpeg', '2020-05-21 16:51:56', '2020-05-21 16:51:56'),
(199, 11, 'Pasta', 455.00, 'Et ex blanditiis in repellat sapiente. Qui velit vel odit libero et.', 'Pasta', 205, '1590013504.jpeg', '2020-05-21 16:51:57', '2020-05-21 16:51:57'),
(200, 6, 'Rostilj', 647.00, 'Amet temporibus aliquam iste praesentium. Saepe aliquam dolores ut necessitatibus cupiditate possimus sapiente officia. Et itaque minus dolor quisquam consequuntur autem reprehenderit.', 'Rostilj', 460, '1590020436.jpeg', '2020-05-21 16:51:57', '2020-05-21 16:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `komentars`
--

CREATE TABLE `komentars` (
  `id` bigint UNSIGNED NOT NULL,
  `id_rest` bigint UNSIGNED NOT NULL,
  `id_kor` bigint UNSIGNED NOT NULL,
  `tekst` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `korisniks`
--

CREATE TABLE `korisniks` (
  `id` bigint UNSIGNED NOT NULL,
  `ime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prezime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sifra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodovi` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `korisniks`
--

INSERT INTO `korisniks` (`id`, `ime`, `prezime`, `adresa`, `telefon`, `pol`, `email`, `sifra`, `bodovi`, `created_at`, `updated_at`) VALUES
(1, 'Liliana', 'Bartell', '53442 Crona Ford Apt. 026\nNorth Lillybury, CA 55393', '592.921.4185 x6998', 'muski', 'zetta82@example.net', '123', 89.84, '2020-05-21 16:50:26', '2020-05-21 16:56:39'),
(2, 'Larue', 'Harvey', '302 Roscoe Mountains\nNorth Brittany, AR 74480', '239-992-9323', 'muski', 'beahan.travon@example.org', '123', 0.00, '2020-05-21 16:50:26', '2020-05-21 16:50:26'),
(3, 'Beulah', 'Dach', '27182 Julio Spur\nTerryland, MA 13384', '580.934.0232', 'muski', 'koch.olga@example.com', '123', 0.00, '2020-05-21 16:50:27', '2020-05-21 16:50:27'),
(4, 'Ralph', 'Rath', '76104 Ena Crest\nGregoriashire, CA 28785-8954', '905-954-2951 x77335', 'muski', 'alana.williamson@example.net', '123', 0.00, '2020-05-21 16:50:27', '2020-05-21 16:50:27'),
(5, 'Mavis', 'Corkery', '988 Abbey Unions Suite 693\nWittinghaven, OK 28963-5170', '1-534-327-1586 x270', 'muski', 'cecil.padberg@example.org', '123', 0.00, '2020-05-21 16:50:27', '2020-05-21 16:50:27'),
(6, 'Thurman', 'Goodwin', '7702 Lupe Walks Suite 688\nSchoentown, OK 75214-2696', '+18527391404', 'muski', 'lkshlerin@example.org', '123', 0.00, '2020-05-21 16:50:54', '2020-05-21 16:50:54'),
(7, 'Amari', 'Howe', '8130 Shane Groves Apt. 729\nKadinton, WA 19488-4428', '946-785-3650', 'muski', 'lorenz09@example.org', '123', 0.00, '2020-05-21 16:50:54', '2020-05-21 16:50:54'),
(8, 'Reagan', 'Mosciski', '9505 Adele Trail\nBudchester, MO 07489', '829.313.8561 x8880', 'muski', 'wilhelmine.yost@example.com', '123', 0.00, '2020-05-21 16:50:54', '2020-05-21 16:50:54'),
(9, 'Dominic', 'Will', '3691 Ally Coves Apt. 059\nNorth Brant, ID 79687', '+1.870.383.4578', 'muski', 'quinten91@example.org', '123', 0.00, '2020-05-21 16:50:54', '2020-05-21 16:50:54'),
(10, 'Esta', 'Torphy', '6968 Tate Ford\nSouth Domenic, ND 08669', '946.480.0672', 'muski', 'meagan45@example.org', '123', 0.00, '2020-05-21 16:50:54', '2020-05-21 16:50:54'),
(11, 'Alek', 'Kerluke', '5596 Schimmel Mews Apt. 086\nPaulview, WY 66833', '1-879-389-6449 x6080', 'muski', 'gulgowski.marguerite@example.net', '123', 0.00, '2020-05-21 16:51:30', '2020-05-21 16:51:30'),
(12, 'Concepcion', 'Miller', '5005 Pouros Way Apt. 028\nNew Kaylahton, MN 07779', '1-842-953-2736 x671', 'muski', 'conrad99@example.org', '123', 0.00, '2020-05-21 16:51:30', '2020-05-21 16:51:30'),
(13, 'Roma', 'Jacobi', '3127 Westley Plains Suite 034\nMollieton, PA 05397-4699', '325-925-7521', 'muski', 'kallie03@example.net', '123', 0.00, '2020-05-21 16:51:30', '2020-05-21 16:51:30'),
(14, 'Arnoldo', 'Crooks', '65242 Jewell Mountains Suite 007\nGleasonbury, OR 76122-1743', '634-325-6144 x755', 'muski', 'sheridan.wuckert@example.com', '123', 0.00, '2020-05-21 16:51:30', '2020-05-21 16:51:30'),
(15, 'Lizeth', 'Prosacco', '13483 Cole Burgs\nMonahanville, TX 23761', '257-890-7589 x2122', 'muski', 'gabshire@example.com', '123', 0.00, '2020-05-21 16:51:30', '2020-05-21 16:51:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_05_13_203656_create_korisniks_table', 1),
(2, '2020_05_13_203739_create_restorans_table', 1),
(3, '2020_05_16_203500_create_komentars_table', 1),
(4, '2020_05_16_205352_create_jelos_table', 1),
(5, '2020_05_16_221452_create_ocenas_table', 1),
(6, '2020_05_18_172011_create_poruceno_jelos_table', 1),
(7, '2020_05_18_172311_create_porudzbinas_table', 1),
(8, '2020_05_20_002934_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ocenas`
--

CREATE TABLE `ocenas` (
  `id` bigint UNSIGNED NOT NULL,
  `restoran_id` bigint UNSIGNED NOT NULL,
  `korisnik_id` bigint UNSIGNED NOT NULL,
  `vrednost` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poruceno_jelos`
--

CREATE TABLE `poruceno_jelos` (
  `id` bigint UNSIGNED NOT NULL,
  `id_jelo` bigint UNSIGNED NOT NULL,
  `id_porudz` bigint UNSIGNED NOT NULL,
  `kvantitet` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `poruceno_jelos`
--

INSERT INTO `poruceno_jelos` (`id`, `id_jelo`, `id_porudz`, `kvantitet`, `created_at`, `updated_at`) VALUES
(1, 114, 1, 1, '2020-05-21 16:54:41', '2020-05-21 16:54:41'),
(2, 28, 1, 1, '2020-05-21 16:54:44', '2020-05-21 16:54:44'),
(3, 90, 1, 1, '2020-05-21 16:54:52', '2020-05-21 16:54:53'),
(4, 20, 2, 1, '2020-05-21 16:56:25', '2020-05-21 16:56:25'),
(5, 61, 2, 1, '2020-05-21 16:56:28', '2020-05-21 16:56:29');

-- --------------------------------------------------------

--
-- Table structure for table `porudzbinas`
--

CREATE TABLE `porudzbinas` (
  `id` bigint UNSIGNED NOT NULL,
  `id_kor` bigint UNSIGNED NOT NULL,
  `cena_bez_pop` double(8,2) DEFAULT NULL,
  `cena_sa_pop` double(8,2) DEFAULT NULL,
  `adresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nacin_placanja` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brKartice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `porudzbinas`
--

INSERT INTO `porudzbinas` (`id`, `id_kor`, `cena_bez_pop`, `cena_sa_pop`, `adresa`, `nacin_placanja`, `brKartice`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2006.00, NULL, '53442 Crona Ford Apt. 026North Lillybury, CA 55393', 'kes', NULL, 'poruceno', '2020-05-21 16:54:40', '2020-05-21 16:55:01'),
(2, 1, NULL, 898.40, '53442 Crona Ford Apt. 026North Lillybury, CA 55393', 'kes', NULL, 'poruceno', '2020-05-21 16:56:25', '2020-05-21 16:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `restorans`
--

CREATE TABLE `restorans` (
  `id` bigint UNSIGNED NOT NULL,
  `naziv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokacija` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opstina` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vreme_od` time NOT NULL,
  `vreme_do` time NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sifra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slika` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opis` text COLLATE utf8mb4_unicode_ci,
  `ocena` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restorans`
--

INSERT INTO `restorans` (`id`, `naziv`, `telefon`, `lokacija`, `opstina`, `tip`, `vreme_od`, `vreme_do`, `email`, `sifra`, `slika`, `opis`, `ocena`, `created_at`, `updated_at`) VALUES
(1, 'Kaylie', '(814) 309-5380 x92050', '789 Weber Loaf Apt. 403\nPort Noraton, CO 54020', 'Vracar', 'Meksicka', '10:00:00', '22:00:00', 'aschimmel@example.org', '123', '1589928850.png', 'Nobis vero quaerat dicta et et quam nam. Illum minus dolor facere nesciunt deserunt laudantium nostrum. Dolores earum delectus tenetur facilis.', 0.00, '2020-05-21 16:51:30', '2020-05-21 16:51:30'),
(2, 'Dolores', '(321) 269-8211 x020', '275 Adams Via\nLake Paul, NH 86248', 'Novi Beograd', 'Brza hrana', '10:00:00', '22:00:00', 'lowe.hosea@example.org', '123', '1590014126.png', 'Sed voluptatum nesciunt accusantium vero nostrum vitae sit. Iste totam voluptates deserunt voluptatem soluta accusamus exercitationem. Dolor dolores error qui vero a et porro. Excepturi magni autem nisi et.', 0.00, '2020-05-21 16:51:31', '2020-05-21 16:51:31'),
(3, 'Dolly', '1-902-347-9209 x677', '61477 Adolfo Garden\nFritschbury, OH 89108', 'Vozdovac', 'Brza hrana', '10:00:00', '22:00:00', 'jerrell.gutkowski@example.net', '123', '1589905772.jpeg', 'Natus deserunt molestiae voluptas dolorem odit voluptas aut. Et deleniti nulla totam natus et sed quas. Ut unde et hic eaque repellendus doloremque. Consequatur asperiores qui consectetur.', 0.00, '2020-05-21 16:51:31', '2020-05-21 16:51:31'),
(4, 'Alene', '1-339-541-4744', '407 Damaris Brooks\nNew Rosemarie, IL 16348', 'Vracar', 'Brza hrana', '10:00:00', '22:00:00', 'corwin.alva@example.com', '123', '1590014126.png', 'Quos dolores dicta id. Assumenda omnis natus natus beatae sapiente. Modi praesentium ullam distinctio et aut nostrum fugiat.', 0.00, '2020-05-21 16:51:31', '2020-05-21 16:51:31'),
(5, 'Julianne', '384-263-5390 x4385', '113 Romaguera Port\nDanielton, GA 38163', 'Vozdovac', 'Brza hrana', '10:00:00', '22:00:00', 'barton.gussie@example.org', '123', '1590014126.png', 'Dolorem aut omnis deleniti sit asperiores ea ut. Vero ullam voluptatem vel. Sed animi tenetur ullam soluta quia consequatur.', 0.00, '2020-05-21 16:51:31', '2020-05-21 16:51:31'),
(6, 'Dominique', '521.603.7672 x5486', '830 Blaze Avenue Apt. 928\nEast Judge, IL 73655', 'Stari grad', 'Brza hrana', '10:00:00', '22:00:00', 'madeline38@example.com', '123', '1589905772.jpeg', 'Dicta eum omnis a et aspernatur omnis. Repudiandae laudantium repellat consectetur. Vel quibusdam accusantium sit ratione unde in.', 0.00, '2020-05-21 16:51:31', '2020-05-21 16:51:31'),
(7, 'Torrey', '1-851-507-3909 x37139', '3871 Keebler Shoal Suite 346\nGlovermouth, WV 61183', 'Novi Beograd', 'Azijska', '10:00:00', '22:00:00', 'opfeffer@example.net', '123', '1589928850.png', 'Fugit aspernatur est hic eveniet aut aut. Reprehenderit ad magnam similique necessitatibus ipsam. Aut voluptatem quidem eum rerum et. Quas aperiam quas magni velit praesentium et dolores.', 0.00, '2020-05-21 16:51:31', '2020-05-21 16:51:31'),
(8, 'Brent', '543.651.8856 x6875', '7625 Christina Islands Apt. 301\nLibbieville, AR 60800', 'Stari grad', 'Italijanska', '10:00:00', '22:00:00', 'theresia22@example.org', '123', '1590017078.jpeg', 'Dignissimos cupiditate molestias placeat sapiente molestiae. Sint qui deserunt voluptate placeat eaque laboriosam qui ea. Reiciendis et velit quam iste minus corporis numquam et.', 0.00, '2020-05-21 16:51:32', '2020-05-21 16:51:32'),
(9, 'Adolphus', '434.545.3894 x000', '1500 Zetta Rapids Suite 255\nEast Julianaport, KS 19936-2457', 'Vozdovac', 'Meksicka', '10:00:00', '22:00:00', 'twiza@example.org', '123', '1590017078.jpeg', 'Totam dolores veniam error est quasi recusandae et. Aspernatur rerum natus dolorem rerum neque. Quo saepe commodi enim at qui.', 0.00, '2020-05-21 16:51:32', '2020-05-21 16:51:32'),
(10, 'Reilly', '+18714048846', '7827 Courtney Tunnel\nSouth Dellview, ND 79925-8161', 'Novi Beograd', 'Meksicka', '10:00:00', '22:00:00', 'kristian34@example.net', '123', '1590014126.png', 'Necessitatibus voluptatum earum mollitia dignissimos sint vero. Dolorum molestias sit id assumenda mollitia facilis recusandae ut. Similique repellendus et commodi aliquid est quidem.', 0.00, '2020-05-21 16:51:32', '2020-05-21 16:51:32'),
(11, 'America', '+1.280.876.3375', '500 Spencer Streets Apt. 907\nLemkebury, AZ 21873-3086', 'Stari grad', 'Meksicka', '10:00:00', '22:00:00', 'wwisoky@example.net', '123', '1589928850.png', 'Excepturi dignissimos perferendis dolorum placeat voluptatum quibusdam ut. Delectus aliquid pariatur explicabo et dolores reiciendis. Molestias harum quia error aut nesciunt.', 0.00, '2020-05-21 16:51:32', '2020-05-21 16:51:32'),
(12, 'Kamron', '+1-528-425-6060', '5450 Greenholt Way\nPurdystad, SC 87072-3058', 'Stari grad', 'Meksicka', '10:00:00', '22:00:00', 'hoppe.will@example.net', '123', '1589905772.jpeg', 'Qui officia ut est veniam commodi asperiores. Esse quia repudiandae laborum perferendis et ut et.', 0.00, '2020-05-21 16:51:32', '2020-05-21 16:51:32'),
(13, 'Yazmin', '1-578-616-1464 x443', '1857 Orpha Ways\nStromanchester, WI 89462', 'Vracar', 'Brza hrana', '10:00:00', '22:00:00', 'andrew.kihn@example.net', '123', '1589928850.png', 'Consequatur minus voluptatem aut illum molestiae maxime ut. Ipsum sint dolores maiores alias nihil a. Magnam incidunt ut dolorem perspiciatis id. Impedit quia ab placeat similique perferendis voluptate quia.', 0.00, '2020-05-21 16:51:32', '2020-05-21 16:51:32'),
(14, 'Electa', '296-619-4554', '410 Heidenreich Knolls\nHerzogmouth, NM 75703', 'Novi Beograd', 'Italijanska', '10:00:00', '22:00:00', 'born@example.org', '123', '1590010514.png', 'Dolorem in odit aspernatur aspernatur qui eos. Facilis consequatur sit et beatae. Voluptas dolorem quibusdam libero hic dignissimos.', 0.00, '2020-05-21 16:51:32', '2020-05-21 16:51:32'),
(15, 'Aimee', '+17679143266', '791 Bode Crossroad\nSouth Myriam, OR 33852-4451', 'Vozdovac', 'Brza hrana', '10:00:00', '22:00:00', 'mathew49@example.org', '123', '1589928850.png', 'Ut dolorem aperiam unde ut ipsam explicabo quia. Voluptas sint repellat assumenda fuga et non. Beatae dignissimos reprehenderit qui corporis dolores.', 0.00, '2020-05-21 16:51:32', '2020-05-21 16:51:32'),
(16, 'Bobby', '(267) 650-2336', '3352 Reinger Views\nAnabelchester, MT 59122', 'Vozdovac', 'Brza hrana', '10:00:00', '22:00:00', 'purdy.iliana@example.com', '123', '1589905772.jpeg', 'Ut aut ullam totam veritatis. Aspernatur cupiditate amet in hic commodi tenetur. Modi pariatur voluptatem et pariatur.', 0.00, '2020-05-21 16:51:32', '2020-05-21 16:51:32'),
(17, 'Katrine', '(314) 796-9461 x371', '808 Stiedemann Trafficway Suite 577\nHudsonbury, NM 09428-8608', 'Novi Beograd', 'Meksicka', '10:00:00', '22:00:00', 'bergstrom.daphne@example.com', '123', '1590010514.png', 'Fugiat aut rem mollitia minima. Praesentium placeat eos qui officia quidem consequuntur consequatur. Placeat autem aut ducimus rem. Commodi et ut eligendi fugiat magni.', 0.00, '2020-05-21 16:51:32', '2020-05-21 16:51:32'),
(18, 'Lelia', '(216) 633-4392', '5323 Streich Extensions Suite 685\nLake Sim, NY 02778', 'Vracar', 'Italijanska', '10:00:00', '22:00:00', 'jon55@example.org', '123', '1590017078.jpeg', 'Atque voluptatem et ipsa mollitia qui. Distinctio recusandae voluptate non deleniti minus quas ex. Velit aut ullam atque molestiae. Reprehenderit suscipit vero fugit harum quis.', 0.00, '2020-05-21 16:51:33', '2020-05-21 16:51:33'),
(19, 'Samir', '689-718-9189 x65342', '51250 Gerda Corner Apt. 726\nKassulkefort, UT 29940', 'Vozdovac', 'Italijanska', '10:00:00', '22:00:00', 'igrimes@example.net', '123', '1590010514.png', 'Omnis et aspernatur non ipsum aperiam vel. Ut expedita in expedita qui sit qui ad. Ipsam tempora rerum in.', 0.00, '2020-05-21 16:51:33', '2020-05-21 16:51:33'),
(20, 'Janick', '864.662.3996', '841 Durgan Ports Suite 621\nWeberfort, AK 10276-5202', 'Novi Beograd', 'Meksicka', '10:00:00', '22:00:00', 'qondricka@example.net', '123', '1589905772.jpeg', 'Facere in harum eum. Porro nisi distinctio fugiat et. Voluptatem placeat dolorum minus consequatur omnis. Dolorem et ut velit sapiente sed occaecati.', 0.00, '2020-05-21 16:51:33', '2020-05-21 16:51:33'),
(21, 'Christiana', '(590) 778-3381', '391 Dave Mountain Suite 546\nSouth Walker, UT 46989', 'Novi Beograd', 'Azijska', '10:00:00', '22:00:00', 'brosenbaum@example.org', '123', '1590017078.jpeg', 'Natus cum expedita maiores non dolore. Dicta a rerum quaerat dolor et ut aut. Aut doloremque harum et expedita ullam.', 0.00, '2020-05-21 16:51:33', '2020-05-21 16:51:33'),
(22, 'Naomie', '303.507.1712 x633', '984 Stiedemann Points Suite 664\nColtontown, NE 73974-2990', 'Novi Beograd', 'Italijanska', '10:00:00', '22:00:00', 'cebert@example.net', '123', '1590010514.png', 'Molestiae autem facilis iusto ut et adipisci adipisci. Exercitationem saepe dolorem nihil adipisci earum ratione aut. Assumenda magni laborum saepe eaque.', 0.00, '2020-05-21 16:51:33', '2020-05-21 16:51:33'),
(23, 'Royce', '(808) 909-4555', '721 O\'Reilly Glens\nPredovictown, LA 22137', 'Vracar', 'Italijanska', '10:00:00', '22:00:00', 'waelchi.bernie@example.com', '123', '1590017078.jpeg', 'Ipsam eius quasi aut velit et. Sunt molestiae est dolore molestias autem eveniet. Quasi enim ut dolor deserunt sint alias. Fugit corporis eos ut error sint quia.', 0.00, '2020-05-21 16:51:33', '2020-05-21 16:51:33'),
(24, 'Jaquan', '457-715-3065', '86147 Aufderhar Centers Suite 616\nAaronmouth, FL 53875', 'Stari grad', 'Brza hrana', '10:00:00', '22:00:00', 'imraz@example.org', '123', '1590010514.png', 'Repellendus laudantium provident eos aliquid vel. Saepe maxime ratione in dicta magnam aliquam ea. Quas soluta commodi praesentium eligendi. Id veritatis aut maiores fugiat esse dolorem.', 0.00, '2020-05-21 16:51:33', '2020-05-21 16:51:33'),
(25, 'Maximilian', '1-943-514-9505', '26312 Johns Plaza\nEast Justine, TN 25932', 'Stari grad', 'Azijska', '10:00:00', '22:00:00', 'pstracke@example.net', '123', '1589905772.jpeg', 'Consequuntur ut et voluptates. Est quis aut quibusdam natus iure. Dicta ipsa nam necessitatibus at et omnis aut.', 0.00, '2020-05-21 16:51:33', '2020-05-21 16:51:33'),
(26, 'Cali', '(642) 289-9559 x4163', '7084 Cole Valley\nEast Pearlieview, KY 94263', 'Stari grad', 'Italijanska', '10:00:00', '22:00:00', 'nona70@example.net', '123', '1590017078.jpeg', 'Beatae sit ut animi excepturi voluptates. Repellat dolor iste quam. Excepturi non quod dolores. Modi ullam autem perspiciatis reiciendis.', 0.00, '2020-05-21 16:51:33', '2020-05-21 16:51:33'),
(27, 'Will', '325.277.5431 x32391', '946 Jensen Flats Suite 116\nManteborough, AL 14903-8547', 'Vozdovac', 'Meksicka', '10:00:00', '22:00:00', 'johns.jayden@example.com', '123', '1590017078.jpeg', 'Omnis in autem nemo ut ad repellat. Eius et rerum sed. Ad nobis suscipit quia consequatur aut maxime. Incidunt a odit repellat molestiae consequatur amet.', 0.00, '2020-05-21 16:51:33', '2020-05-21 16:51:33'),
(28, 'Angelica', '480-394-1903 x16140', '3068 Shirley Walk Apt. 545\nDouglasshire, RI 02306-8573', 'Vozdovac', 'Azijska', '10:00:00', '22:00:00', 'tbruen@example.com', '123', '1590014126.png', 'Porro beatae exercitationem alias et laudantium quo illo. Ut et dolor blanditiis possimus dolores et.', 0.00, '2020-05-21 16:51:34', '2020-05-21 16:51:34'),
(29, 'Logan', '1-840-636-7886', '3162 Gibson Cape Suite 076\nPort Celestinoton, AL 66381', 'Vracar', 'Italijanska', '10:00:00', '22:00:00', 'yasmine42@example.net', '123', '1589928850.png', 'Ratione consequuntur et magni quis qui. Hic harum voluptatem deserunt. Consequatur magnam est saepe delectus placeat odit distinctio. Laudantium voluptatem autem dolores temporibus eos.', 0.00, '2020-05-21 16:51:34', '2020-05-21 16:51:34'),
(30, 'Daija', '(512) 358-6735 x88077', '492 Katelin Route Apt. 820\nSouth Elmer, IN 38200-2178', 'Vozdovac', 'Brza hrana', '10:00:00', '22:00:00', 'ari.kuphal@example.com', '123', '1590010514.png', 'Magni dolores omnis pariatur sunt rerum. Iste provident magnam libero. Inventore qui fugit debitis error. Accusamus eligendi labore quia sunt rerum vero eligendi.', 0.00, '2020-05-21 16:51:34', '2020-05-21 16:51:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `jelos`
--
ALTER TABLE `jelos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jelos_id_rest_index` (`id_rest`);

--
-- Indexes for table `komentars`
--
ALTER TABLE `komentars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komentars_id_rest_index` (`id_rest`);

--
-- Indexes for table `korisniks`
--
ALTER TABLE `korisniks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisniks_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ocenas`
--
ALTER TABLE `ocenas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ocenas_restoran_id_index` (`restoran_id`),
  ADD KEY `ocenas_korisnik_id_index` (`korisnik_id`);

--
-- Indexes for table `poruceno_jelos`
--
ALTER TABLE `poruceno_jelos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poruceno_jelos_id_jelo_index` (`id_jelo`),
  ADD KEY `poruceno_jelos_id_porudz_index` (`id_porudz`);

--
-- Indexes for table `porudzbinas`
--
ALTER TABLE `porudzbinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `porudzbinas_id_kor_index` (`id_kor`);

--
-- Indexes for table `restorans`
--
ALTER TABLE `restorans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restorans_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jelos`
--
ALTER TABLE `jelos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `komentars`
--
ALTER TABLE `komentars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `korisniks`
--
ALTER TABLE `korisniks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ocenas`
--
ALTER TABLE `ocenas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poruceno_jelos`
--
ALTER TABLE `poruceno_jelos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `porudzbinas`
--
ALTER TABLE `porudzbinas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `restorans`
--
ALTER TABLE `restorans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
