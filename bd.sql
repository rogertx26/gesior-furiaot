-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 20/09/2019 às 21:58
-- Versão do servidor: 5.5.62-0ubuntu0.14.04.1
-- Versão do PHP: 5.5.9-1ubuntu4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `OT`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `password` char(40) NOT NULL,
  `secret` char(16) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `premdays` int(11) NOT NULL DEFAULT '0',
  `coins` int(12) NOT NULL DEFAULT '0',
  `lastday` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `creation` int(11) NOT NULL DEFAULT '0',
  `vote` int(11) NOT NULL DEFAULT '0',
  `key` varchar(20) NOT NULL DEFAULT '0',
  `email_new` varchar(255) NOT NULL DEFAULT '',
  `email_new_time` int(11) NOT NULL DEFAULT '0',
  `rlname` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `page_access` int(11) NOT NULL DEFAULT '0',
  `email_code` varchar(255) NOT NULL DEFAULT '',
  `next_email` int(11) NOT NULL DEFAULT '0',
  `premium_points` int(11) NOT NULL DEFAULT '0',
  `create_date` int(11) NOT NULL DEFAULT '0',
  `create_ip` int(11) NOT NULL DEFAULT '0',
  `last_post` int(11) NOT NULL DEFAULT '0',
  `flag` varchar(80) NOT NULL DEFAULT '',
  `vip_time` int(11) NOT NULL DEFAULT '0',
  `guild_points` int(11) NOT NULL DEFAULT '0',
  `guild_points_stats` int(11) NOT NULL DEFAULT '0',
  `passed` int(11) NOT NULL DEFAULT '0',
  `block` int(11) NOT NULL DEFAULT '0',
  `refresh` int(11) NOT NULL DEFAULT '0',
  `birth_date` varchar(50) NOT NULL DEFAULT '',
  `gender` varchar(20) NOT NULL DEFAULT '',
  `loyalty_points` bigint(20) NOT NULL DEFAULT '0',
  `authToken` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`),
  UNIQUE KEY `name_3` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Fazendo dump de dados para tabela `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `password`, `secret`, `type`, `premdays`, `coins`, `lastday`, `email`, `creation`, `vote`, `key`, `email_new`, `email_new_time`, `rlname`, `location`, `page_access`, `email_code`, `next_email`, `premium_points`, `create_date`, `create_ip`, `last_post`, `flag`, `vip_time`, `guild_points`, `guild_points_stats`, `passed`, `block`, `refresh`, `birth_date`, `gender`, `loyalty_points`, `authToken`) VALUES
