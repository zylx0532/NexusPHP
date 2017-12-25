-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2017-12-25 15:43:56
-- 服务器版本： 5.5.32
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hdbiger`
--

-- --------------------------------------------------------

--
-- 表的结构 `adclicks`
--

CREATE TABLE `adclicks` (
  `id` int(11) UNSIGNED NOT NULL,
  `adid` int(11) UNSIGNED DEFAULT NULL,
  `userid` int(11) UNSIGNED DEFAULT NULL,
  `added` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `adminpanel`
--

CREATE TABLE `adminpanel` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `advertisements`
--

CREATE TABLE `advertisements` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('bbcodes','xhtml','text','image','flash') NOT NULL,
  `position` enum('header','footer','belownav','belowsearchbox','torrentdetail','comment','interoverforums','forumpost','popup') NOT NULL,
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `parameters` text NOT NULL,
  `code` text NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `agent_allowed_exception`
--

CREATE TABLE `agent_allowed_exception` (
  `family_id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `peer_id` varchar(20) NOT NULL,
  `agent` varchar(100) NOT NULL,
  `comment` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `agent_allowed_family`
--

CREATE TABLE `agent_allowed_family` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `family` varchar(50) NOT NULL DEFAULT '',
  `start_name` varchar(100) NOT NULL DEFAULT '',
  `peer_id_pattern` varchar(200) NOT NULL,
  `peer_id_match_num` tinyint(3) UNSIGNED NOT NULL,
  `peer_id_matchtype` enum('dec','hex') NOT NULL DEFAULT 'dec',
  `peer_id_start` varchar(20) NOT NULL,
  `agent_pattern` varchar(200) NOT NULL,
  `agent_match_num` tinyint(3) UNSIGNED NOT NULL,
  `agent_matchtype` enum('dec','hex') NOT NULL DEFAULT 'dec',
  `agent_start` varchar(100) NOT NULL,
  `exception` enum('yes','no') NOT NULL DEFAULT 'no',
  `allowhttps` enum('yes','no') NOT NULL DEFAULT 'no',
  `comment` varchar(200) NOT NULL DEFAULT '',
  `hits` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `allowedemails`
--

