-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Okt 24. 08:11
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `blog`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `adatok`
--

CREATE TABLE `adatok` (
  `Id` varchar(36) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `CreatedTime` datetime NOT NULL,
  `LastUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `adatok`
--

INSERT INTO `adatok` (`Id`, `Title`, `Description`, `CreatedTime`, `LastUpdated`) VALUES
('05c295e7-c1fa-47a2-a0ad-86bdc91b1370', 'risus praesent lectus vestibul', 'lectus in quam fringilla rhoncus mauris enim leo r', '2023-11-25 18:51:41', '2024-05-03 05:24:55'),
('0e75a806-a737-466c-b291-17d01abbc2b9', 'tincidunt eget tempus vel pede', 'congue vivamus metus arcu adipiscing molestie hend', '2023-12-13 07:03:00', '2024-01-07 06:02:03'),
('121e9953-6abd-40b8-aca8-2d5e0e096adb', 'nibh quisque id justo sit amet', 'sem duis aliquam convallis nunc proin at turpis a ', '2024-07-08 19:17:02', '2024-08-10 23:52:58'),
('139c7ed8-6aba-4c10-b9c1-8519c3cb5d80', 'primis in faucibus orci luctus', 'consectetuer adipiscing elit proin risus praesent ', '2024-08-10 07:53:20', '2024-03-17 19:13:28'),
('17248708-0ed3-4fc3-bae6-1fd51b1f34ba', 'nec nisi volutpat eleifend don', 'aenean auctor gravida sem praesent id massa id nis', '2023-11-06 11:52:53', '2024-03-15 21:08:26'),
('17d5074a-1b11-417a-ac9f-9cd6b2154098', 'aliquet maecenas leo odio cond', 'eros viverra eget congue eget semper rutrum nulla ', '2024-08-12 17:02:50', '2024-01-15 16:03:33'),
('1adc0bdf-1d33-4811-921c-b6a0d50fa425', 'justo in hac habitasse platea ', 'nunc vestibulum ante ipsum primis in faucibus orci', '2024-02-27 00:09:14', '2024-08-20 03:09:44'),
('1b93fe53-d546-4765-bbff-5753622881c3', 'curae duis faucibus accumsan o', 'suspendisse potenti in eleifend quam a odio in hac', '2023-11-06 05:50:43', '2023-10-31 23:36:21'),
('25e52cc0-625c-4eec-9368-a137d90012bf', 'sit amet cursus id turpis inte', 'leo pellentesque ultrices mattis odio donec vitae ', '2024-10-06 07:36:27', '2024-06-18 18:42:00'),
('2caa246f-64b2-44c4-9d5d-cc946a20a05f', 'volutpat sapien arcu sed augue', 'nulla ultrices aliquet maecenas leo odio condiment', '2024-02-02 05:10:36', '2023-12-25 00:24:56'),
('2ea6a9b7-560e-4838-973b-b98c15ba05a1', 'donec diam neque vestibulum eg', 'vel pede morbi porttitor lorem id ligula suspendis', '2024-04-14 01:13:13', '2024-02-03 03:52:33'),
('2f5804c0-5071-45e4-b4d6-d0d38dac29b7', 'est quam pharetra magna ac con', 'curae donec pharetra magna vestibulum aliquet ultr', '2024-05-03 15:35:23', '2024-05-22 21:03:02'),
('3090d9e3-59a4-426d-aadc-204f37999851', 'tincidunt in leo maecenas pulv', 'luctus tincidunt nulla mollis molestie lorem quisq', '2024-02-05 12:41:18', '2023-12-18 10:01:43'),
('30917a78-7385-446b-b26e-25f484df264e', 'adipiscing molestie hendrerit ', 'aliquet pulvinar sed nisl nunc rhoncus dui vel sem', '2024-05-07 15:06:41', '2023-11-19 16:41:03'),
('31fb095a-ae4b-417d-8fa5-371b0307522a', 'consequat morbi a ipsum intege', 'sodales scelerisque mauris sit amet eros suspendis', '2024-05-01 03:04:22', '2024-07-06 08:35:40'),
('331b7ca2-5b2b-4c6e-b3f6-542220f12683', 'cras in purus eu magna vulputa', 'et tempus semper est quam pharetra magna ac conseq', '2024-08-27 09:44:08', '2024-07-02 12:38:40'),
('3892da2d-fa90-49ef-befc-62116f44c8e9', 'nulla quisque arcu libero rutr', 'consequat dui nec nisi volutpat eleifend donec ut ', '2024-06-07 15:44:15', '2023-12-06 16:10:36'),
('390a857c-282f-4870-80c1-60acc066b002', 'ante vestibulum ante ipsum pri', 'venenatis turpis enim blandit mi in porttitor pede', '2023-12-08 12:14:54', '2024-04-21 21:00:50'),
('3c18ea5e-974c-4502-bc48-6566daf2583d', 'in leo maecenas pulvinar lobor', 'dui nec nisi volutpat eleifend donec ut dolor morb', '2024-01-23 07:26:10', '2023-12-15 08:30:54'),
('3c98f5a3-8a5c-4cf3-82a6-e3f40ed16a4d', 'rhoncus aliquam lacus morbi qu', 'tincidunt eget tempus vel pede morbi porttitor lor', '2024-05-08 16:26:37', '2024-05-10 08:10:19'),
('3ed95c20-7b19-4fbe-b1c8-e5b5189291ff', 'lacus at velit vivamus vel nul', 'rutrum nulla tellus in sagittis dui vel nisl duis ', '2023-11-02 03:11:22', '2024-02-03 10:52:24'),
('4093dad3-ca88-4e08-aa9b-64a4da219b9e', 'nunc donec quis orci eget orci', 'ut massa quis augue luctus tincidunt nulla mollis ', '2024-04-16 00:49:43', '2024-06-20 10:05:48'),
('40ce2151-7c30-44ad-9257-b41fd6f5d150', 'odio odio elementum eu interdu', 'risus auctor sed tristique in tempus sit amet sem ', '2024-07-14 04:42:42', '2024-04-22 08:00:13'),
('41302589-9ec4-4074-9418-e39a3d1e3570', 'elementum nullam varius nulla ', 'consequat varius integer ac leo pellentesque ultri', '2024-09-06 21:16:41', '2024-05-20 14:59:17'),
('43e43255-acc9-4240-a9c9-43761de53a64', 'curae duis faucibus accumsan o', 'dui vel sem sed sagittis nam congue risus semper p', '2024-01-16 00:01:10', '2024-05-23 12:10:01'),
('46e2b424-7f61-4f18-afc0-3f0bbe139538', 'neque libero convallis eget el', 'pellentesque ultrices phasellus id sapien in sapie', '2023-11-15 04:11:11', '2023-12-07 02:19:11'),
('4c257eee-0f54-4e14-8e32-30ffad5ce135', 'semper sapien a libero nam dui', 'varius ut blandit non interdum in ante vestibulum ', '2023-12-07 19:25:47', '2024-04-30 19:27:49'),
('4d270840-91df-4dc8-91fc-f3aa679f99a7', 'at turpis donec posuere metus ', 'faucibus accumsan odio curabitur convallis duis co', '2024-01-25 03:07:42', '2024-05-17 18:54:05'),
('4ded1070-f073-4b1f-b7f7-b411104a63f8', 'sapien urna pretium nisl ut', 'convallis nunc proin at turpis a pede posuere nonu', '2024-09-29 23:42:05', '2024-02-17 09:44:51'),
('54a979fa-7053-4fbe-89ae-4b1684918ebc', 'nisl duis ac nibh fusce lacus ', 'praesent blandit lacinia erat vestibulum sed magna', '2024-09-10 03:41:58', '2023-11-23 10:13:07'),
('552218e8-f2e9-447e-944d-04c24f814385', 'ut erat curabitur gravida nisi', 'non quam nec dui luctus rutrum nulla tellus in sag', '2024-04-19 22:32:12', '2024-04-05 11:28:31'),
('5ddea48b-9584-4bef-a1c8-feb03322ffd2', 'in eleifend quam a odio in hac', 'neque sapien placerat ante nulla justo aliquam qui', '2024-06-29 17:23:59', '2024-08-16 19:04:13'),
('5ddf8071-03c7-4866-87d3-207b4cd0649d', 'nisl duis ac nibh fusce lacus ', 'nullam porttitor lacus at turpis donec posuere met', '2024-08-15 19:30:32', '2024-09-06 09:43:17'),
('5de93529-b020-4357-a41a-899e92f6b259', 'tellus nulla ut erat id mauris', 'ligula nec sem duis aliquam convallis nunc proin a', '2024-01-03 08:27:43', '2024-07-12 07:53:37'),
('615f0acd-8e6d-4821-82f1-b7ccb9091a5a', 'duis faucibus accumsan odio cu', 'iaculis diam erat fermentum justo nec condimentum ', '2024-07-10 20:30:11', '2023-12-01 12:06:41'),
('63d863f3-2d52-45a6-94ac-8e8ddd0f0697', 'scelerisque quam turpis adipis', 'eget congue eget semper rutrum nulla nunc purus ph', '2024-01-18 21:59:10', '2024-05-09 23:10:08'),
('65da3619-d909-413b-ae15-11c3a1d8ca4d', 'fermentum donec ut mauris eget', 'commodo placerat praesent blandit nam nulla intege', '2023-12-27 20:45:52', '2023-11-29 00:25:55'),
('6922afb8-9f3c-4b4b-aaa1-0bf4823e7c0a', 'habitasse platea dictumst aliq', 'eget eleifend luctus ultricies eu nibh quisque id ', '2024-07-18 21:44:36', '2024-05-05 19:36:53'),
('6ea67600-081a-4730-8354-ce6758631f34', 'sit amet consectetuer adipisci', 'cubilia curae duis faucibus accumsan odio curabitu', '2024-08-17 05:04:59', '2024-04-24 10:43:46'),
('742a3083-8361-4240-9698-a599143f3c5e', 'eget massa tempor convallis nu', 'ultrices posuere cubilia curae donec pharetra magn', '2024-01-15 01:10:28', '2024-02-08 07:36:04'),
('7b1c62e4-a944-4ed0-8194-66c4a91d901b', 'ultricies eu nibh quisque id j', 'vulputate justo in blandit ultrices enim lorem ips', '2024-04-26 01:01:40', '2023-12-10 14:32:38'),
('7cf098bb-c8ef-4be2-94af-473d2f008fe8', 'sit amet nulla quisque arcu li', 'proin risus praesent lectus vestibulum quam sapien', '2024-03-21 12:59:52', '2024-08-12 23:36:49'),
('802a2e60-bf21-4379-9f06-e90b1b0b14c5', 'curae donec pharetra magna ves', 'elementum nullam varius nulla facilisi cras non ve', '2024-07-24 15:49:18', '2024-08-09 13:51:42'),
('857d8f02-c55a-4f0b-84c1-337670714e81', 'elementum in hac habitasse pla', 'quis odio consequat varius integer ac leo pellente', '2024-04-29 05:42:35', '2023-12-30 03:14:19'),
('859fb9e7-f3a7-4505-94ed-46e36b71e72c', 'diam cras pellentesque volutpa', 'venenatis non sodales sed tincidunt eu felis fusce', '2024-03-01 20:19:06', '2023-12-21 16:14:28'),
('869d9a91-9048-4ddd-89d9-34121a4bc948', 'maecenas rhoncus aliquam lacus', 'ipsum dolor sit amet consectetuer adipiscing elit ', '2024-04-07 00:40:02', '2023-11-30 10:15:21'),
('878f7172-ac69-4cff-b701-c071f91f79f8', 'platea dictumst etiam faucibus', 'ut blandit non interdum in ante vestibulum ante ip', '2024-05-12 09:59:11', '2024-10-03 04:49:02'),
('891be739-ba22-413c-8593-543e409da6a9', 'nisi volutpat eleifend donec u', 'diam erat fermentum justo nec condimentum neque sa', '2024-04-05 07:25:02', '2023-12-29 16:03:52'),
('8f44f138-8b63-462f-a5b9-00fe471412ec', 'volutpat sapien arcu sed augue', 'mattis odio donec vitae nisi nam ultrices libero n', '2024-06-09 05:21:19', '2023-11-07 20:43:12'),
('923c2220-fde1-4243-ab14-4745819e237e', 'lacus at turpis donec posuere ', 'id luctus nec molestie sed justo pellentesque vive', '2024-07-11 01:24:06', '2024-05-15 04:40:16'),
('95a01c2d-fc48-4c96-b091-42675553b813', 'erat eros viverra eget congue ', 'eu mi nulla ac enim in tempor turpis nec euismod s', '2024-06-20 02:22:28', '2024-03-21 17:00:54'),
('965fdb70-b2e3-4d6d-98d1-db4f69d0aa25', 'ut suscipit a feugiat et eros ', 'sed tristique in tempus sit amet sem fusce consequ', '2023-10-31 03:13:24', '2023-11-01 13:37:37'),
('97c67417-cc2b-40df-9628-a0d689a571ed', 'proin interdum mauris non ligu', 'convallis nunc proin at turpis a pede posuere nonu', '2024-05-31 03:06:41', '2024-06-25 10:26:56'),
('97c7ce71-2c4b-4355-a6cd-40f9fa55d920', 'nec molestie sed justo pellent', 'quisque id justo sit amet sapien dignissim vestibu', '2023-11-24 03:42:24', '2024-03-11 09:34:35'),
('99d8acae-8441-4e82-b55c-b5042c1aa2be', 'cubilia curae mauris viverra d', 'lacus morbi sem mauris laoreet ut rhoncus aliquet ', '2024-06-29 19:28:21', '2023-11-18 00:29:41'),
('9f6fadeb-70cb-4ff3-8d6f-fea5d543bc82', 'nullam orci pede venenatis non', 'risus semper porta volutpat quam pede lobortis lig', '2024-09-06 05:58:37', '2024-08-10 16:42:20'),
('a3f10ab3-9ca0-4eaa-a201-394880fcd3a5', 'volutpat erat quisque erat ero', 'auctor gravida sem praesent id massa id nisl venen', '2024-06-06 11:43:02', '2024-10-14 22:21:34'),
('a50aecf7-9a17-486c-9a05-79c4ffeb0512', 'dui maecenas tristique est et ', 'nullam sit amet turpis elementum ligula vehicula c', '2024-03-24 02:16:19', '2023-11-20 00:25:04'),
('ab66b285-7dd9-4783-b9a2-93193956467f', 'in lectus pellentesque at null', 'sit amet turpis elementum ligula vehicula consequa', '2023-11-25 10:36:10', '2024-02-11 11:29:24'),
('b020b236-fd0f-43fe-9b0a-ca974a73d81f', 'pellentesque viverra pede ac d', 'volutpat in congue etiam justo etiam pretium iacul', '2024-06-16 17:28:37', '2023-11-23 09:57:05'),
('b2a7e432-2e17-4ce6-81b8-f7fc4df9110c', 'fermentum justo nec condimentu', 'amet turpis elementum ligula vehicula consequat mo', '2024-03-13 09:35:46', '2024-04-18 13:10:28'),
('b37b3170-7804-48ec-8b14-c1d7dc952081', 'maecenas leo odio condimentum ', 'metus arcu adipiscing molestie hendrerit at vulput', '2024-04-02 09:11:05', '2024-03-19 21:37:51'),
('b551b8d0-b054-4dab-b311-3201e3cb8d9d', 'lacinia eget tincidunt eget te', 'nisi vulputate nonummy maecenas tincidunt lacus at', '2023-10-29 19:53:27', '2024-05-13 19:48:44'),
('b559c32f-8cb1-44b9-9956-294bf5c3a9f7', 'eget rutrum at lorem integer t', 'vel sem sed sagittis nam congue risus semper porta', '2024-02-05 18:22:02', '2023-11-05 05:11:36'),
('b7fb9613-5f5e-4c6c-90b7-ccf722ab3bcf', 'porta volutpat quam pede lobor', 'amet consectetuer adipiscing elit proin interdum m', '2024-08-22 20:34:22', '2024-01-24 07:10:09'),
('ba000ed7-0aff-4fcf-8a76-11174febbef7', 'eget congue eget semper rutrum', 'ipsum primis in faucibus orci luctus et ultrices p', '2023-11-30 09:37:04', '2024-10-18 06:03:37'),
('bb6a2d58-bae7-41cd-8ff0-c14ad21f8304', 'ligula vehicula consequat morb', 'rhoncus aliquam lacus morbi quis tortor id nulla u', '2024-10-07 07:57:38', '2023-11-09 00:36:21'),
('bcb74171-38e9-4401-af1a-1aef40e1224b', 'consectetuer adipiscing elit p', 'amet nunc viverra dapibus nulla suscipit ligula in', '2024-02-18 17:20:34', '2024-05-19 06:52:51'),
('c21c8b68-6124-4b1f-acdf-2a7714d3bcd2', 'in faucibus orci luctus et', 'aenean lectus pellentesque eget nunc donec quis or', '2023-10-30 21:40:21', '2024-04-06 17:17:42'),
('c4330417-dbf4-44a9-991d-c6811e657bcb', 'curabitur gravida nisi at nibh', 'ultrices libero non mattis pulvinar nulla pede ull', '2024-09-20 08:22:32', '2024-04-11 19:27:45'),
('c723293b-855f-417c-a4a3-aa87e651c395', 'penatibus et magnis dis partur', 'ac neque duis bibendum morbi non quam nec dui luct', '2024-06-09 06:21:49', '2024-06-06 06:43:29'),
('c9dfe468-e340-4b89-8bc9-bfbb0249b07d', 'elementum ligula vehicula cons', 'nisl venenatis lacinia aenean sit amet justo morbi', '2023-11-07 06:29:32', '2024-09-05 10:52:35'),
('cc47fc2f-5e83-4d19-9579-9ae16c8821d4', 'vitae nisi nam ultrices libero', 'id turpis integer aliquet massa id lobortis conval', '2024-08-03 07:29:19', '2024-06-13 12:32:24'),
('d045d6dd-3542-4aed-9e45-7ec428086b87', 'vel pede morbi porttitor lorem', 'nisl nunc rhoncus dui vel sem sed sagittis nam con', '2024-04-05 19:42:47', '2024-01-24 17:53:49'),
('d10447be-6d6d-4611-a856-992c885a2905', 'neque libero convallis eget el', 'odio justo sollicitudin ut suscipit a feugiat et e', '2024-01-10 16:56:59', '2024-06-28 06:51:02'),
('d1a7df2d-8661-4833-8e64-cad7d9ea3622', 'justo sollicitudin ut suscipit', 'orci mauris lacinia sapien quis libero nullam sit ', '2024-10-18 11:27:48', '2024-03-21 04:54:23'),
('d2c9e56a-aaf2-430e-b404-3385cf503f76', 'non mattis pulvinar nulla pede', 'ac est lacinia nisi venenatis tristique fusce cong', '2024-09-02 12:39:24', '2024-04-12 22:48:27'),
('d44ee12b-7cea-4596-abf6-7fb60329b8a9', 'cras pellentesque volutpat dui', 'amet sem fusce consequat nulla nisl nunc nisl duis', '2024-03-23 18:32:26', '2024-07-01 07:19:29'),
('d4e42875-8c56-46cc-bcde-1d19786e848e', 'sit amet cursus id turpis inte', 'ut massa volutpat convallis morbi odio odio elemen', '2023-12-03 20:36:09', '2023-12-25 15:49:47'),
('d4f90ccc-85cf-4f15-8275-17d20f9e30c0', 'elit proin interdum mauris non', 'augue a suscipit nulla elit ac nulla sed vel enim ', '2024-06-06 03:44:24', '2024-02-11 03:05:22'),
('d74a09d7-a0c4-4ae2-a023-bbd6be0b7403', 'donec pharetra magna vestibulu', 'vestibulum sagittis sapien cum sociis natoque pena', '2024-02-13 10:30:10', '2024-07-19 02:38:28'),
('dacc2735-ea1d-40d0-aabf-8f22d57d0f8d', 'hendrerit at vulputate vitae n', 'ac nulla sed vel enim sit amet nunc viverra dapibu', '2023-11-18 00:54:10', '2024-07-16 17:16:14'),
('dc6d449f-a763-4a6d-9e5f-bad6cd4f69bd', 'condimentum neque sapien place', 'ultrices mattis odio donec vitae nisi nam ultrices', '2024-09-01 15:33:44', '2024-06-08 02:49:16'),
('de59e242-0f5e-4d93-9f01-ba423b506a89', 'at nulla suspendisse potenti c', 'pede justo eu massa donec dapibus duis at velit eu', '2024-10-15 16:48:14', '2024-01-30 02:05:25'),
('df502df1-4085-418d-81dd-6731008b9b90', 'consequat in consequat ut null', 'fusce congue diam id ornare imperdiet sapien urna ', '2023-12-24 12:08:56', '2024-03-27 15:57:32'),
('dff8b7cc-83a9-4b34-8ae5-0f1d4bb8e15c', 'a odio in hac habitasse platea', 'eget tincidunt eget tempus vel pede morbi porttito', '2024-01-26 06:04:07', '2023-11-02 22:49:47'),
('e4d978d7-9736-47c4-a238-9c00860b817f', 'ultrices enim lorem ipsum dolo', 'vestibulum proin eu mi nulla ac enim in tempor tur', '2023-11-03 15:07:56', '2024-07-19 10:35:54'),
('e6339a1c-c653-4c8f-a4be-2f7ae0bde94b', 'dapibus augue vel accumsan tel', 'ac leo pellentesque ultrices mattis odio donec vit', '2024-01-30 09:35:47', '2024-02-23 08:11:17'),
('e961f081-3266-42c4-b95f-faf1c2b803a8', 'lobortis est phasellus sit ame', 'phasellus in felis donec semper sapien a libero na', '2024-03-30 17:57:10', '2024-10-06 21:30:44'),
('e99c206d-c1e8-4694-8d66-f0dc35d90e1d', 'non velit nec nisi vulputate n', 'viverra diam vitae quam suspendisse potenti nullam', '2024-07-13 23:42:12', '2024-07-15 12:28:01'),
('eb48e7bc-8f73-43d0-a786-8e2f33db8be2', 'quis orci nullam molestie nibh', 'at vulputate vitae nisl aenean lectus pellentesque', '2024-08-31 05:42:26', '2024-09-16 20:33:13'),
('eb4f283e-7bb9-42ad-a1a7-5f128819dfb7', 'pede ac diam cras pellentesque', 'sapien arcu sed augue aliquam erat volutpat in con', '2024-09-01 04:02:52', '2024-05-25 10:31:29'),
('f12c540c-20de-48a4-959e-f1986ba8a8c3', 'luctus cum sociis natoque pena', 'pharetra magna vestibulum aliquet ultrices erat to', '2024-03-16 04:02:57', '2024-05-22 03:06:23'),
('f4476ff7-4d00-46c2-9f68-9935e4349d92', 'odio elementum eu interdum eu ', 'sapien a libero nam dui proin leo odio porttitor i', '2024-02-01 17:08:45', '2024-01-27 01:21:11'),
('f5ada806-ee3d-42b2-853f-85b26c51db48', 'vel enim sit amet nunc viverra', 'pellentesque at nulla suspendisse potenti cras in ', '2024-05-15 12:07:23', '2024-06-13 19:25:33'),
('f5d0d827-8cd5-49be-b838-5c8f911297ac', 'est quam pharetra magna ac con', 'et magnis dis parturient montes nascetur ridiculus', '2024-01-09 13:07:46', '2024-03-22 11:30:24'),
('f74ad665-2cb3-436c-9034-40ef1ae6f8ca', 'purus eu magna vulputate luctu', 'mus vivamus vestibulum sagittis sapien cum sociis ', '2023-10-25 21:54:50', '2024-02-19 04:58:04'),
('fb6c7715-eecf-4629-994c-2eaec3d4099e', 'diam vitae quam suspendisse po', 'montes nascetur ridiculus mus etiam vel augue vest', '2024-08-10 21:18:45', '2024-07-23 18:23:22'),
('fbfc19df-37f5-4805-bd86-d5bc6a8d26e6', 'tortor id nulla ultrices aliqu', 'aliquet maecenas leo odio condimentum id luctus ne', '2024-06-09 21:24:55', '2024-01-07 03:11:34'),
('ff89ed5c-0df2-40b3-9829-68ec1b3113fa', 'sit amet eleifend pede libero ', 'consectetuer adipiscing elit proin risus praesent ', '2023-11-14 09:14:07', '2023-12-14 19:20:42');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `adatok`
--
ALTER TABLE `adatok`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