(1, '1', '33e9c05601d4c1650fabb65d32a9233c5802785e', NULL, 1, 0, 0, 0, '', 0, 0, '0', '', 0, '', '', 9999, '', 0, 0, 0, 0, 0, 'unknown', 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(3, 'GUIX5', 'eecd605448ced2d3d78bcdbdd700f0f639d81e03', NULL, 5, 0, 513, 0, 'guilhermefamorim2020@gmail.com', 1569007411, 0, 'ZE8A-SAXO-MI6E-0AXE', '', 0, 'Dasdas Asdas', 'Asdasd', 6, '', 0, 0, 0, 2147483647, 0, 'unknown', 0, 0, 0, 0, 0, 0, '18/10/1992', 'male', 0, ''),
(4, 'GOD', '33e9c05601d4c1650fabb65d32a9233c5802785e', NULL, 5, 0, 0, 0, 'furia.suport@gmail.com', 1569028412, 0, '', '', 0, '', '', 6, '', 0, 0, 0, 2147483647, 0, 'unknown', 0, 0, 0, 0, 0, 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `account_bans`
--

CREATE TABLE IF NOT EXISTS `account_bans` (
  `account_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expires_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL,
  PRIMARY KEY (`account_id`),
  KEY `banned_by` (`banned_by`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `account_ban_history`
--

CREATE TABLE IF NOT EXISTS `account_ban_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expired_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `banned_by` (`banned_by`),
  KEY `account_id_2` (`account_id`),
  KEY `account_id_3` (`account_id`),
  KEY `account_id_4` (`account_id`),
  KEY `account_id_5` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `account_viplist`
--

CREATE TABLE IF NOT EXISTS `account_viplist` (
  `account_id` int(11) NOT NULL COMMENT 'id of account whose viplist entry it is',
  `player_id` int(11) NOT NULL COMMENT 'id of target player of viplist entry',
  `description` varchar(128) NOT NULL DEFAULT '',
  `icon` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `account_player_index` (`account_id`,`player_id`),
  KEY `account_id` (`account_id`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `announcements`
--

CREATE TABLE IF NOT EXISTS `announcements` (
  `id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `text` varchar(255) NOT NULL,
  `date` varchar(20) NOT NULL,
  `author` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `blessings_history`
--

CREATE TABLE IF NOT EXISTS `blessings_history` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `blessing` tinyint(4) NOT NULL,
  `loss` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `daily_reward_history`
--

CREATE TABLE IF NOT EXISTS `daily_reward_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `daystreak` smallint(2) NOT NULL DEFAULT '0',
  `player_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `global_storage`
--

CREATE TABLE IF NOT EXISTS `global_storage` (
  `key` varchar(32) NOT NULL,
  `value` text NOT NULL,
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `guilds`
--

CREATE TABLE IF NOT EXISTS `guilds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `creationdata` int(11) NOT NULL,
  `motd` varchar(255) NOT NULL DEFAULT '',
  `residence` int(11) NOT NULL,
  `description` text NOT NULL,
  `guild_logo` mediumblob,
  `create_ip` int(11) NOT NULL DEFAULT '0',
  `balance` bigint(20) unsigned NOT NULL DEFAULT '0',
  `last_execute_points` int(11) NOT NULL DEFAULT '0',
  `logo_gfx_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `ownerid` (`ownerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Gatilhos `guilds`
--
DROP TRIGGER IF EXISTS `oncreate_guilds`;
DELIMITER //
CREATE TRIGGER `oncreate_guilds` AFTER INSERT ON `guilds`
 FOR EACH ROW BEGIN
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('The Leader', 3, NEW.`id`);
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Vice-Leader', 2, NEW.`id`);
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Member', 1, NEW.`id`);
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `guildwar_kills`
--

CREATE TABLE IF NOT EXISTS `guildwar_kills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `killer` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  `killerguild` int(11) NOT NULL DEFAULT '0',
  `targetguild` int(11) NOT NULL DEFAULT '0',
  `warid` int(11) NOT NULL DEFAULT '0',
  `time` bigint(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `warid` (`warid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `guild_invites`
--

CREATE TABLE IF NOT EXISTS `guild_invites` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `guild_id` int(11) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL,
  PRIMARY KEY (`player_id`,`guild_id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `guild_membership`
--

CREATE TABLE IF NOT EXISTS `guild_membership` (
  `player_id` int(11) NOT NULL,
  `guild_id` int(11) NOT NULL,
  `rank_id` int(11) NOT NULL,
  `nick` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`player_id`),
  KEY `guild_id` (`guild_id`),
  KEY `rank_id` (`rank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `guild_ranks`
--

CREATE TABLE IF NOT EXISTS `guild_ranks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guild_id` int(11) NOT NULL COMMENT 'guild',
  `name` varchar(255) NOT NULL COMMENT 'rank name',
  `level` int(11) NOT NULL COMMENT 'rank level - leader, vice, member, maybe something else',
  PRIMARY KEY (`id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `guild_wars`
--

CREATE TABLE IF NOT EXISTS `guild_wars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guild1` int(11) NOT NULL DEFAULT '0',
  `guild2` int(11) NOT NULL DEFAULT '0',
  `name1` varchar(255) NOT NULL,
  `name2` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `started` bigint(15) NOT NULL DEFAULT '0',
  `ended` bigint(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `guild1` (`guild1`),
  KEY `guild2` (`guild2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `houses`
--

CREATE TABLE IF NOT EXISTS `houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL,
  `paid` int(10) unsigned NOT NULL DEFAULT '0',
  `warnings` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `rent` int(11) NOT NULL DEFAULT '0',
  `town_id` int(11) NOT NULL DEFAULT '0',
  `bid` int(11) NOT NULL DEFAULT '0',
  `bid_end` int(11) NOT NULL DEFAULT '0',
  `last_bid` int(11) NOT NULL DEFAULT '0',
  `highest_bidder` int(11) NOT NULL DEFAULT '0',
  `size` int(11) NOT NULL DEFAULT '0',
  `guildid` int(11) DEFAULT NULL,
  `beds` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `town_id` (`town_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2489 ;

--
-- Fazendo dump de dados para tabela `houses`
--

INSERT INTO `houses` (`id`, `owner`, `paid`, `warnings`, `name`, `rent`, `town_id`, `bid`, `bid_end`, `last_bid`, `highest_bidder`, `size`, `guildid`, `beds`) VALUES
(1, 0, 0, 0, 'Unnamed House #1', 0, 1, 0, 0, 0, 0, 97, NULL, 1),
(2, 0, 0, 0, 'Unnamed House #2', 0, 1, 0, 0, 0, 0, 114, NULL, 3),
(3, 0, 0, 0, 'Unnamed House #3', 0, 1, 0, 0, 0, 0, 110, NULL, 2),
(4, 0, 0, 0, 'Unnamed House #4', 0, 1, 0, 0, 0, 0, 85, NULL, 4),
(5, 0, 0, 0, 'Unnamed House #5', 0, 1, 0, 0, 0, 0, 94, NULL, 4),
(6, 0, 0, 0, 'Unnamed House #6', 0, 1, 0, 0, 0, 0, 94, NULL, 4),
(7, 0, 0, 0, 'Unnamed House #7', 0, 1, 0, 0, 0, 0, 45, NULL, 1),
(8, 0, 0, 0, 'Unnamed House #8', 0, 1, 0, 0, 0, 0, 45, NULL, 1),
(9, 0, 0, 0, 'Unnamed House #9', 0, 1, 0, 0, 0, 0, 45, NULL, 1),
(10, 0, 0, 0, 'Unnamed House #10', 0, 1, 0, 0, 0, 0, 45, NULL, 1),
(11, 0, 0, 0, 'Unnamed House #11', 0, 1, 0, 0, 0, 0, 24, NULL, 1),
(12, 0, 0, 0, 'Unnamed House #12', 0, 1, 0, 0, 0, 0, 72, NULL, 1),
(13, 0, 0, 0, 'Unnamed House #13', 0, 1, 0, 0, 0, 0, 43, NULL, 1),
(14, 0, 0, 0, 'Unnamed House #14', 0, 1, 0, 0, 0, 0, 103, NULL, 1),
(15, 0, 0, 0, 'Unnamed House #15', 0, 1, 0, 0, 0, 0, 111, NULL, 1),
(16, 0, 0, 0, 'Unnamed House #16', 0, 1, 0, 0, 0, 0, 41, NULL, 1),
(17, 0, 0, 0, 'Unnamed House #17', 0, 1, 0, 0, 0, 0, 111, NULL, 2),
(19, 0, 0, 0, 'Unnamed House #19', 0, 1, 0, 0, 0, 0, 89, NULL, 2),
(21, 0, 0, 0, 'Unnamed House #21', 0, 1, 0, 0, 0, 0, 33, NULL, 2),
(22, 0, 0, 0, 'Unnamed House #22', 0, 1, 0, 0, 0, 0, 40, NULL, 1),
(23, 0, 0, 0, 'Unnamed House #23', 0, 1, 0, 0, 0, 0, 37, NULL, 1),
(24, 0, 0, 0, 'Unnamed House #24', 0, 1, 0, 0, 0, 0, 19, NULL, 1),
(25, 0, 0, 0, 'Unnamed House #25', 0, 1, 0, 0, 0, 0, 24, NULL, 1),
(30, 0, 0, 0, 'Unnamed House #30', 0, 1, 0, 0, 0, 0, 109, NULL, 1),
(31, 0, 0, 0, 'Unnamed House #31', 0, 1, 0, 0, 0, 0, 103, NULL, 1),
(32, 0, 0, 0, 'Unnamed House #32', 0, 1, 0, 0, 0, 0, 82, NULL, 1),
(33, 0, 0, 0, 'Unnamed House #33', 0, 1, 0, 0, 0, 0, 81, NULL, 1),
(35, 0, 0, 0, 'Unnamed House #35', 0, 1, 0, 0, 0, 0, 129, NULL, 3),
(37, 0, 0, 0, 'Unnamed House #37', 0, 1, 0, 0, 0, 0, 81, NULL, 1),
(38, 0, 0, 0, 'Unnamed House #38', 0, 1, 0, 0, 0, 0, 77, NULL, 1),
(40, 0, 0, 0, 'Unnamed House #40', 0, 1, 0, 0, 0, 0, 111, NULL, 3),
(43, 0, 0, 0, 'Unnamed House #43', 0, 1, 0, 0, 0, 0, 70, NULL, 1),
(44, 0, 0, 0, 'Unnamed House #44', 0, 1, 0, 0, 0, 0, 75, NULL, 1),
(45, 0, 0, 0, 'Unnamed House #45', 0, 1, 0, 0, 0, 0, 76, NULL, 1),
(46, 0, 0, 0, 'Unnamed House #46', 0, 1, 0, 0, 0, 0, 76, NULL, 1),
(47, 0, 0, 0, 'Unnamed House #47', 0, 1, 0, 0, 0, 0, 66, NULL, 1),
(48, 0, 0, 0, 'Unnamed House #48', 0, 1, 0, 0, 0, 0, 70, NULL, 1),
(49, 0, 0, 0, 'Unnamed House #49', 0, 1, 0, 0, 0, 0, 71, NULL, 1),
(50, 0, 0, 0, 'Unnamed House #50', 0, 1, 0, 0, 0, 0, 103, NULL, 1),
(51, 0, 0, 0, 'Unnamed House #51', 0, 1, 0, 0, 0, 0, 103, NULL, 3),
(1750, 0, 0, 0, 'Unnamed House #1750', 0, 1, 0, 0, 0, 0, 75, NULL, 1),
(1751, 0, 0, 0, 'Unnamed House #1751', 0, 1, 0, 0, 0, 0, 82, NULL, 1),
(1752, 0, 0, 0, 'Unnamed House #1752', 0, 1, 0, 0, 0, 0, 19, NULL, 1),
(1753, 0, 0, 0, 'Unnamed House #1753', 0, 1, 0, 0, 0, 0, 9, NULL, 1),
(1754, 0, 0, 0, 'Unnamed House #1754', 0, 1, 0, 0, 0, 0, 15, NULL, 1),
(1755, 0, 0, 0, 'Unnamed House #1755', 0, 1, 0, 0, 0, 0, 12, NULL, 1),
(1756, 0, 0, 0, 'Unnamed House #1756', 0, 1, 0, 0, 0, 0, 15, NULL, 1),
(1805, 0, 0, 0, 'Unnamed House #1805', 0, 1, 0, 0, 0, 0, 73, NULL, 1),
(1806, 0, 0, 0, 'Unnamed House #1806', 0, 1, 0, 0, 0, 0, 20, NULL, 1),
(1807, 0, 0, 0, 'Unnamed House #1807', 0, 1, 0, 0, 0, 0, 15, NULL, 1),
(1808, 0, 0, 0, 'Unnamed House #1808', 0, 1, 0, 0, 0, 0, 18, NULL, 1),
(1809, 0, 0, 0, 'Unnamed House #1809', 0, 1, 0, 0, 0, 0, 15, NULL, 1),
(1810, 0, 0, 0, 'Unnamed House #1810', 0, 1, 0, 0, 0, 0, 20, NULL, 1),
(1811, 0, 0, 0, 'Unnamed House #1811', 0, 1, 0, 0, 0, 0, 20, NULL, 1),
(1812, 0, 0, 0, 'Unnamed House #1812', 0, 1, 0, 0, 0, 0, 20, NULL, 1),
(1813, 0, 0, 0, 'Unnamed House #1813', 0, 1, 0, 0, 0, 0, 25, NULL, 1),
(1814, 0, 0, 0, 'Unnamed House #1814', 0, 1, 0, 0, 0, 0, 49, NULL, 2),
(1815, 0, 0, 0, 'Unnamed House #1815', 0, 1, 0, 0, 0, 0, 36, NULL, 2),
(1816, 0, 0, 0, 'Unnamed House #1816', 0, 1, 0, 0, 0, 0, 19, NULL, 1),
(1817, 0, 0, 0, 'Unnamed House #1817', 0, 1, 0, 0, 0, 0, 9, NULL, 1),
(1818, 0, 0, 0, 'Unnamed House #1818', 0, 1, 0, 0, 0, 0, 20, NULL, 1),
(1819, 0, 0, 0, 'Unnamed House #1819', 0, 1, 0, 0, 0, 0, 25, NULL, 1),
(1820, 0, 0, 0, 'Unnamed House #1820', 0, 1, 0, 0, 0, 0, 16, NULL, 1),
(1821, 0, 0, 0, 'Unnamed House #1821', 0, 1, 0, 0, 0, 0, 21, NULL, 1),
(1822, 0, 0, 0, 'Unnamed House #1822', 0, 1, 0, 0, 0, 0, 19, NULL, 1),
(1823, 0, 0, 0, 'Unnamed House #1823', 0, 1, 0, 0, 0, 0, 244, NULL, 5),
(1824, 0, 0, 0, 'Unnamed House #1824', 0, 1, 0, 0, 0, 0, 88, NULL, 1),
(1825, 0, 0, 0, 'Unnamed House #1825', 0, 1, 0, 0, 0, 0, 49, NULL, 1),
(1827, 0, 0, 0, 'Unnamed House #1827', 0, 1, 0, 0, 0, 0, 48, NULL, 1),
(1828, 0, 0, 0, 'Unnamed House #1828', 0, 1, 0, 0, 0, 0, 20, NULL, 1),
(1829, 0, 0, 0, 'Unnamed House #1829', 0, 1, 0, 0, 0, 0, 34, NULL, 1),
(1830, 0, 0, 0, 'Unnamed House #1830', 0, 1, 0, 0, 0, 0, 12, NULL, 1),
(1831, 0, 0, 0, 'Unnamed House #1831', 0, 1, 0, 0, 0, 0, 21, NULL, 0),
(1832, 0, 0, 0, 'Unnamed House #1832', 0, 1, 0, 0, 0, 0, 35, NULL, 0),
(1833, 0, 0, 0, 'Unnamed House #1833', 0, 1, 0, 0, 0, 0, 81, NULL, 1),
(1834, 0, 0, 0, 'Unnamed House #1834', 0, 1, 0, 0, 0, 0, 111, NULL, 0),
(1835, 0, 0, 0, 'Unnamed House #1835', 0, 1, 0, 0, 0, 0, 35, NULL, 1),
(1836, 0, 0, 0, 'Unnamed House #1836', 0, 1, 0, 0, 0, 0, 30, NULL, 1),
(1837, 0, 0, 0, 'Unnamed House #1837', 0, 1, 0, 0, 0, 0, 35, NULL, 1),
(1838, 0, 0, 0, 'Unnamed House #1838', 0, 1, 0, 0, 0, 0, 40, NULL, 1),
(1839, 0, 0, 0, 'Unnamed House #1839', 0, 1, 0, 0, 0, 0, 35, NULL, 0),
(1840, 0, 0, 0, 'Unnamed House #1840', 0, 1, 0, 0, 0, 0, 35, NULL, 0),
(1841, 0, 0, 0, 'Unnamed House #1841', 0, 1, 0, 0, 0, 0, 65, NULL, 1),
(1843, 0, 0, 0, 'Unnamed House #1843', 0, 1, 0, 0, 0, 0, 19, NULL, 1),
(1844, 0, 0, 0, 'Unnamed House #1844', 0, 1, 0, 0, 0, 0, 24, NULL, 1),
(1845, 0, 0, 0, 'Unnamed House #1845', 0, 1, 0, 0, 0, 0, 45, NULL, 1),
(1846, 0, 0, 0, 'Unnamed House #1846', 0, 1, 0, 0, 0, 0, 15, NULL, 1),
(1847, 0, 0, 0, 'Unnamed House #1847', 0, 1, 0, 0, 0, 0, 12, NULL, 1),
(1848, 0, 0, 0, 'Unnamed House #1848', 0, 1, 0, 0, 0, 0, 20, NULL, 1),
(1849, 0, 0, 0, 'Unnamed House #1849', 0, 1, 0, 0, 0, 0, 25, NULL, 1),
(1850, 0, 0, 0, 'Unnamed House #1850', 0, 1, 0, 0, 0, 0, 13, NULL, 1),
(1851, 0, 0, 0, 'Unnamed House #1851', 0, 1, 0, 0, 0, 0, 24, NULL, 1),
(1852, 0, 0, 0, 'Unnamed House #1852', 0, 1, 0, 0, 0, 0, 9, NULL, 1),
(1853, 0, 0, 0, 'Unnamed House #1853', 0, 1, 0, 0, 0, 0, 21, NULL, 1),
(1854, 0, 0, 0, 'Unnamed House #1854', 0, 1, 0, 0, 0, 0, 20, NULL, 1),
(1855, 0, 0, 0, 'Unnamed House #1855', 0, 1, 0, 0, 0, 0, 20, NULL, 1),
(1856, 0, 0, 0, 'Unnamed House #1856', 0, 1, 0, 0, 0, 0, 24, NULL, 1),
(1857, 0, 0, 0, 'Unnamed House #1857', 0, 1, 0, 0, 0, 0, 54, NULL, 0),
(1858, 0, 0, 0, 'Unnamed House #1858', 0, 1, 0, 0, 0, 0, 100, NULL, 0),
(1859, 0, 0, 0, 'Unnamed House #1859', 0, 1, 0, 0, 0, 0, 210, NULL, 2),
(1860, 0, 0, 0, 'Unnamed House #1860', 0, 1, 0, 0, 0, 0, 341, NULL, 5),
(1861, 0, 0, 0, 'Unnamed House #1861', 0, 1, 0, 0, 0, 0, 56, NULL, 1),
(1862, 0, 0, 0, 'Unnamed House #1862', 0, 1, 0, 0, 0, 0, 48, NULL, 1),
(1863, 0, 0, 0, 'Unnamed House #1863', 0, 1, 0, 0, 0, 0, 20, NULL, 1),
(1864, 0, 0, 0, 'Unnamed House #1864', 0, 1, 0, 0, 0, 0, 25, NULL, 2),
(1865, 0, 0, 0, 'Unnamed House #1865', 0, 1, 0, 0, 0, 0, 37, NULL, 1),
(1866, 0, 0, 0, 'Unnamed House #1866', 0, 1, 0, 0, 0, 0, 30, NULL, 1),
(1867, 0, 0, 0, 'Unnamed House #1867', 0, 1, 0, 0, 0, 0, 42, NULL, 4),
(1868, 0, 0, 0, 'Unnamed House #1868', 0, 1, 0, 0, 0, 0, 35, NULL, 1),
(1869, 0, 0, 0, 'Unnamed House #1869', 0, 1, 0, 0, 0, 0, 35, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `house_lists`
--

CREATE TABLE IF NOT EXISTS `house_lists` (
  `house_id` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `list` text NOT NULL,
  KEY `house_id` (`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Estrutura para tabela `ip_bans`
--

CREATE TABLE IF NOT EXISTS `ip_bans` (
  `ip` int(10) unsigned NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expires_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL,
  PRIMARY KEY (`ip`),
  KEY `banned_by` (`banned_by`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Estrutura para tabela `market_history`
--

CREATE TABLE IF NOT EXISTS `market_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `itemtype` int(10) unsigned NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL DEFAULT '0',
  `expires_at` bigint(20) unsigned NOT NULL,
  `inserted` bigint(20) unsigned NOT NULL,
  `state` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `player_id` (`player_id`,`sale`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `market_offers`
--

CREATE TABLE IF NOT EXISTS `market_offers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `itemtype` int(10) unsigned NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  `created` bigint(20) unsigned NOT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `price` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sale` (`sale`,`itemtype`),
  KEY `created` (`created`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `newsticker`
--

CREATE TABLE IF NOT EXISTS `newsticker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `icon` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagseguro`
--

CREATE TABLE IF NOT EXISTS `pagseguro` (
  `date` datetime NOT NULL,
  `code` varchar(50) NOT NULL,
  `reference` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `lastEventDate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagseguro_transactions`
--

CREATE TABLE IF NOT EXISTS `pagseguro_transactions` (
  `transaction_code` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `payment_method` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `item_count` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `payment_amount` float DEFAULT '0',
  UNIQUE KEY `transaction_code` (`transaction_code`,`status`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '1',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `vocation` int(11) NOT NULL DEFAULT '0',
  `health` int(11) NOT NULL DEFAULT '150',
  `healthmax` int(11) NOT NULL DEFAULT '150',
  `experience` bigint(20) NOT NULL DEFAULT '0',
  `lookbody` int(11) NOT NULL DEFAULT '0',
  `lookfeet` int(11) NOT NULL DEFAULT '0',
  `lookhead` int(11) NOT NULL DEFAULT '0',
  `looklegs` int(11) NOT NULL DEFAULT '0',
  `looktype` int(11) NOT NULL DEFAULT '136',
  `lookaddons` int(11) NOT NULL DEFAULT '0',
  `maglevel` int(11) NOT NULL DEFAULT '0',
  `mana` int(11) NOT NULL DEFAULT '0',
  `manamax` int(11) NOT NULL DEFAULT '0',
  `manaspent` int(11) unsigned NOT NULL DEFAULT '0',
  `soul` int(10) unsigned NOT NULL DEFAULT '0',
  `town_id` int(11) NOT NULL DEFAULT '0',
  `posx` int(11) NOT NULL DEFAULT '0',
  `posy` int(11) NOT NULL DEFAULT '0',
  `posz` int(11) NOT NULL DEFAULT '0',
  `conditions` blob NOT NULL,
  `cap` int(11) NOT NULL DEFAULT '0',
  `sex` int(11) NOT NULL DEFAULT '0',
  `lastlogin` bigint(20) unsigned NOT NULL DEFAULT '0',
  `lastip` int(10) unsigned NOT NULL DEFAULT '0',
  `save` tinyint(1) NOT NULL DEFAULT '1',
  `skull` tinyint(1) NOT NULL DEFAULT '0',
  `skulltime` int(11) NOT NULL DEFAULT '0',
  `lastlogout` bigint(20) unsigned NOT NULL DEFAULT '0',
  `blessings` tinyint(2) NOT NULL DEFAULT '0',
  `blessings1` tinyint(4) NOT NULL DEFAULT '0',
  `blessings2` tinyint(4) NOT NULL DEFAULT '0',
  `blessings3` tinyint(4) NOT NULL DEFAULT '0',
  `blessings4` tinyint(4) NOT NULL DEFAULT '0',
  `blessings5` tinyint(4) NOT NULL DEFAULT '0',
  `blessings6` tinyint(4) NOT NULL DEFAULT '0',
  `blessings7` tinyint(4) NOT NULL DEFAULT '0',
  `blessings8` tinyint(4) NOT NULL DEFAULT '0',
  `onlinetime` int(11) NOT NULL DEFAULT '0',
  `deletion` bigint(15) NOT NULL DEFAULT '0',
  `balance` bigint(20) unsigned NOT NULL DEFAULT '0',
  `offlinetraining_time` smallint(5) unsigned NOT NULL DEFAULT '43200',
  `offlinetraining_skill` int(11) NOT NULL DEFAULT '-1',
  `stamina` smallint(5) unsigned NOT NULL DEFAULT '2520',
  `skill_fist` int(10) unsigned NOT NULL DEFAULT '10',
  `skill_fist_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_club` int(10) unsigned NOT NULL DEFAULT '10',
  `skill_club_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_sword` int(10) unsigned NOT NULL DEFAULT '10',
  `skill_sword_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_axe` int(10) unsigned NOT NULL DEFAULT '10',
  `skill_axe_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_dist` int(10) unsigned NOT NULL DEFAULT '10',
  `skill_dist_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_shielding` int(10) unsigned NOT NULL DEFAULT '10',
  `skill_shielding_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_fishing` int(10) unsigned NOT NULL DEFAULT '10',
  `skill_fishing_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `create_ip` int(11) NOT NULL DEFAULT '0',
  `create_date` int(11) NOT NULL DEFAULT '0',
  `hide_char` int(11) NOT NULL DEFAULT '0',
  `skill_critical_hit_chance` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_critical_hit_chance_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_critical_hit_damage` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_critical_hit_damage_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_life_leech_chance` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_life_leech_chance_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_life_leech_amount` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_life_leech_amount_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_mana_leech_chance` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_mana_leech_chance_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_mana_leech_amount` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_mana_leech_amount_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_criticalhit_chance` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_criticalhit_damage` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_lifeleech_chance` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_lifeleech_amount` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_manaleech_chance` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_manaleech_amount` bigint(20) unsigned NOT NULL DEFAULT '0',
  `prey_stamina_1` int(11) DEFAULT NULL,
  `prey_stamina_2` int(11) DEFAULT NULL,
  `prey_stamina_3` int(11) DEFAULT NULL,
  `prey_column` smallint(6) NOT NULL DEFAULT '1',
  `bonus_reroll` int(11) NOT NULL DEFAULT '0',
  `xpboost_stamina` smallint(5) DEFAULT NULL,
  `xpboost_value` tinyint(4) DEFAULT NULL,
  `marriage_status` bigint(20) unsigned NOT NULL DEFAULT '0',
  `hide_skills` int(11) DEFAULT NULL,
  `hide_set` int(11) DEFAULT NULL,
  `former` varchar(255) NOT NULL DEFAULT '-',
  `signature` varchar(255) NOT NULL DEFAULT '',
  `marriage_spouse` int(11) NOT NULL DEFAULT '-1',
  `loyalty_ranking` tinyint(1) NOT NULL DEFAULT '0',
  `bonus_rerolls` bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `account_id` (`account_id`),
  KEY `vocation` (`vocation`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Fazendo dump de dados para tabela `players`
--

INSERT INTO `players` (`id`, `name`, `group_id`, `account_id`, `level`, `vocation`, `health`, `healthmax`, `experience`, `lookbody`, `lookfeet`, `lookhead`, `looklegs`, `looktype`, `lookaddons`, `maglevel`, `mana`, `manamax`, `manaspent`, `soul`, `town_id`, `posx`, `posy`, `posz`, `conditions`, `cap`, `sex`, `lastlogin`, `lastip`, `save`, `skull`, `skulltime`, `lastlogout`, `blessings`, `blessings1`, `blessings2`, `blessings3`, `blessings4`, `blessings5`, `blessings6`, `blessings7`, `blessings8`, `onlinetime`, `deletion`, `balance`, `offlinetraining_time`, `offlinetraining_skill`, `stamina`, `skill_fist`, `skill_fist_tries`, `skill_club`, `skill_club_tries`, `skill_sword`, `skill_sword_tries`, `skill_axe`, `skill_axe_tries`, `skill_dist`, `skill_dist_tries`, `skill_shielding`, `skill_shielding_tries`, `skill_fishing`, `skill_fishing_tries`, `deleted`, `description`, `comment`, `create_ip`, `create_date`, `hide_char`, `skill_critical_hit_chance`, `skill_critical_hit_chance_tries`, `skill_critical_hit_damage`, `skill_critical_hit_damage_tries`, `skill_life_leech_chance`, `skill_life_leech_chance_tries`, `skill_life_leech_amount`, `skill_life_leech_amount_tries`, `skill_mana_leech_chance`, `skill_mana_leech_chance_tries`, `skill_mana_leech_amount`, `skill_mana_leech_amount_tries`, `skill_criticalhit_chance`, `skill_criticalhit_damage`, `skill_lifeleech_chance`, `skill_lifeleech_amount`, `skill_manaleech_chance`, `skill_manaleech_amount`, `prey_stamina_1`, `prey_stamina_2`, `prey_stamina_3`, `prey_column`, `bonus_reroll`, `xpboost_stamina`, `xpboost_value`, `marriage_status`, `hide_skills`, `hide_set`, `former`, `signature`, `marriage_spouse`, `loyalty_ranking`, `bonus_rerolls`) VALUES
(1, 'Rook Sample', 1, 1, 1, 0, 150, 150, 0, 106, 95, 78, 116, 128, 0, 0, 5, 5, 0, 0, 6, 0, 0, 0, '', 400, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 203, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0, 0),
(2, 'Sorcerer Sample', 1, 1, 8, 1, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 3, 1098, 5081, 4, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0, 0),
(3, 'Druid Sample', 1, 1, 8, 2, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 3, 1098, 5081, 4, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0, 0),
(4, 'Paladin Sample', 1, 1, 8, 3, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 3, 1098, 5081, 4, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0, 0),
(5, 'Knight Sample', 1, 1, 8, 4, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 3, 1098, 5081, 4, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0, 0),
(7, 'Kamity', 6, 3, 21, 4, 380, 380, 118295, 0, 0, 0, 0, 1210, 3, 0, 105, 105, 0, 0, 1, 5065, 5012, 7, '', 795, 1, 1569028205, 1091034291, 1, 0, 0, 1569028207, 0, 1, 1, 1, 1, 1, 1, 1, 1, 21621, 0, 49191250, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 12, 25, 10, 0, 11, 20, 10, 0, 0, '', '', 2147483647, 1569007437, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, '-', '', -1, 0, 0),
(8, 'Marllon', 6, 4, 8, 1, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 1, 5066, 5011, 7, '', 470, 1, 1569028411, 4081693875, 1, 0, 0, 1569028422, 0, 1, 1, 1, 1, 1, 1, 1, 1, 42, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 2147483647, 1569028516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, '-', '', -1, 0, 0),
(9, 'CM Marllon', 5, 4, 8, 1, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 2147483647, 1569028674, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0, 0),
(10, 'CM Guilherme', 5, 3, 8, 1, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 1569028676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `players_online`
--

CREATE TABLE IF NOT EXISTS `players_online` (
  `player_id` int(11) NOT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `players_online`
--

INSERT INTO `players_online` (`player_id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_autoloot`
--

CREATE TABLE IF NOT EXISTS `player_autoloot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `autoloot_list` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Fazendo dump de dados para tabela `player_autoloot`
--

INSERT INTO `player_autoloot` (`id`, `player_id`, `autoloot_list`) VALUES
(5, 6, ''),
(29, 7, ''),
(34, 8, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_autoloot_persist`
--

CREATE TABLE IF NOT EXISTS `player_autoloot_persist` (
  `player_guid` mediumint(9) DEFAULT NULL,
  `cont_id` mediumint(9) DEFAULT NULL,
  `item_id` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_deaths`
--

CREATE TABLE IF NOT EXISTS `player_deaths` (
  `player_id` int(11) NOT NULL,
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `killed_by` varchar(255) NOT NULL,
  `is_player` tinyint(1) NOT NULL DEFAULT '1',
  `mostdamage_by` varchar(100) NOT NULL,
  `mostdamage_is_player` tinyint(1) NOT NULL DEFAULT '0',
  `unjustified` tinyint(1) NOT NULL DEFAULT '0',
  `mostdamage_unjustified` tinyint(1) NOT NULL DEFAULT '0',
  KEY `player_id` (`player_id`),
  KEY `killed_by` (`killed_by`),
  KEY `mostdamage_by` (`mostdamage_by`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_depotitems`
--

CREATE TABLE IF NOT EXISTS `player_depotitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL COMMENT 'any given range eg 0-100 will be reserved for depot lockers and all > 100 will be then normal items inside depots',
  `pid` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  UNIQUE KEY `player_id_2` (`player_id`,`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_former_names`
--

CREATE TABLE IF NOT EXISTS `player_former_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `former_name` varchar(35) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Estrutura para tabela `player_inboxitems`
--

CREATE TABLE IF NOT EXISTS `player_inboxitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  UNIQUE KEY `player_id_2` (`player_id`,`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_items`
--

CREATE TABLE IF NOT EXISTS `player_items` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  KEY `player_id` (`player_id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `player_items`
--

INSERT INTO `player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES
(7, 1, 101, 25413, 1, ''),
(7, 3, 102, 1988, 1, ''),
(7, 4, 103, 25186, 1, ''),
(7, 5, 104, 25545, 1, ''),
(7, 6, 105, 30687, 1, 0x24030000000000000003003530320200000000000000000300353031020000000000000000030035303002118ef20000000000),
(7, 7, 106, 5918, 1, ''),
(7, 8, 107, 11117, 1, ''),
(7, 11, 108, 26052, 1, ''),
(7, 102, 109, 15436, 2, 0x0f02),
(7, 102, 110, 10550, 85, 0x0f55),
(7, 102, 111, 18559, 1, ''),
(7, 102, 112, 7620, 5, 0x0f05),
(7, 102, 113, 7618, 5, 0x0f05),
(7, 108, 114, 21725, 1, ''),
(8, 1, 101, 8820, 1, ''),
(8, 2, 102, 2661, 1, ''),
(8, 3, 103, 1988, 1, ''),
(8, 4, 104, 8819, 1, ''),
(8, 5, 105, 2175, 1, ''),
(8, 6, 106, 2190, 1, ''),
(8, 7, 107, 2468, 1, ''),
(8, 8, 108, 2643, 1, ''),
(8, 11, 109, 26052, 1, ''),
(8, 103, 110, 18559, 1, ''),
(8, 103, 111, 7620, 5, 0x0f05),
(8, 103, 112, 2152, 20, 0x0f14);

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_kills`
--

CREATE TABLE IF NOT EXISTS `player_kills` (
  `player_id` int(11) NOT NULL,
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `target` int(11) NOT NULL,
  `unavenged` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_misc`
--

CREATE TABLE IF NOT EXISTS `player_misc` (
  `player_id` int(11) NOT NULL,
  `info` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `player_misc`
--

INSERT INTO `player_misc` (`player_id`, `info`) VALUES
(6, 0x7b7d),
(7, 0x7b7d),
(8, 0x7b7d);

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_namelocks`
--

CREATE TABLE IF NOT EXISTS `player_namelocks` (
  `player_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `namelocked_at` bigint(20) NOT NULL,
  `namelocked_by` int(11) NOT NULL,
  PRIMARY KEY (`player_id`),
  KEY `namelocked_by` (`namelocked_by`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_prey`
--

CREATE TABLE IF NOT EXISTS `player_prey` (
  `player_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mindex` smallint(6) NOT NULL,
  `mcolumn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_preytimes`
--

CREATE TABLE IF NOT EXISTS `player_preytimes` (
  `player_id` int(11) NOT NULL,
  `bonus_type1` int(11) NOT NULL,
  `bonus_value1` int(11) NOT NULL,
  `bonus_name1` varchar(50) NOT NULL,
  `bonus_type2` int(11) NOT NULL,
  `bonus_value2` int(11) NOT NULL,
  `bonus_name2` varchar(50) NOT NULL,
  `bonus_type3` int(11) NOT NULL,
  `bonus_value3` int(11) NOT NULL,
  `bonus_name3` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `player_preytimes`
--

INSERT INTO `player_preytimes` (`player_id`, `bonus_type1`, `bonus_value1`, `bonus_name1`, `bonus_type2`, `bonus_value2`, `bonus_name2`, `bonus_type3`, `bonus_value3`, `bonus_name3`) VALUES
(6, 0, 0, '', 0, 0, '', 0, 0, ''),
(7, 0, 0, '', 0, 0, '', 0, 0, ''),
(8, 0, 0, '', 0, 0, '', 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_rewards`
--

CREATE TABLE IF NOT EXISTS `player_rewards` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  UNIQUE KEY `player_id_2` (`player_id`,`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_spells`
--

CREATE TABLE IF NOT EXISTS `player_spells` (
  `player_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_storage`
--

CREATE TABLE IF NOT EXISTS `player_storage` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `key` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`player_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `player_storage`
--

INSERT INTO `player_storage` (`player_id`, `key`, `value`) VALUES
(7, 1, 1569007709),
(7, 13413, 1),
(7, 14898, 0),
(7, 50722, 1),
(7, 62490, 22),
(7, 62491, 21),
(7, 63311, 1),
(7, 63353, 10),
(7, 99963, 1),
(7, 98231521, 0),
(8, 13413, 1),
(8, 14898, 0),
(8, 50722, 1),
(8, 63311, 1),
(8, 63353, 10),
(8, 98231521, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `prey_slots`
--

CREATE TABLE IF NOT EXISTS `prey_slots` (
  `player_id` int(11) NOT NULL,
  `num` smallint(2) NOT NULL,
  `state` smallint(2) NOT NULL DEFAULT '1',
  `unlocked` tinyint(1) NOT NULL DEFAULT '0',
  `current` varchar(40) NOT NULL DEFAULT '',
  `monster_list` varchar(360) NOT NULL,
  `free_reroll_in` int(11) NOT NULL DEFAULT '0',
  `time_left` smallint(5) NOT NULL DEFAULT '0',
  `next_use` int(11) NOT NULL DEFAULT '0',
  `bonus_type` smallint(3) NOT NULL,
  `bonus_value` smallint(3) NOT NULL DEFAULT '0',
  `bonus_grade` smallint(3) NOT NULL DEFAULT '0',
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `prey_slots`
--

INSERT INTO `prey_slots` (`player_id`, `num`, `state`, `unlocked`, `current`, `monster_list`, `free_reroll_in`, `time_left`, `next_use`, `bonus_type`, `bonus_value`, `bonus_grade`) VALUES
(7, 0, 2, 1, 'Massive Earth Elemental', 'Dwarf;Lost Thrower;Lizard Sentinel;Quara Hydromancer;Elf Scout;Quara Mantassin;Massive Earth Elemental;Dark Faun;Dragon Lord Hatchling', 0, 7200, 0, 1, 33, 12),
(7, 1, 2, 1, 'Marsh Stalker', 'Crocodile;Minotaur Invader;Vicious Squire;Orc Shaman;Marsh Stalker;Deepling Master Librarian;Roaring Lion;Wild Warrior;Bat', 0, 7200, 0, 1, 24, 5),
(7, 2, 2, 1, 'Choking Fear', 'Dawnfire Asura;Choking Fear;Salamander;Deepworm;Dwarf Guard;Dragon Lord;Crystalcrusher;Orewalker;Guardian of Tales', 0, 7200, 0, 1, 33, 12),
(8, 0, 3, 1, '', '', 0, 0, 0, 0, 0, 0),
(8, 1, 3, 1, '', '', 0, 0, 0, 0, 0, 0),
(8, 2, 3, 1, '', '', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sellchar`
--

CREATE TABLE IF NOT EXISTS `sellchar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `vocation` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(40) NOT NULL,
  `oldid` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `server_config`
--

CREATE TABLE IF NOT EXISTS `server_config` (
  `config` varchar(50) NOT NULL,
  `value` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`config`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `server_config`
--

INSERT INTO `server_config` (`config`, `value`) VALUES
('db_version', '24'),
('double', 'desactived'),
('motd_hash', '62a13c59925af2ce4aa51429346684726d38da25'),
('motd_num', '3'),
('players_record', '2');

-- --------------------------------------------------------

--
-- Estrutura para tabela `store_history`
--

CREATE TABLE IF NOT EXISTS `store_history` (
  `account_id` int(11) NOT NULL,
  `mode` smallint(2) NOT NULL DEFAULT '0',
  `description` varchar(3500) NOT NULL,
  `coin_amount` int(12) NOT NULL,
  `time` bigint(20) unsigned NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `coins` int(11) NOT NULL DEFAULT '0',
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Estrutura para tabela `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `ticket_id` int(11) NOT NULL,
  `ticket_subject` varchar(45) NOT NULL,
  `ticket_author` varchar(255) NOT NULL,
  `ticket_author_acc_id` int(11) NOT NULL,
  `ticket_last_reply` varchar(45) NOT NULL,
  `ticket_admin_reply` int(11) NOT NULL,
  `ticket_date` datetime NOT NULL,
  `ticket_ended` varchar(45) NOT NULL,
  `ticket_status` varchar(45) NOT NULL,
  `ticket_category` varchar(45) NOT NULL,
  `ticket_description` text NOT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `account_id` (`ticket_author_acc_id`),
  KEY `player_name` (`ticket_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tickets_reply`
--

CREATE TABLE IF NOT EXISTS `tickets_reply` (
  `ticket_replyid` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `reply_author` varchar(255) DEFAULT NULL,
  `reply_message` text,
  `reply_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ticket_replyid`) USING BTREE,
  KEY `ticket_id_idx` (`ticket_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tile_store`
--

CREATE TABLE IF NOT EXISTS `tile_store` (
  `house_id` int(11) NOT NULL,
  `data` longblob NOT NULL,
  KEY `house_id` (`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Estrutura para tabela `z_forum`
--

CREATE TABLE IF NOT EXISTS `z_forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_post` int(11) NOT NULL DEFAULT '0',
  `last_post` int(11) NOT NULL DEFAULT '0',
  `section` int(3) NOT NULL DEFAULT '0',
  `replies` int(20) NOT NULL DEFAULT '0',
  `views` int(20) NOT NULL DEFAULT '0',
  `author_aid` int(20) NOT NULL DEFAULT '0',
  `author_guid` int(20) NOT NULL DEFAULT '0',
  `post_text` text NOT NULL,
  `post_topic` varchar(255) NOT NULL,
  `post_smile` tinyint(1) NOT NULL DEFAULT '0',
  `post_date` int(20) NOT NULL DEFAULT '0',
  `last_edit_aid` int(20) NOT NULL DEFAULT '0',
  `edit_date` int(20) NOT NULL DEFAULT '0',
  `post_ip` varchar(15) NOT NULL DEFAULT '0.0.0.0',
  `icon_id` int(11) NOT NULL,
  `news_icon` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section` (`section`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `z_network_box`
--

CREATE TABLE IF NOT EXISTS `z_network_box` (
  `id` int(11) NOT NULL,
  `network_name` varchar(10) NOT NULL,
  `network_link` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `z_news_tickers`
--

CREATE TABLE IF NOT EXISTS `z_news_tickers` (
  `date` int(11) NOT NULL DEFAULT '1',
  `author` int(11) NOT NULL,
  `image_id` int(3) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hide_ticker` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `z_ots_comunication`
--

CREATE TABLE IF NOT EXISTS `z_ots_comunication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `param1` varchar(255) NOT NULL,
  `param2` varchar(255) NOT NULL,
  `param3` varchar(255) NOT NULL,
  `param4` varchar(255) NOT NULL,
  `param5` varchar(255) NOT NULL,
  `param6` varchar(255) NOT NULL,
  `param7` varchar(255) NOT NULL,
  `delete_it` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `z_ots_guildcomunication`
--

CREATE TABLE IF NOT EXISTS `z_ots_guildcomunication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `param1` varchar(255) NOT NULL,
  `param2` varchar(255) NOT NULL,
  `param3` varchar(255) NOT NULL,
  `param4` varchar(255) NOT NULL,
  `param5` varchar(255) NOT NULL,
  `param6` varchar(255) NOT NULL,
  `param7` varchar(255) NOT NULL,
  `delete_it` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13382 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `z_polls`
--

CREATE TABLE IF NOT EXISTS `z_polls` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `end` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `answers` int(11) NOT NULL,
  `votes_all` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `z_polls_answers`
--

CREATE TABLE IF NOT EXISTS `z_polls_answers` (
  `poll_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `z_shop_category`
--

CREATE TABLE IF NOT EXISTS `z_shop_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `button` varchar(50) NOT NULL,
  `hide` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Fazendo dump de dados para tabela `z_shop_category`
--

INSERT INTO `z_shop_category` (`id`, `name`, `desc`, `button`, `hide`) VALUES
(2, 'Extra Services', 'Buy an extra service to transfer a character to another game world, to change your character name or sex, to change your account name, or to get a new recovery key.', '_sbutton_getextraservice.gif', 0),
(3, 'Mounts', 'Buy your characters one or more of the fabulous mounts offered here.', '_sbutton_getmount.gif', 1),
(4, 'Outfits', 'Buy your characters one or more of the fancy outfits offered here.', '_sbutton_getoutfit.gif', 1),
(5, 'Items', 'Buy items for your character be more stronger in the game.', '_sbutton_getextraservice.gif', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `z_shop_donates`
--

CREATE TABLE IF NOT EXISTS `z_shop_donates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL,
  `reference` varchar(50) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL,
  `coins` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=266 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `z_shop_donate_confirm`
--

CREATE TABLE IF NOT EXISTS `z_shop_donate_confirm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `donate_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `z_shop_history_item`
--

CREATE TABLE IF NOT EXISTS `z_shop_history_item` (
  `id` int(11) NOT NULL,
  `to_name` varchar(255) NOT NULL DEFAULT '0',
  `to_account` int(11) NOT NULL DEFAULT '0',
  `from_nick` varchar(255) NOT NULL,
  `from_account` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `offer_id` varchar(255) NOT NULL DEFAULT '',
  `trans_state` varchar(255) NOT NULL,
  `trans_start` int(11) NOT NULL DEFAULT '0',
  `trans_real` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `z_shop_offer`
--

CREATE TABLE IF NOT EXISTS `z_shop_offer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `coins` int(11) NOT NULL DEFAULT '0',
  `price` varchar(50) NOT NULL,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `mount_id` varchar(100) NOT NULL,
  `addon_name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `offer_type` varchar(255) DEFAULT NULL,
  `offer_description` text NOT NULL,
  `offer_name` varchar(255) NOT NULL,
  `offer_date` int(11) NOT NULL,
  `default_image` varchar(50) NOT NULL,
  `hide` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Fazendo dump de dados para tabela `z_shop_offer`
--

INSERT INTO `z_shop_offer` (`id`, `category`, `coins`, `price`, `itemid`, `mount_id`, `addon_name`, `count`, `offer_type`, `offer_description`, `offer_name`, `offer_date`, `default_image`, `hide`) VALUES
(5, 2, 10, '', 0, '', '', 1, 'changename', 'Buy a character name change to rename one of your characters.', 'Character Change Name', 1416865577, 'changename.png', 0),
(6, 2, 10, '', 0, '', '', 1, 'changesex', 'Buy a character sex change to turn your male character into a female one, or your female character into a male one.', 'Character Change Sex', 1416874417, 'changesex.png', 1),
(7, 2, 12, '', 0, '', '', 1, 'changeaccountname', 'Buy an account name change to select a different name for your account.', 'Account Name Change', 1416874601, 'changeaccountname.png', 1),
(8, 2, 25, '', 0, '', '', 1, 'newrk', 'If you need a new recovery key, you can order it here. Note that the letter for the new recovery key can only be sent to the address in the account registration.', 'Recovery Key', 1416874816, 'newrk.png', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `z_shop_payment`
--

CREATE TABLE IF NOT EXISTS `z_shop_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(10) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_category_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `price` varchar(50) NOT NULL,
  `coins` int(11) unsigned NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'waiting',
  `date` int(11) NOT NULL,
  `gift` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1588 ;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `account_bans`
--
ALTER TABLE `account_bans`
  ADD CONSTRAINT `account_bans_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_bans_ibfk_2` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `account_ban_history`
--
ALTER TABLE `account_ban_history`
  ADD CONSTRAINT `account_ban_history_ibfk_2` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_3` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_4` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_5` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_6` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `account_viplist`
--
ALTER TABLE `account_viplist`
  ADD CONSTRAINT `account_viplist_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `account_viplist_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `guilds`
--
ALTER TABLE `guilds`
  ADD CONSTRAINT `guilds_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  ADD CONSTRAINT `guildwar_kills_ibfk_1` FOREIGN KEY (`warid`) REFERENCES `guild_wars` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `guild_invites`
--
ALTER TABLE `guild_invites`
  ADD CONSTRAINT `guild_invites_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `guild_invites_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `guild_membership`
--
ALTER TABLE `guild_membership`
  ADD CONSTRAINT `guild_membership_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guild_membership_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guild_membership_ibfk_3` FOREIGN KEY (`rank_id`) REFERENCES `guild_ranks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `guild_ranks`
--
ALTER TABLE `guild_ranks`
  ADD CONSTRAINT `guild_ranks_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `house_lists`
--
ALTER TABLE `house_lists`
  ADD CONSTRAINT `house_lists_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `ip_bans`
--
ALTER TABLE `ip_bans`
  ADD CONSTRAINT `ip_bans_ibfk_1` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `market_history`
--
ALTER TABLE `market_history`
  ADD CONSTRAINT `market_history_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `market_offers`
--
ALTER TABLE `market_offers`
  ADD CONSTRAINT `market_offers_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `player_deaths`
--
ALTER TABLE `player_deaths`
  ADD CONSTRAINT `player_deaths_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `player_depotitems`
--
ALTER TABLE `player_depotitems`
  ADD CONSTRAINT `player_depotitems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `player_inboxitems`
--
ALTER TABLE `player_inboxitems`
  ADD CONSTRAINT `player_inboxitems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `player_items`
--
ALTER TABLE `player_items`
  ADD CONSTRAINT `player_items_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `player_namelocks`
--
ALTER TABLE `player_namelocks`
  ADD CONSTRAINT `player_namelocks_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_namelocks_ibfk_2` FOREIGN KEY (`namelocked_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `player_rewards`
--
ALTER TABLE `player_rewards`
  ADD CONSTRAINT `player_rewards_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `player_spells`
--
ALTER TABLE `player_spells`
  ADD CONSTRAINT `player_spells_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `player_storage`
--
ALTER TABLE `player_storage`
  ADD CONSTRAINT `player_storage_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `prey_slots`
--
ALTER TABLE `prey_slots`
  ADD CONSTRAINT `prey_slots_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `store_history`
--
ALTER TABLE `store_history`
  ADD CONSTRAINT `store_history_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`ticket_author_acc_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tickets_reply`
--
ALTER TABLE `tickets_reply`
  ADD CONSTRAINT `ticket_id` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`ticket_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tile_store`
--
ALTER TABLE `tile_store`
  ADD CONSTRAINT `tile_store_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