CREATE TABLE `allowedemails` (
  `id` int(10) NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `width` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `dlkey` char(32) NOT NULL,
  `filetype` varchar(50) NOT NULL DEFAULT '',
  `filesize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `location` varchar(255) NOT NULL,
  `downloads` mediumint(8) NOT NULL DEFAULT '0',
  `isimage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `thumb` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `attendance`
--

CREATE TABLE `attendance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` mediumint(8) UNSIGNED NOT NULL,
  `added` datetime NOT NULL,
  `points` mediumint(8) UNSIGNED NOT NULL,
  `days` smallint(5) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `audiocodecs`
--

CREATE TABLE `audiocodecs` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_index` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `avps`
--

CREATE TABLE `avps` (
  `arg` varchar(20) NOT NULL DEFAULT '',
  `value_s` text NOT NULL,
  `value_i` int(11) NOT NULL DEFAULT '0',
  `value_u` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bannedemails`
--

CREATE TABLE `bannedemails` (
  `id` int(10) NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bans`
--

CREATE TABLE `bans` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `addedby` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `first` bigint(20) NOT NULL,
  `last` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bitbucket`
--

CREATE TABLE `bitbucket` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `public` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `blocks`
--

CREATE TABLE `blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `blockid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` int(10) UNSIGNED NOT NULL,
  `torrentid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `categories`
--

CREATE TABLE `categories` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `mode` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `class_name` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_index` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `caticons`
--

CREATE TABLE `caticons` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `folder` varchar(255) NOT NULL,
  `cssfile` varchar(255) NOT NULL DEFAULT '',
  `multilang` enum('yes','no') NOT NULL DEFAULT 'no',
  `secondicon` enum('yes','no') NOT NULL DEFAULT 'no',
  `designer` varchar(50) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cheaters`
--

CREATE TABLE `cheaters` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `torrentid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `uploaded` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `downloaded` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `anctime` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `seeders` mediumint(5) UNSIGNED NOT NULL DEFAULT '0',
  `leechers` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hit` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `dealtby` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `dealtwith` tinyint(1) NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `chronicle`
--

CREATE TABLE `chronicle` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `txt` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `codecs`
--

CREATE TABLE `codecs` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `sort_index` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `torrent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text,
  `ori_text` text,
  `editedby` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `editdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `offer` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `complains`
--

CREATE TABLE `complains` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `email` varchar(512) NOT NULL,
  `body` text NOT NULL,
  `added` datetime NOT NULL,
  `answered` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `complain_replies`
--

CREATE TABLE `complain_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `complain` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `countries`
--

CREATE TABLE `countries` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `flagpic` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `downloadspeed`
--

CREATE TABLE `downloadspeed` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `faq`
--

CREATE TABLE `faq` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `link_id` smallint(5) UNSIGNED NOT NULL,
  `lang_id` smallint(5) UNSIGNED NOT NULL DEFAULT '6',
  `type` enum('categ','item') NOT NULL DEFAULT 'item',
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `flag` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `categ` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `torrent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `size` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `forummods`
--

CREATE TABLE `forummods` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `forumid` smallint(5) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `forums`
--

CREATE TABLE `forums` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `minclassread` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `minclasswrite` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `postcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topiccount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `minclasscreate` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `forid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `friends`
--

CREATE TABLE `friends` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `friendid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fun`
--

CREATE TABLE `fun` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `body` text,
  `title` varchar(255) NOT NULL DEFAULT '',
  `status` enum('normal','dull','notfunny','funny','veryfunny','banned') NOT NULL DEFAULT 'normal'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `funds`
--

CREATE TABLE `funds` (
  `id` int(10) UNSIGNED NOT NULL,
  `usd` decimal(8,2) NOT NULL DEFAULT '0.00',
  `cny` decimal(8,2) NOT NULL DEFAULT '0.00',
  `user` mediumint(8) UNSIGNED NOT NULL,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `memo` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `funvotes`
--

CREATE TABLE `funvotes` (
  `funid` mediumint(8) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote` enum('fun','dull') NOT NULL DEFAULT 'fun'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `invites`
--

CREATE TABLE `invites` (
  `id` int(10) UNSIGNED NOT NULL,
  `inviter` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `invitee` varchar(80) NOT NULL DEFAULT '',
  `hash` char(32) NOT NULL,
  `time_invited` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iplog`
--

CREATE TABLE `iplog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(64) NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `access` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iplog_announce`
--

CREATE TABLE `iplog_announce` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `first` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `isp`
--

CREATE TABLE `isp` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `language`
--

CREATE TABLE `language` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `lang_name` varchar(50) NOT NULL,
  `flagpic` varchar(255) NOT NULL DEFAULT '',
  `sub_lang` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `rule_lang` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `site_lang` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `site_lang_folder` varchar(255) NOT NULL DEFAULT '',
  `trans_state` enum('up-to-date','outdate','incomplete','need-new','unavailable') NOT NULL DEFAULT 'unavailable'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `links`
--

CREATE TABLE `links` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `location_main` varchar(200) NOT NULL,
  `location_sub` varchar(200) NOT NULL,
  `flagpic` varchar(50) DEFAULT NULL,
  `start_ip` varchar(20) NOT NULL,
  `end_ip` varchar(20) NOT NULL,
  `theory_upspeed` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `practical_upspeed` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `theory_downspeed` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `practical_downspeed` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `hit` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `loginattempts`
--

CREATE TABLE `loginattempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(64) NOT NULL DEFAULT '',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `banned` enum('yes','no') NOT NULL DEFAULT 'no',
  `attempts` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `type` enum('login','recover') NOT NULL DEFAULT 'login'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `magic`
--

CREATE TABLE `magic` (
  `id` int(10) UNSIGNED NOT NULL,
  `torrentid` mediumint(9) NOT NULL,
  `userid` mediumint(9) NOT NULL,
  `value` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `media`
--

CREATE TABLE `media` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `sort_index` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `receiver` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(128) NOT NULL DEFAULT '',
  `msg` text,
  `unread` enum('yes','no') NOT NULL DEFAULT 'yes',
  `location` smallint(6) NOT NULL DEFAULT '1',
  `saved` enum('no','yes') NOT NULL DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `modpanel`
--

CREATE TABLE `modpanel` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE `news` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `body` text,
  `title` varchar(255) NOT NULL DEFAULT '',
  `notify` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `offers`
--

CREATE TABLE `offers` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(225) NOT NULL,
  `descr` text,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `allowedtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `yeah` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `against` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `category` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `comments` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `allowed` enum('allowed','pending','denied') NOT NULL DEFAULT 'pending'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `offervotes`
--

CREATE TABLE `offervotes` (
  `id` int(10) UNSIGNED NOT NULL,
  `offerid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `vote` enum('yeah','against') NOT NULL DEFAULT 'yeah'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `overforums`
--

CREATE TABLE `overforums` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `minclassview` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sort` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `peers`
--

CREATE TABLE `peers` (
  `id` int(10) UNSIGNED NOT NULL,
  `torrent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `peer_id` binary(20) NOT NULL,
  `ip` varchar(64) NOT NULL DEFAULT '',
  `port` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `uploaded` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `downloaded` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `to_go` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `seeder` enum('yes','no') NOT NULL DEFAULT 'no',
  `started` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_action` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `prev_action` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `connectable` enum('yes','no') NOT NULL DEFAULT 'yes',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `agent` varchar(60) NOT NULL DEFAULT '',
  `finishedat` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `downloadoffset` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `uploadoffset` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `passkey` char(32) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- 表的结构 `pmboxes`
--

CREATE TABLE `pmboxes` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `boxnumber` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `name` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pollanswers`
--

CREATE TABLE `pollanswers` (
  `id` int(10) UNSIGNED NOT NULL,
  `pollid` mediumint(8) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `selection` tinyint(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `polls`
--

CREATE TABLE `polls` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `question` varchar(255) NOT NULL DEFAULT '',
  `option0` varchar(40) NOT NULL DEFAULT '',
  `option1` varchar(40) NOT NULL DEFAULT '',
  `option2` varchar(40) NOT NULL DEFAULT '',
  `option3` varchar(40) NOT NULL DEFAULT '',
  `option4` varchar(40) NOT NULL DEFAULT '',
  `option5` varchar(40) NOT NULL DEFAULT '',
  `option6` varchar(40) NOT NULL DEFAULT '',
  `option7` varchar(40) NOT NULL DEFAULT '',
  `option8` varchar(40) NOT NULL DEFAULT '',
  `option9` varchar(40) NOT NULL DEFAULT '',
  `option10` varchar(40) NOT NULL DEFAULT '',
  `option11` varchar(40) NOT NULL DEFAULT '',
  `option12` varchar(40) NOT NULL DEFAULT '',
  `option13` varchar(40) NOT NULL DEFAULT '',
  `option14` varchar(40) NOT NULL DEFAULT '',
  `option15` varchar(40) NOT NULL DEFAULT '',
  `option16` varchar(40) NOT NULL DEFAULT '',
  `option17` varchar(40) NOT NULL DEFAULT '',
  `option18` varchar(40) NOT NULL DEFAULT '',
  `option19` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `topicid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `body` text,
  `ori_body` text,
  `editedby` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `editdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `processings`
--

CREATE TABLE `processings` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `sort_index` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `prolinkclicks`
--

CREATE TABLE `prolinkclicks` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `readposts`
--

CREATE TABLE `readposts` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topicid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lastpostread` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `regimages`
--

CREATE TABLE `regimages` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `imagehash` varchar(32) NOT NULL DEFAULT '',
  `imagestring` varchar(8) NOT NULL DEFAULT '',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `reports`
--

CREATE TABLE `reports` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `addedby` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reportid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` enum('torrent','user','offer','request','post','comment','subtitle') NOT NULL DEFAULT 'torrent',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `dealtby` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `dealtwith` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `rules`
--

CREATE TABLE `rules` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `lang_id` smallint(5) UNSIGNED NOT NULL DEFAULT '6',
  `title` varchar(255) NOT NULL,
  `text` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `schools`
--

CREATE TABLE `schools` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `searchbox`
--

CREATE TABLE `searchbox` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `showsubcat` tinyint(1) NOT NULL DEFAULT '0',
  `showsource` tinyint(1) NOT NULL DEFAULT '0',
  `showmedium` tinyint(1) NOT NULL DEFAULT '0',
  `showcodec` tinyint(1) NOT NULL DEFAULT '0',
  `showstandard` tinyint(1) NOT NULL DEFAULT '0',
  `showprocessing` tinyint(1) NOT NULL DEFAULT '0',
  `showteam` tinyint(1) NOT NULL DEFAULT '0',
  `showaudiocodec` tinyint(1) NOT NULL DEFAULT '0',
  `catsperrow` smallint(5) UNSIGNED NOT NULL DEFAULT '7',
  `catpadding` smallint(5) UNSIGNED NOT NULL DEFAULT '25'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `secondicons`
--

CREATE TABLE `secondicons` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `source` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `medium` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `codec` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `standard` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `processing` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `team` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `audiocodec` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `shoutbox`
--

CREATE TABLE `shoutbox` (
  `id` int(10) NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `type` enum('sb','hb') NOT NULL DEFAULT 'sb',
  `ip` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sitelog`
--

CREATE TABLE `sitelog` (
  `id` int(10) UNSIGNED NOT NULL,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `txt` text NOT NULL,
  `security_level` enum('normal','mod') NOT NULL DEFAULT 'normal'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `snatched`
--

CREATE TABLE `snatched` (
  `id` int(10) NOT NULL,
  `torrentid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `port` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `uploaded` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `downloaded` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `to_go` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `seedtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `leechtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_action` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `startdat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `completedat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `finished` enum('yes','no') NOT NULL DEFAULT 'no',
  `finish_ip` varchar(40) DEFAULT NULL,
  `hr` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 clear 1 detecting 2 failed'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sources`
--

CREATE TABLE `sources` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `sort_index` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `staffmessages`
--

CREATE TABLE `staffmessages` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `sender` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `msg` text,
  `subject` varchar(128) NOT NULL DEFAULT '',
  `answeredby` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `answered` tinyint(1) NOT NULL DEFAULT '0',
  `answer` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `standards`
--

CREATE TABLE `standards` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `sort_index` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `stylesheets`
--

CREATE TABLE `stylesheets` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `uri` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `addicode` text,
  `designer` varchar(50) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `subs`
--

CREATE TABLE `subs` (
  `id` int(10) UNSIGNED NOT NULL,
  `torrent_id` mediumint(8) UNSIGNED NOT NULL,
  `lang_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `uppedby` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `anonymous` enum('yes','no') NOT NULL DEFAULT 'no',
  `hits` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ext` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `suggest`
--

CREATE TABLE `suggest` (
  `id` int(10) UNSIGNED NOT NULL,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `adddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sysoppanel`
--

CREATE TABLE `sysoppanel` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `teams`
--

CREATE TABLE `teams` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `sort_index` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `thanks`
--

CREATE TABLE `thanks` (
  `id` int(10) UNSIGNED NOT NULL,
  `torrentid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `topics`
--

CREATE TABLE `topics` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(128) NOT NULL,
  `locked` enum('yes','no') NOT NULL DEFAULT 'no',
  `forumid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `firstpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastpost` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sticky` enum('no','yes') NOT NULL DEFAULT 'no',
  `hlcolor` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `torrents`
--

CREATE TABLE `torrents` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `info_hash` binary(20) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `save_as` varchar(255) NOT NULL DEFAULT '',
  `descr` text,
  `small_descr` varchar(255) NOT NULL DEFAULT '',
  `ori_descr` text,
  `category` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `source` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `medium` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `codec` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `standard` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `processing` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `team` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `audiocodec` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` enum('single','multi') NOT NULL DEFAULT 'single',
  `numfiles` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `comments` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `times_completed` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `leechers` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `seeders` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `last_action` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `visible` enum('yes','no') NOT NULL DEFAULT 'yes',
  `banned` enum('yes','no') NOT NULL DEFAULT 'no',
  `owner` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `nfo` blob,
  `sp_state` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `promotion_time_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `promotion_until` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `anonymous` enum('yes','no') NOT NULL DEFAULT 'no',
  `url` int(10) UNSIGNED DEFAULT NULL,
  `pos_group` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Replacement of pos_state. 0=Normal 1=Traditional Sticky TIMESTAMP=Top-level Sticky',
  `pos_state` enum('normal','sticky') NOT NULL DEFAULT 'normal',
  `pos_until` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cache_stamp` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `picktype` enum('hot','classic','recommended','normal') NOT NULL DEFAULT 'normal',
  `picktime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_reseed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hr` tinyint(1) NOT NULL DEFAULT '0',
  `douban_id` int(10) DEFAULT NULL,
  `douban_rating` decimal(3,1) DEFAULT NULL,
  `imdb_id` int(10) DEFAULT NULL,
  `imdb_rating` decimal(3,1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `torrents_myrss`
--

CREATE TABLE `torrents_myrss` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `torrent_id` mediumint(8) UNSIGNED NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `torrents_state`
--

CREATE TABLE `torrents_state` (
  `global_sp_state` tinyint(3) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `uploadspeed`
--

CREATE TABLE `uploadspeed` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(40) NOT NULL DEFAULT '',
  `passhash` varchar(32) NOT NULL DEFAULT '',
  `secret` varbinary(20) NOT NULL,
  `email` varchar(80) NOT NULL DEFAULT '',
  `status` enum('pending','confirmed') NOT NULL DEFAULT 'pending',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_access` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_home` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_offer` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `forum_access` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_staffmsg` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_pm` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_comment` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_post` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_browse` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_music` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_catchup` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `editsecret` varbinary(20) NOT NULL,
  `privacy` enum('strong','normal','low') NOT NULL DEFAULT 'normal',
  `stylesheet` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `caticon` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `fontsize` enum('small','medium','large') NOT NULL DEFAULT 'medium',
  `info` text,
  `acceptpms` enum('yes','friends','no') NOT NULL DEFAULT 'yes',
  `commentpm` enum('yes','no') NOT NULL DEFAULT 'yes',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `class` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `max_class_once` tinyint(3) NOT NULL DEFAULT '1',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `uploaded` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `downloaded` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `seedtime` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `leechtime` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `country` smallint(5) UNSIGNED NOT NULL DEFAULT '107',
  `notifs` varchar(500) DEFAULT NULL,
  `modcomment` text,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  `avatars` enum('yes','no') NOT NULL DEFAULT 'yes',
  `donor` enum('yes','no') NOT NULL DEFAULT 'no',
  `donated` decimal(8,2) NOT NULL DEFAULT '0.00',
  `donated_cny` decimal(8,2) NOT NULL DEFAULT '0.00',
  `donoruntil` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `warned` enum('yes','no') NOT NULL DEFAULT 'no',
  `warneduntil` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `noad` enum('yes','no') NOT NULL DEFAULT 'no',
  `noaduntil` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `torrentsperpage` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `topicsperpage` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `postsperpage` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `clicktopic` enum('firstpage','lastpage') NOT NULL DEFAULT 'firstpage',
  `deletepms` enum('yes','no') NOT NULL DEFAULT 'yes',
  `savepms` enum('yes','no') NOT NULL DEFAULT 'no',
  `showhot` enum('yes','no') NOT NULL DEFAULT 'yes',
  `showclassic` enum('yes','no') NOT NULL DEFAULT 'yes',
  `support` enum('yes','no') NOT NULL DEFAULT 'no',
  `picker` enum('yes','no') NOT NULL DEFAULT 'no',
  `stafffor` varchar(255) NOT NULL,
  `supportfor` varchar(255) NOT NULL,
  `pickfor` varchar(255) NOT NULL,
  `supportlang` varchar(50) NOT NULL,
  `passkey` varchar(32) NOT NULL DEFAULT '',
  `promotion_link` varchar(32) DEFAULT NULL,
  `uploadpos` enum('yes','no') NOT NULL DEFAULT 'yes',
  `forumpost` enum('yes','no') NOT NULL DEFAULT 'yes',
  `downloadpos` enum('yes','no') NOT NULL DEFAULT 'yes',
  `clientselect` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `signatures` enum('yes','no') NOT NULL DEFAULT 'yes',
  `signature` varchar(800) NOT NULL DEFAULT '',
  `lang` smallint(5) UNSIGNED NOT NULL DEFAULT '6',
  `cheat` smallint(6) NOT NULL DEFAULT '0',
  `download` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `upload` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `isp` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `invites` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `invited_by` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `gender` enum('Male','Female','N/A') NOT NULL DEFAULT 'N/A',
  `vip_added` enum('yes','no') NOT NULL DEFAULT 'no',
  `vip_until` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `seedbonus` decimal(10,1) NOT NULL DEFAULT '0.0',
  `charity` decimal(10,1) NOT NULL DEFAULT '0.0',
  `bonuscomment` text,
  `parked` enum('yes','no') NOT NULL DEFAULT 'no',
  `leechwarn` enum('yes','no') NOT NULL DEFAULT 'no',
  `leechwarnuntil` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastwarned` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeswarned` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `warnedby` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `sbnum` smallint(5) UNSIGNED NOT NULL DEFAULT '70',
  `sbrefresh` smallint(5) UNSIGNED NOT NULL DEFAULT '120',
  `hidehb` enum('yes','no') DEFAULT 'no',
  `showimdb` enum('yes','no') DEFAULT 'yes',
  `showdescription` enum('yes','no') DEFAULT 'yes',
  `showcomment` enum('yes','no') DEFAULT 'yes',
  `showclienterror` enum('yes','no') NOT NULL DEFAULT 'no',
  `showdlnotice` tinyint(1) NOT NULL DEFAULT '1',
  `tooltip` enum('minorimdb','medianimdb','off') NOT NULL DEFAULT 'off',
  `shownfo` enum('yes','no') DEFAULT 'yes',
  `timetype` enum('timeadded','timealive') DEFAULT 'timealive',
  `appendsticky` enum('yes','no') DEFAULT 'yes',
  `appendnew` enum('yes','no') DEFAULT 'yes',
  `appendpromotion` enum('highlight','word','icon','off') DEFAULT 'icon',
  `appendpicked` enum('yes','no') DEFAULT 'yes',
  `dlicon` enum('yes','no') DEFAULT 'yes',
  `bmicon` enum('yes','no') DEFAULT 'yes',
  `showsmalldescr` enum('yes','no') NOT NULL DEFAULT 'yes',
  `showcomnum` enum('yes','no') DEFAULT 'yes',
  `showlastcom` enum('yes','no') DEFAULT 'no',
  `showlastpost` enum('yes','no') NOT NULL DEFAULT 'no',
  `pmnum` tinyint(3) UNSIGNED NOT NULL DEFAULT '10',
  `school` smallint(5) UNSIGNED NOT NULL DEFAULT '35',
  `showfb` enum('yes','no') NOT NULL DEFAULT 'yes',
  `exam_deadline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hr` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_invitations`
--

CREATE TABLE `user_invitations` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `expiration` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adclicks`
--
ALTER TABLE `adclicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminpanel`
--
ALTER TABLE `adminpanel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_allowed_exception`
--
ALTER TABLE `agent_allowed_exception`
  ADD KEY `family_id` (`family_id`);

--
-- Indexes for table `agent_allowed_family`
--
ALTER TABLE `agent_allowed_family`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allowedemails`
--
ALTER TABLE `allowedemails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`userid`,`id`),
  ADD KEY `dateline` (`added`,`isimage`,`downloads`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `audiocodecs`
--
ALTER TABLE `audiocodecs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avps`
--
ALTER TABLE `avps`
  ADD PRIMARY KEY (`arg`);

--
-- Indexes for table `bannedemails`
--
ALTER TABLE `bannedemails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `first_last` (`first`,`last`);

--
-- Indexes for table `bitbucket`
--
ALTER TABLE `bitbucket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userfriend` (`userid`,`blockid`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid_torrentid` (`userid`,`torrentid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mode_sort` (`mode`,`sort_index`);

--
-- Indexes for table `caticons`
--
ALTER TABLE `caticons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cheaters`
--
ALTER TABLE `cheaters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chronicle`
--
ALTER TABLE `chronicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `added` (`added`);

--
-- Indexes for table `codecs`
--
ALTER TABLE `codecs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `torrent_id` (`torrent`,`id`),
  ADD KEY `offer_id` (`offer`,`id`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `complains_uuid_uindex` (`uuid`),
  ADD KEY `complains_answered_index` (`answered`);

--
-- Indexes for table `complain_replies`
--
ALTER TABLE `complain_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complain_replies_complain_id_index` (`complain`,`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloadspeed`
--
ALTER TABLE `downloadspeed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `torrent` (`torrent`);

--
-- Indexes for table `forummods`
--
ALTER TABLE `forummods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forumid` (`forumid`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userfriend` (`userid`,`friendid`);

--
-- Indexes for table `fun`
--
ALTER TABLE `fun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funvotes`
--
ALTER TABLE `funvotes`
  ADD PRIMARY KEY (`funid`,`userid`);

--
-- Indexes for table `invites`
--
ALTER TABLE `invites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`(3));

--
-- Indexes for table `iplog`
--
ALTER TABLE `iplog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `iplog_announce`
--
ALTER TABLE `iplog_announce`
  ADD PRIMARY KEY (`userid`,`ip`) USING BTREE,
  ADD KEY `first` (`first`,`last`);

--
-- Indexes for table `isp`
--
ALTER TABLE `isp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loginattempts`
--
ALTER TABLE `loginattempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magic`
--
ALTER TABLE `magic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receiver` (`receiver`),
  ADD KEY `sender` (`sender`);

--
-- Indexes for table `modpanel`
--
ALTER TABLE `modpanel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `added` (`added`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `offervotes`
--
ALTER TABLE `offervotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `overforums`
--
ALTER TABLE `overforums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peers`
--
ALTER TABLE `peers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `torrent` (`torrent`);

--
-- Indexes for table `pmboxes`
--
ALTER TABLE `pmboxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pollanswers`
--
ALTER TABLE `pollanswers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pollid` (`pollid`),
  ADD KEY `selection` (`selection`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `topicid_id` (`topicid`,`id`),
  ADD KEY `added` (`added`);
ALTER TABLE `posts` ADD FULLTEXT KEY `body` (`body`);

--
-- Indexes for table `processings`
--
ALTER TABLE `processings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prolinkclicks`
--
ALTER TABLE `prolinkclicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `readposts`
--
ALTER TABLE `readposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `regimages`
--
ALTER TABLE `regimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searchbox`
--
ALTER TABLE `searchbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secondicons`
--
ALTER TABLE `secondicons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoutbox`
--
ALTER TABLE `shoutbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitelog`
--
ALTER TABLE `sitelog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `added` (`added`);

--
-- Indexes for table `snatched`
--
ALTER TABLE `snatched`
  ADD PRIMARY KEY (`id`),
  ADD KEY `torrentid_userid` (`torrentid`,`userid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `hr` (`hr`,`seedtime`,`downloaded`,`uploaded`);

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffmessages`
--
ALTER TABLE `staffmessages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standards`
--
ALTER TABLE `standards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stylesheets`
--
ALTER TABLE `stylesheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subs`
--
ALTER TABLE `subs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `torrentid_langid` (`torrent_id`,`lang_id`);

--
-- Indexes for table `suggest`
--
ALTER TABLE `suggest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keywords` (`keywords`(4)),
  ADD KEY `adddate` (`adddate`);

--
-- Indexes for table `sysoppanel`
--
ALTER TABLE `sysoppanel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thanks`
--
ALTER TABLE `thanks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `torrentid_id` (`torrentid`,`id`),
  ADD KEY `torrentid_userid` (`torrentid`,`userid`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `subject` (`subject`),
  ADD KEY `forumid_lastpost` (`forumid`,`lastpost`),
  ADD KEY `forumid_sticky_lastpost` (`forumid`,`sticky`,`lastpost`);

--
-- Indexes for table `torrents`
--
ALTER TABLE `torrents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `info_hash` (`info_hash`),
  ADD KEY `owner` (`owner`),
  ADD KEY `url` (`url`),
  ADD KEY `category_visible_banned` (`category`,`visible`,`banned`),
  ADD KEY `pos_group_id` (`pos_group`,`id`),
  ADD KEY `pos_until` (`pos_until`),
  ADD KEY `visible_banned_pos_id` (`visible`,`banned`,`pos_group`,`id`);
ALTER TABLE `torrents` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `torrents_myrss`
--
ALTER TABLE `torrents_myrss`
  ADD PRIMARY KEY (`user_id`,`torrent_id`),
  ADD KEY `torrent_id` (`torrent_id`),
  ADD KEY `created` (`created`),
  ADD KEY `enable_userid_torrentid` (`enable`,`user_id`,`torrent_id`);

--
-- Indexes for table `uploadspeed`
--
ALTER TABLE `uploadspeed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `status_added` (`status`,`added`),
  ADD KEY `ip` (`ip`),
  ADD KEY `uploaded` (`uploaded`),
  ADD KEY `downloaded` (`downloaded`),
  ADD KEY `country` (`country`),
  ADD KEY `last_access` (`last_access`),
  ADD KEY `enabled` (`enabled`),
  ADD KEY `warned` (`warned`),
  ADD KEY `cheat` (`cheat`),
  ADD KEY `class` (`class`),
  ADD KEY `passkey` (`passkey`(8)),
  ADD KEY `exam_deadline` (`exam_deadline`);

--
-- Indexes for table `user_invitations`
--
ALTER TABLE `user_invitations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`,`qty`,`expiration`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `adclicks`
--
ALTER TABLE `adclicks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38996;

--
-- 使用表AUTO_INCREMENT `adminpanel`
--
ALTER TABLE `adminpanel`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用表AUTO_INCREMENT `agent_allowed_family`
--
ALTER TABLE `agent_allowed_family`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用表AUTO_INCREMENT `allowedemails`
--
ALTER TABLE `allowedemails`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2774;

--
-- 使用表AUTO_INCREMENT `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2471264;

--
-- 使用表AUTO_INCREMENT `audiocodecs`
--
ALTER TABLE `audiocodecs`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用表AUTO_INCREMENT `bannedemails`
--
ALTER TABLE `bannedemails`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `bans`
--
ALTER TABLE `bans`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- 使用表AUTO_INCREMENT `bitbucket`
--
ALTER TABLE `bitbucket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;

--
-- 使用表AUTO_INCREMENT `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- 使用表AUTO_INCREMENT `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135901;

--
-- 使用表AUTO_INCREMENT `categories`
--
ALTER TABLE `categories`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- 使用表AUTO_INCREMENT `caticons`
--
ALTER TABLE `caticons`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `cheaters`
--
ALTER TABLE `cheaters`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- 使用表AUTO_INCREMENT `chronicle`
--
ALTER TABLE `chronicle`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `codecs`
--
ALTER TABLE `codecs`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49340;

--
-- 使用表AUTO_INCREMENT `complains`
--
ALTER TABLE `complains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;

--
-- 使用表AUTO_INCREMENT `complain_replies`
--
ALTER TABLE `complain_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=833;

--
-- 使用表AUTO_INCREMENT `countries`
--
ALTER TABLE `countries`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- 使用表AUTO_INCREMENT `downloadspeed`
--
ALTER TABLE `downloadspeed`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `faq`
--
ALTER TABLE `faq`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;

--
-- 使用表AUTO_INCREMENT `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1771800;

--
-- 使用表AUTO_INCREMENT `forummods`
--
ALTER TABLE `forummods`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- 使用表AUTO_INCREMENT `forums`
--
ALTER TABLE `forums`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用表AUTO_INCREMENT `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2120;

--
-- 使用表AUTO_INCREMENT `fun`
--
ALTER TABLE `fun`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=920;

--
-- 使用表AUTO_INCREMENT `funds`
--
ALTER TABLE `funds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `invites`
--
ALTER TABLE `invites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10558;

--
-- 使用表AUTO_INCREMENT `iplog`
--
ALTER TABLE `iplog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4178894;

--
-- 使用表AUTO_INCREMENT `isp`
--
ALTER TABLE `isp`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `language`
--
ALTER TABLE `language`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- 使用表AUTO_INCREMENT `links`
--
ALTER TABLE `links`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `loginattempts`
--
ALTER TABLE `loginattempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111156;

--
-- 使用表AUTO_INCREMENT `magic`
--
ALTER TABLE `magic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11105;

--
-- 使用表AUTO_INCREMENT `media`
--
ALTER TABLE `media`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2005293;

--
-- 使用表AUTO_INCREMENT `modpanel`
--
ALTER TABLE `modpanel`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;

--
-- 使用表AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- 使用表AUTO_INCREMENT `offers`
--
ALTER TABLE `offers`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4964;

--
-- 使用表AUTO_INCREMENT `offervotes`
--
ALTER TABLE `offervotes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32427;

--
-- 使用表AUTO_INCREMENT `overforums`
--
ALTER TABLE `overforums`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `peers`
--
ALTER TABLE `peers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=612833;

--
-- 使用表AUTO_INCREMENT `pmboxes`
--
ALTER TABLE `pmboxes`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用表AUTO_INCREMENT `pollanswers`
--
ALTER TABLE `pollanswers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12663;

--
-- 使用表AUTO_INCREMENT `polls`
--
ALTER TABLE `polls`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22989;

--
-- 使用表AUTO_INCREMENT `processings`
--
ALTER TABLE `processings`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `prolinkclicks`
--
ALTER TABLE `prolinkclicks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2741;

--
-- 使用表AUTO_INCREMENT `readposts`
--
ALTER TABLE `readposts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286820;

--
-- 使用表AUTO_INCREMENT `regimages`
--
ALTER TABLE `regimages`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- 使用表AUTO_INCREMENT `reports`
--
ALTER TABLE `reports`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- 使用表AUTO_INCREMENT `rules`
--
ALTER TABLE `rules`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- 使用表AUTO_INCREMENT `schools`
--
ALTER TABLE `schools`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- 使用表AUTO_INCREMENT `searchbox`
--
ALTER TABLE `searchbox`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `secondicons`
--
ALTER TABLE `secondicons`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用表AUTO_INCREMENT `shoutbox`
--
ALTER TABLE `shoutbox`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7557;

--
-- 使用表AUTO_INCREMENT `sitelog`
--
ALTER TABLE `sitelog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2373617;

--
-- 使用表AUTO_INCREMENT `snatched`
--
ALTER TABLE `snatched`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2034520;

--
-- 使用表AUTO_INCREMENT `sources`
--
ALTER TABLE `sources`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `staffmessages`
--
ALTER TABLE `staffmessages`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- 使用表AUTO_INCREMENT `standards`
--
ALTER TABLE `standards`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `stylesheets`
--
ALTER TABLE `stylesheets`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `subs`
--
ALTER TABLE `subs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4947;

--
-- 使用表AUTO_INCREMENT `suggest`
--
ALTER TABLE `suggest`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1620042;

--
-- 使用表AUTO_INCREMENT `sysoppanel`
--
ALTER TABLE `sysoppanel`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3028;

--
-- 使用表AUTO_INCREMENT `teams`
--
ALTER TABLE `teams`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `thanks`
--
ALTER TABLE `thanks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=982457;

--
-- 使用表AUTO_INCREMENT `topics`
--
ALTER TABLE `topics`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4718;

--
-- 使用表AUTO_INCREMENT `torrents`
--
ALTER TABLE `torrents`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32333;

--
-- 使用表AUTO_INCREMENT `uploadspeed`
--
ALTER TABLE `uploadspeed`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88395;

--
-- 使用表AUTO_INCREMENT `user_invitations`
--
ALTER TABLE `user_invitations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121280;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
