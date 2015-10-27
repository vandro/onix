-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-10-2015 a las 06:44:44
-- Versión del servidor: 5.6.25-0ubuntu0.15.04.1
-- Versión de PHP: 5.6.4-4ubuntu6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cms-beta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Admin', '2', 1444112764),
('SuperAdmin', '1', 1444112772),
('Usuario CMS', '3', 1444112751);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1444111567, 1444111567),
('/admin/*', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1444111616, 1444111616),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1444111616, 1444111616),
('/admin/assignment/search', 2, NULL, NULL, NULL, 1444111616, 1444111616),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1444111616, 1444111616),
('/admin/default/*', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/default/index', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/menu/*', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/menu/create', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/menu/index', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/menu/update', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/menu/view', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/permission/*', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/permission/create', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/permission/index', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/permission/search', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/permission/update', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/permission/view', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/role/*', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/admin/role/assign', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/admin/role/create', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/role/delete', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/admin/role/index', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/role/search', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/admin/role/update', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/role/view', 2, NULL, NULL, NULL, 1444111617, 1444111617),
('/admin/route/*', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/admin/route/assign', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/admin/route/create', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/admin/route/index', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/admin/route/search', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/admin/rule/*', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/admin/rule/create', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/admin/rule/index', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/admin/rule/update', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/admin/rule/view', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/configuration/*', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/configuration/create', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/configuration/delete', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/configuration/index', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/configuration/send-test-email', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/configuration/update', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/configuration/view', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/configuration/view-email-template', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/debug/*', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/debug/default/*', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/debug/default/index', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/debug/default/view', 2, NULL, NULL, NULL, 1444111618, 1444111618),
('/gii/*', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/gii/default/*', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/gii/default/action', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/gii/default/diff', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/gii/default/index', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/gii/default/preview', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/gii/default/view', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/log/*', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/log/create', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/log/delete', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/log/index', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/log/update', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/log/view', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/menu/*', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/menu/create', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/menu/delete', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/menu/index', 2, NULL, NULL, NULL, 1444111619, 1444111619),
('/menu/update', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/menu/view', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/message/*', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/message/create', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/message/delete', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/message/index', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/message/update', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/message/view', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/site/*', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/site/error', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/site/index', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/site/login', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/site/logout', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/site/request-password-reset', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/source-message/*', 2, NULL, NULL, NULL, 1444111621, 1444111621),
('/source-message/delete', 2, NULL, NULL, NULL, 1444111621, 1444111621),
('/source-message/index', 2, NULL, NULL, NULL, 1444111620, 1444111620),
('/source-message/update', 2, NULL, NULL, NULL, 1444111621, 1444111621),
('/source-message/view', 2, NULL, NULL, NULL, 1444111621, 1444111621),
('/user/*', 2, NULL, NULL, NULL, 1444111621, 1444111621),
('/user/change-password', 2, NULL, NULL, NULL, 1444111621, 1444111621),
('/user/create', 2, NULL, NULL, NULL, 1444111621, 1444111621),
('/user/delete', 2, NULL, NULL, NULL, 1444111621, 1444111621),
('/user/index', 2, NULL, NULL, NULL, 1444111621, 1444111621),
('/user/update', 2, NULL, NULL, NULL, 1444111621, 1444111621),
('/user/view', 2, NULL, NULL, NULL, 1444111621, 1444111621),
('Admin', 1, 'Accesos a todo excepto opciones de desarrollador', NULL, NULL, 1442945885, 1444255248),
('SuperAdmin', 1, 'Se tiene acceso a absolutamente todo', NULL, NULL, 1442945360, 1442945788),
('Usuario CMS', 1, 'Accesos a todo excepto configuración de la aplicación y desarrollador', NULL, NULL, 1442945942, 1444255223);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('SuperAdmin', '/*'),
('Admin', '/admin/*'),
('Admin', '/admin/assignment/*'),
('Admin', '/admin/role/*'),
('Admin', '/admin/route/*'),
('Admin', '/configuration/*'),
('Admin', '/menu/*'),
('Usuario CMS', '/message/*'),
('Admin', '/site/*'),
('Usuario CMS', '/site/*'),
('Usuario CMS', '/source-message/*'),
('Admin', '/user/*'),
('Usuario CMS', '/user/update'),
('Usuario CMS', '/user/view');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuration`
--

CREATE TABLE IF NOT EXISTS `configuration` (
`id` int(11) NOT NULL,
  `company` varchar(120) NOT NULL,
  `email_name` varchar(120) NOT NULL,
  `host` varchar(120) NOT NULL,
  `encryption` varchar(20) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `port` varchar(45) NOT NULL,
  `template` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `configuration`
--

INSERT INTO `configuration` (`id`, `company`, `email_name`, `host`, `encryption`, `username`, `password`, `port`, `template`) VALUES
(1, 'ONIX Labs', 'OnixLabs Support Team', 'smtp-mail.outlook.com', 'tls', 'andres.felipe.az@hotmail.com', 'andres-1990', '587', '<div>\r\n<div>\r\n<div>\r\n<table class="body" style="border-spacing: 0; border-collapse: collapse; padding: 0; vertical-align: top; text-align: left; height: 100%; width: 100%; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px;">\r\n<tbody>\r\n<tr style="padding: 0; vertical-align: top; text-align: left;">\r\n<td class="center" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 0; vertical-align: top; text-align: center; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; border-collapse: collapse !important;" align="center" valign="top"><center style="width: 100%; min-width: 580px;">\r\n<table class="row header" style="border-spacing: 0; border-collapse: collapse; padding: 0px; vertical-align: top; text-align: left; background: #367FA9; width: 100%; position: relative;">\r\n<tbody>\r\n<tr style="padding: 0; vertical-align: top; text-align: left;">\r\n<td class="center" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 0; vertical-align: top; text-align: center; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; border-collapse: collapse !important;" align="center"><center style="width: 100%; min-width: 580px;">\r\n<table class="container" style="border-spacing: 0; border-collapse: collapse; padding: 0; vertical-align: top; text-align: inherit; width: 580px; margin: 0 auto;">\r\n<tbody>\r\n<tr style="padding: 0; vertical-align: top; text-align: left;">\r\n<td class="wrapper last" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 10px 20px 0px 0px; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; position: relative; padding-right: 0px; border-collapse: collapse !important;">\r\n<table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; padding: 0; vertical-align: top; text-align: left; margin: 0 auto; width: 580px;">\r\n<tbody>\r\n<tr style="padding: 0; vertical-align: top; text-align: left;">\r\n<td class="six sub-columns" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 0px 0px 10px; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; min-width: 0px; padding-right: 10px; width: 50%; border-collapse: collapse !important;"><img style="outline: none; text-decoration: none; -ms-interpolation-mode: bicubic; width: auto; max-width: 100%; float: left; clear: both; display: block;" src="/cms_beta/frontend/web/uploads/logo_cms%20%281%29.png" alt="LOGO" width="200" height="50" /></td>\r\n<td class="six sub-columns last" style="text-align: right; vertical-align: middle; word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 0px 0px 10px; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; min-width: 0px; padding-right: 0px; width: 50%; border-collapse: collapse !important;"><span class="template-label" style="color: #ffffff; font-weight: bold; font-size: 11px;">__COMPANY_NAME__</span></td>\r\n<td class="expander" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 0 !important; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; visibility: hidden; width: 0px; border-collapse: collapse !important;">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</center></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class="container" style="border-spacing: 0; border-collapse: collapse; padding: 0; vertical-align: top; text-align: inherit; width: 580px; margin: 0 auto;">\r\n<tbody>\r\n<tr style="padding: 0; vertical-align: top; text-align: left;">\r\n<td style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 0; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; border-collapse: collapse !important;">\r\n<table class="row" style="border-spacing: 0; border-collapse: collapse; padding: 0px; vertical-align: top; text-align: left; width: 100%; position: relative; display: block;">\r\n<tbody>\r\n<tr style="padding: 0; vertical-align: top; text-align: left;">\r\n<td class="wrapper last" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 10px 20px 0px 0px; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; position: relative; padding-right: 0px; border-collapse: collapse !important;">\r\n<table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; padding: 0; vertical-align: top; text-align: left; margin: 0 auto; width: 580px;">\r\n<tbody>\r\n<tr style="padding: 0; vertical-align: top; text-align: left;">\r\n<td style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 0px 0px 10px; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; border-collapse: collapse !important;">\r\n<p style="margin: 0; margin-bottom: 10px; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; padding: 0; text-align: left; line-height: 19px; font-size: 14px;">&nbsp;</p>\r\n<p style="margin: 0; margin-bottom: 10px; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; padding: 0; text-align: left; line-height: 19px; font-size: 14px;">&nbsp;</p>\r\n<p style="margin: 0; margin-bottom: 10px; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; padding: 0; text-align: left; line-height: 19px; font-size: 14px;">__CONTENT__</p>\r\n<p style="margin: 0; margin-bottom: 10px; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; padding: 0; text-align: left; line-height: 19px; font-size: 14px;">&nbsp;</p>\r\n</td>\r\n<td class="expander" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 0 !important; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; visibility: hidden; width: 0px; border-collapse: collapse !important;">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class="row callout" style="border-spacing: 0; border-collapse: collapse; padding: 0px; vertical-align: top; text-align: left; width: 100%; position: relative; display: block;">\r\n<tbody>\r\n<tr style="padding: 0; vertical-align: top; text-align: left;">\r\n<td class="wrapper last" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 10px 20px 0px 0px; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; position: relative; padding-bottom: 20px; padding-right: 0px; border-collapse: collapse !important;">\r\n<table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; padding: 0; vertical-align: top; text-align: left; margin: 0 auto; width: 580px;">\r\n<tbody>\r\n<tr style="padding: 0; vertical-align: top; text-align: left;">\r\n<td class="panel" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 10px !important; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; background: #ECF8FF; border: 1px solid #d9d9d9; border-color: #b9e5ff; border-collapse: collapse !important;">\r\n<p style="margin: 0; margin-bottom: 10px; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; padding: 0; text-align: left; line-height: 19px; font-size: 14px;">Gracias por contar con nuestros servicios.</p>\r\n</td>\r\n<td class="expander" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 0 !important; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; visibility: hidden; width: 0px; border-collapse: collapse !important;">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class="row footer" style="border-spacing: 0; border-collapse: collapse; padding: 0px; vertical-align: top; text-align: left; width: 100%; position: relative; display: block;">\r\n<tbody>\r\n<tr style="padding: 0; vertical-align: top; text-align: left;">\r\n<td class="wrapper" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 10px 20px 0px 0px; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; position: relative; background: #ebebeb; border-collapse: collapse !important;">\r\n<table class="six columns" style="border-spacing: 0; border-collapse: collapse; padding: 0; vertical-align: top; text-align: left; margin: 0 auto; width: 280px;">\r\n<tbody>\r\n<tr style="padding: 0; vertical-align: top; text-align: left;">\r\n<td class="left-text-pad" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 0px 0px 10px; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; padding-left: 10px; border-collapse: collapse !important;">\r\n<h5 style="color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; padding: 0; margin: 0; text-align: left; line-height: 1.3; word-break: normal; font-size: 24px; padding-bottom: 10px;">Encuentranos en:</h5>\r\n<table class="tiny-button facebook" style="border-spacing: 0; border-collapse: collapse; padding: 0; vertical-align: top; text-align: left; width: 100%; overflow: hidden;">\r\n<tbody>\r\n<tr style="padding: 0; vertical-align: top; text-align: left;">\r\n<td style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 5px 0 4px; vertical-align: top; text-align: center; color: #ffffff; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; display: block; background: #3b5998; border: 1px solid #2284a1; border-color: #2d4473; border-collapse: collapse !important; width: auto !important;"><a style="color: #ffffff; text-decoration: none; font-weight: normal; font-family: Helvetica, Arial, sans-serif; font-size: 12px;" href="http://facebook.com">Facebook</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n&nbsp;\r\n<table class="tiny-button twitter" style="border-spacing: 0; border-collapse: collapse; padding: 0; vertical-align: top; text-align: left; width: 100%; overflow: hidden;">\r\n<tbody>\r\n<tr style="padding: 0; vertical-align: top; text-align: left;">\r\n<td style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 5px 0 4px; vertical-align: top; text-align: center; color: #ffffff; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; display: block; background: #00acee; border: 1px solid #2284a1; border-color: #0087bb; border-collapse: collapse !important; width: auto !important;"><a style="color: #ffffff; text-decoration: none; font-weight: normal; font-family: Helvetica, Arial, sans-serif; font-size: 12px;" href="http://twitter.com">Twitter</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n&nbsp;\r\n<table class="tiny-button google-plus" style="border-spacing: 0; border-collapse: collapse; padding: 0; vertical-align: top; text-align: left; width: 100%; overflow: hidden;">\r\n<tbody>\r\n<tr style="padding: 0; vertical-align: top; text-align: left;">\r\n<td style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 5px 0 4px; vertical-align: top; text-align: center; color: #ffffff; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; display: block; background: #2ba6cb; border: 1px solid #2284a1; background-color: #db4a39; border-color: #CC0000; border-collapse: collapse !important; width: auto !important;"><a style="color: #ffffff; text-decoration: none; font-weight: normal; font-family: Helvetica, Arial, sans-serif; font-size: 12px;" href="http://plus.google.com">Google +</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n<td class="expander" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 0 !important; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; visibility: hidden; width: 0px; border-collapse: collapse !important;">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n<td class="wrapper last" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 10px 20px 0px 0px; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; position: relative; background: #ebebeb; padding-right: 0px; border-collapse: collapse !important;">\r\n<table class="six columns" style="border-spacing: 0; border-collapse: collapse; padding: 0; vertical-align: top; text-align: left; margin: 0 auto; width: 280px;">\r\n<tbody>\r\n<tr style="padding: 0; vertical-align: top; text-align: left;">\r\n<td class="last right-text-pad" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 0px 0px 10px; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; padding-right: 0px; border-collapse: collapse !important;">\r\n<h5 style="color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; padding: 0; margin: 0; text-align: left; line-height: 1.3; word-break: normal; font-size: 24px; padding-bottom: 10px;">Cont&aacute;ctenos:</h5>\r\n<p style="margin: 0; margin-bottom: 10px; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; padding: 0; text-align: left; line-height: 19px; font-size: 14px;">Tel:&nbsp;321 233 38 62</p>\r\n<p style="margin: 0; margin-bottom: 10px; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; padding: 0; text-align: left; line-height: 19px; font-size: 14px;">Email: <a style="color: #2ba6cb; text-decoration: none;" href="mailto:devsolarte@gmail.com" target="_blank">devsolarte@gmail.com</a></p>\r\n</td>\r\n<td class="expander" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 0 !important; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; visibility: hidden; width: 0px; border-collapse: collapse !important;">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class="row" style="border-spacing: 0; border-collapse: collapse; padding: 0px; vertical-align: top; text-align: left; width: 100%; position: relative; display: block;">\r\n<tbody>\r\n<tr style="padding: 0; vertical-align: top; text-align: left;">\r\n<td class="wrapper last" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 10px 20px 0px 0px; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; position: relative; padding-right: 0px; border-collapse: collapse !important;">\r\n<table class="twelve columns" style="border-spacing: 0; border-collapse: collapse; padding: 0; vertical-align: top; text-align: left; margin: 0 auto; width: 580px;">\r\n<tbody>\r\n<tr style="padding: 0; vertical-align: top; text-align: left;">\r\n<td style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 0px 0px 10px; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; border-collapse: collapse !important;" align="center"><center style="width: 100%; min-width: 580px;">\r\n<p style="text-align: center; margin: 0; margin-bottom: 10px; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; padding: 0; line-height: 19px; font-size: 14px;">&nbsp;</p>\r\n</center></td>\r\n<td class="expander" style="word-break: break-word; -webkit-hyphens: auto; -moz-hyphens: auto; hyphens: auto; padding: 0 !important; vertical-align: top; text-align: left; color: #222222; font-family: ''Helvetica'', ''Arial'', sans-serif; font-weight: normal; margin: 0; line-height: 19px; font-size: 14px; visibility: hidden; width: 0px; border-collapse: collapse !important;">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- container end below --></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</center></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faIcon`
--

CREATE TABLE IF NOT EXISTS `faIcon` (
`id` int(11) NOT NULL,
  `class` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=675 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `faIcon`
--

INSERT INTO `faIcon` (`id`, `class`) VALUES
(1, 'fa-glass'),
(2, 'fa-music'),
(3, 'fa-search'),
(4, 'fa-envelope-o'),
(5, 'fa-heart'),
(6, 'fa-star'),
(7, 'fa-star-o'),
(8, 'fa-user'),
(9, 'fa-film'),
(10, 'fa-th-large'),
(11, 'fa-th'),
(12, 'fa-th-list'),
(13, 'fa-check'),
(14, 'fa-removeddd'),
(15, 'fa-closeddd'),
(16, 'fa-times'),
(17, 'fa-search-plus'),
(18, 'fa-search-minus'),
(19, 'fa-power-off'),
(20, 'fa-signal'),
(21, 'fa-gearddd'),
(22, 'fa-cog'),
(23, 'fa-trash-o'),
(24, 'fa-home'),
(25, 'fa-file-o'),
(26, 'fa-clock-o'),
(27, 'fa-road'),
(28, 'fa-download'),
(29, 'fa-arrow-circle-o-down'),
(30, 'fa-arrow-circle-o-up'),
(31, 'fa-inbox'),
(32, 'fa-play-circle-o'),
(33, 'fa-rotate-rightddd'),
(34, 'fa-repeat'),
(35, 'fa-refresh'),
(36, 'fa-list-alt'),
(37, 'fa-lock'),
(38, 'fa-flag'),
(39, 'fa-headphones'),
(40, 'fa-volume-off'),
(41, 'fa-volume-down'),
(42, 'fa-volume-up'),
(43, 'fa-qrcode'),
(44, 'fa-barcode'),
(45, 'fa-tag'),
(46, 'fa-tags'),
(47, 'fa-book'),
(48, 'fa-bookmark'),
(49, 'fa-print'),
(50, 'fa-camera'),
(51, 'fa-font'),
(52, 'fa-bold'),
(53, 'fa-italic'),
(54, 'fa-text-height'),
(55, 'fa-text-width'),
(56, 'fa-align-left'),
(57, 'fa-align-center'),
(58, 'fa-align-right'),
(59, 'fa-align-justify'),
(60, 'fa-list'),
(61, 'fa-dedentddd'),
(62, 'fa-outdent'),
(63, 'fa-indent'),
(64, 'fa-video-camera'),
(65, 'fa-photoddd'),
(66, 'fa-imageddd'),
(67, 'fa-picture-o'),
(68, 'fa-pencil'),
(69, 'fa-map-marker'),
(70, 'fa-adjust'),
(71, 'fa-tint'),
(72, 'fa-editddd'),
(73, 'fa-pencil-square-o'),
(74, 'fa-share-square-o'),
(75, 'fa-check-square-o'),
(76, 'fa-arrows'),
(77, 'fa-step-backward'),
(78, 'fa-fast-backward'),
(79, 'fa-backward'),
(80, 'fa-play'),
(81, 'fa-pause'),
(82, 'fa-stop'),
(83, 'fa-forward'),
(84, 'fa-fast-forward'),
(85, 'fa-step-forward'),
(86, 'fa-eject'),
(87, 'fa-chevron-left'),
(88, 'fa-chevron-right'),
(89, 'fa-plus-circle'),
(90, 'fa-minus-circle'),
(91, 'fa-times-circle'),
(92, 'fa-check-circle'),
(93, 'fa-question-circle'),
(94, 'fa-info-circle'),
(95, 'fa-crosshairs'),
(96, 'fa-times-circle-o'),
(97, 'fa-check-circle-o'),
(98, 'fa-ban'),
(99, 'fa-arrow-left'),
(100, 'fa-arrow-right'),
(101, 'fa-arrow-up'),
(102, 'fa-arrow-down'),
(103, 'fa-mail-forwardddd'),
(104, 'fa-share'),
(105, 'fa-expand'),
(106, 'fa-compress'),
(107, 'fa-plus'),
(108, 'fa-minus'),
(109, 'fa-asterisk'),
(110, 'fa-exclamation-circle'),
(111, 'fa-gift'),
(112, 'fa-leaf'),
(113, 'fa-fire'),
(114, 'fa-eye'),
(115, 'fa-eye-slash'),
(116, 'fa-warningddd'),
(117, 'fa-exclamation-triangle'),
(118, 'fa-plane'),
(119, 'fa-calendar'),
(120, 'fa-random'),
(121, 'fa-comment'),
(122, 'fa-magnet'),
(123, 'fa-chevron-up'),
(124, 'fa-chevron-down'),
(125, 'fa-retweet'),
(126, 'fa-shopping-cart'),
(127, 'fa-folder'),
(128, 'fa-folder-open'),
(129, 'fa-arrows-v'),
(130, 'fa-arrows-h'),
(131, 'fa-bar-chart-oddd'),
(132, 'fa-bar-chart'),
(133, 'fa-twitter-square'),
(134, 'fa-facebook-square'),
(135, 'fa-camera-retro'),
(136, 'fa-key'),
(137, 'fa-gearsddd'),
(138, 'fa-cogs'),
(139, 'fa-comments'),
(140, 'fa-thumbs-o-up'),
(141, 'fa-thumbs-o-down'),
(142, 'fa-star-half'),
(143, 'fa-heart-o'),
(144, 'fa-sign-out'),
(145, 'fa-linkedin-square'),
(146, 'fa-thumb-tack'),
(147, 'fa-external-link'),
(148, 'fa-sign-in'),
(149, 'fa-trophy'),
(150, 'fa-github-square'),
(151, 'fa-upload'),
(152, 'fa-lemon-o'),
(153, 'fa-phone'),
(154, 'fa-square-o'),
(155, 'fa-bookmark-o'),
(156, 'fa-phone-square'),
(157, 'fa-twitter'),
(158, 'fa-facebook-fddd'),
(159, 'fa-facebook'),
(160, 'fa-github'),
(161, 'fa-unlock'),
(162, 'fa-credit-card'),
(163, 'fa-feedddd'),
(164, 'fa-rss'),
(165, 'fa-hdd-o'),
(166, 'fa-bullhorn'),
(167, 'fa-bell'),
(168, 'fa-certificate'),
(169, 'fa-hand-o-right'),
(170, 'fa-hand-o-left'),
(171, 'fa-hand-o-up'),
(172, 'fa-hand-o-down'),
(173, 'fa-arrow-circle-left'),
(174, 'fa-arrow-circle-right'),
(175, 'fa-arrow-circle-up'),
(176, 'fa-arrow-circle-down'),
(177, 'fa-globe'),
(178, 'fa-wrench'),
(179, 'fa-tasks'),
(180, 'fa-filter'),
(181, 'fa-briefcase'),
(182, 'fa-arrows-alt'),
(183, 'fa-groupddd'),
(184, 'fa-users'),
(185, 'fa-chainddd'),
(186, 'fa-link'),
(187, 'fa-cloud'),
(188, 'fa-flask'),
(189, 'fa-cutddd'),
(190, 'fa-scissors'),
(191, 'fa-copyddd'),
(192, 'fa-files-o'),
(193, 'fa-paperclip'),
(194, 'fa-saveddd'),
(195, 'fa-floppy-o'),
(196, 'fa-square'),
(197, 'fa-naviconddd'),
(198, 'fa-reorderddd'),
(199, 'fa-bars'),
(200, 'fa-list-ul'),
(201, 'fa-list-ol'),
(202, 'fa-strikethrough'),
(203, 'fa-underline'),
(204, 'fa-table'),
(205, 'fa-magic'),
(206, 'fa-truck'),
(207, 'fa-pinterest'),
(208, 'fa-pinterest-square'),
(209, 'fa-google-plus-square'),
(210, 'fa-google-plus'),
(211, 'fa-money'),
(212, 'fa-caret-down'),
(213, 'fa-caret-up'),
(214, 'fa-caret-left'),
(215, 'fa-caret-right'),
(216, 'fa-columns'),
(217, 'fa-unsortedddd'),
(218, 'fa-sort'),
(219, 'fa-sort-downddd'),
(220, 'fa-sort-desc'),
(221, 'fa-sort-upddd'),
(222, 'fa-sort-asc'),
(223, 'fa-envelope'),
(224, 'fa-linkedin'),
(225, 'fa-rotate-leftddd'),
(226, 'fa-undo'),
(227, 'fa-legalddd'),
(228, 'fa-gavel'),
(229, 'fa-dashboardddd'),
(230, 'fa-tachometer'),
(231, 'fa-comment-o'),
(232, 'fa-comments-o'),
(233, 'fa-flashddd'),
(234, 'fa-bolt'),
(235, 'fa-sitemap'),
(236, 'fa-umbrella'),
(237, 'fa-pasteddd'),
(238, 'fa-clipboard'),
(239, 'fa-lightbulb-o'),
(240, 'fa-exchange'),
(241, 'fa-cloud-download'),
(242, 'fa-cloud-upload'),
(243, 'fa-user-md'),
(244, 'fa-stethoscope'),
(245, 'fa-suitcase'),
(246, 'fa-bell-o'),
(247, 'fa-coffee'),
(248, 'fa-cutlery'),
(249, 'fa-file-text-o'),
(250, 'fa-building-o'),
(251, 'fa-hospital-o'),
(252, 'fa-ambulance'),
(253, 'fa-medkit'),
(254, 'fa-fighter-jet'),
(255, 'fa-beer'),
(256, 'fa-h-square'),
(257, 'fa-plus-square'),
(258, 'fa-angle-double-left'),
(259, 'fa-angle-double-right'),
(260, 'fa-angle-double-up'),
(261, 'fa-angle-double-down'),
(262, 'fa-angle-left'),
(263, 'fa-angle-right'),
(264, 'fa-angle-up'),
(265, 'fa-angle-down'),
(266, 'fa-desktop'),
(267, 'fa-laptop'),
(268, 'fa-tablet'),
(269, 'fa-mobile-phoneddd'),
(270, 'fa-mobile'),
(271, 'fa-circle-o'),
(272, 'fa-quote-left'),
(273, 'fa-quote-right'),
(274, 'fa-spinner'),
(275, 'fa-circle'),
(276, 'fa-mail-replyddd'),
(277, 'fa-reply'),
(278, 'fa-github-alt'),
(279, 'fa-folder-o'),
(280, 'fa-folder-open-o'),
(281, 'fa-smile-o'),
(282, 'fa-frown-o'),
(283, 'fa-meh-o'),
(284, 'fa-gamepad'),
(285, 'fa-keyboard-o'),
(286, 'fa-flag-o'),
(287, 'fa-flag-checkered'),
(288, 'fa-terminal'),
(289, 'fa-code'),
(290, 'fa-mail-reply-allddd'),
(291, 'fa-reply-all'),
(292, 'fa-star-half-emptyddd'),
(293, 'fa-star-half-fullddd'),
(294, 'fa-star-half-o'),
(295, 'fa-location-arrow'),
(296, 'fa-crop'),
(297, 'fa-code-fork'),
(298, 'fa-unlinkddd'),
(299, 'fa-chain-broken'),
(300, 'fa-question'),
(301, 'fa-info'),
(302, 'fa-exclamation'),
(303, 'fa-superscript'),
(304, 'fa-subscript'),
(305, 'fa-eraser'),
(306, 'fa-puzzle-piece'),
(307, 'fa-microphone'),
(308, 'fa-microphone-slash'),
(309, 'fa-shield'),
(310, 'fa-calendar-o'),
(311, 'fa-fire-extinguisher'),
(312, 'fa-rocket'),
(313, 'fa-maxcdn'),
(314, 'fa-chevron-circle-left'),
(315, 'fa-chevron-circle-right'),
(316, 'fa-chevron-circle-up'),
(317, 'fa-chevron-circle-down'),
(318, 'fa-html5'),
(319, 'fa-css3'),
(320, 'fa-anchor'),
(321, 'fa-unlock-alt'),
(322, 'fa-bullseye'),
(323, 'fa-ellipsis-h'),
(324, 'fa-ellipsis-v'),
(325, 'fa-rss-square'),
(326, 'fa-play-circle'),
(327, 'fa-ticket'),
(328, 'fa-minus-square'),
(329, 'fa-minus-square-o'),
(330, 'fa-level-up'),
(331, 'fa-level-down'),
(332, 'fa-check-square'),
(333, 'fa-pencil-square'),
(334, 'fa-external-link-square'),
(335, 'fa-share-square'),
(336, 'fa-compass'),
(337, 'fa-toggle-downddd'),
(338, 'fa-caret-square-o-down'),
(339, 'fa-toggle-upddd'),
(340, 'fa-caret-square-o-up'),
(341, 'fa-toggle-rightddd'),
(342, 'fa-caret-square-o-right'),
(343, 'fa-euroddd'),
(344, 'fa-eur'),
(345, 'fa-gbp'),
(346, 'fa-dollarddd'),
(347, 'fa-usd'),
(348, 'fa-rupeeddd'),
(349, 'fa-inr'),
(350, 'fa-cnyddd'),
(351, 'fa-rmbddd'),
(352, 'fa-yenddd'),
(353, 'fa-jpy'),
(354, 'fa-rubleddd'),
(355, 'fa-roubleddd'),
(356, 'fa-rub'),
(357, 'fa-wonddd'),
(358, 'fa-krw'),
(359, 'fa-bitcoinddd'),
(360, 'fa-btc'),
(361, 'fa-file'),
(362, 'fa-file-text'),
(363, 'fa-sort-alpha-asc'),
(364, 'fa-sort-alpha-desc'),
(365, 'fa-sort-amount-asc'),
(366, 'fa-sort-amount-desc'),
(367, 'fa-sort-numeric-asc'),
(368, 'fa-sort-numeric-desc'),
(369, 'fa-thumbs-up'),
(370, 'fa-thumbs-down'),
(371, 'fa-youtube-square'),
(372, 'fa-youtube'),
(373, 'fa-xing'),
(374, 'fa-xing-square'),
(375, 'fa-youtube-play'),
(376, 'fa-dropbox'),
(377, 'fa-stack-overflow'),
(378, 'fa-instagram'),
(379, 'fa-flickr'),
(380, 'fa-adn'),
(381, 'fa-bitbucket'),
(382, 'fa-bitbucket-square'),
(383, 'fa-tumblr'),
(384, 'fa-tumblr-square'),
(385, 'fa-long-arrow-down'),
(386, 'fa-long-arrow-up'),
(387, 'fa-long-arrow-left'),
(388, 'fa-long-arrow-right'),
(389, 'fa-apple'),
(390, 'fa-windows'),
(391, 'fa-android'),
(392, 'fa-linux'),
(393, 'fa-dribbble'),
(394, 'fa-skype'),
(395, 'fa-foursquare'),
(396, 'fa-trello'),
(397, 'fa-female'),
(398, 'fa-male'),
(399, 'fa-gittipddd'),
(400, 'fa-gratipay'),
(401, 'fa-sun-o'),
(402, 'fa-moon-o'),
(403, 'fa-archive'),
(404, 'fa-bug'),
(405, 'fa-vk'),
(406, 'fa-weibo'),
(407, 'fa-renren'),
(408, 'fa-pagelines'),
(409, 'fa-stack-exchange'),
(410, 'fa-arrow-circle-o-right'),
(411, 'fa-arrow-circle-o-left'),
(412, 'fa-toggle-leftddd'),
(413, 'fa-caret-square-o-left'),
(414, 'fa-dot-circle-o'),
(415, 'fa-wheelchair'),
(416, 'fa-vimeo-square'),
(417, 'fa-turkish-liraddd'),
(418, 'fa-try'),
(419, 'fa-plus-square-o'),
(420, 'fa-space-shuttle'),
(421, 'fa-slack'),
(422, 'fa-envelope-square'),
(423, 'fa-wordpress'),
(424, 'fa-openid'),
(425, 'fa-institutionddd'),
(426, 'fa-bankddd'),
(427, 'fa-university'),
(428, 'fa-mortar-boardddd'),
(429, 'fa-graduation-cap'),
(430, 'fa-yahoo'),
(431, 'fa-google'),
(432, 'fa-reddit'),
(433, 'fa-reddit-square'),
(434, 'fa-stumbleupon-circle'),
(435, 'fa-stumbleupon'),
(436, 'fa-delicious'),
(437, 'fa-digg'),
(438, 'fa-pied-piper'),
(439, 'fa-pied-piper-alt'),
(440, 'fa-drupal'),
(441, 'fa-joomla'),
(442, 'fa-language'),
(443, 'fa-fax'),
(444, 'fa-building'),
(445, 'fa-child'),
(446, 'fa-paw'),
(447, 'fa-spoon'),
(448, 'fa-cube'),
(449, 'fa-cubes'),
(450, 'fa-behance'),
(451, 'fa-behance-square'),
(452, 'fa-steam'),
(453, 'fa-steam-square'),
(454, 'fa-recycle'),
(455, 'fa-automobileddd'),
(456, 'fa-car'),
(457, 'fa-cabddd'),
(458, 'fa-taxi'),
(459, 'fa-tree'),
(460, 'fa-spotify'),
(461, 'fa-deviantart'),
(462, 'fa-soundcloud'),
(463, 'fa-database'),
(464, 'fa-file-pdf-o'),
(465, 'fa-file-word-o'),
(466, 'fa-file-excel-o'),
(467, 'fa-file-powerpoint-o'),
(468, 'fa-file-photo-oddd'),
(469, 'fa-file-picture-oddd'),
(470, 'fa-file-image-o'),
(471, 'fa-file-zip-oddd'),
(472, 'fa-file-archive-o'),
(473, 'fa-file-sound-oddd'),
(474, 'fa-file-audio-o'),
(475, 'fa-file-movie-oddd'),
(476, 'fa-file-video-o'),
(477, 'fa-file-code-o'),
(478, 'fa-vine'),
(479, 'fa-codepen'),
(480, 'fa-jsfiddle'),
(481, 'fa-life-bouyddd'),
(482, 'fa-life-buoyddd'),
(483, 'fa-life-saverddd'),
(484, 'fa-supportddd'),
(485, 'fa-life-ring'),
(486, 'fa-circle-o-notch'),
(487, 'fa-raddd'),
(488, 'fa-rebel'),
(489, 'fa-geddd'),
(490, 'fa-empire'),
(491, 'fa-git-square'),
(492, 'fa-git'),
(493, 'fa-y-combinator-squareddd'),
(494, 'fa-yc-squareddd'),
(495, 'fa-hacker-news'),
(496, 'fa-tencent-weibo'),
(497, 'fa-qq'),
(498, 'fa-wechatddd'),
(499, 'fa-weixin'),
(500, 'fa-sendddd'),
(501, 'fa-paper-plane'),
(502, 'fa-send-oddd'),
(503, 'fa-paper-plane-o'),
(504, 'fa-history'),
(505, 'fa-circle-thin'),
(506, 'fa-header'),
(507, 'fa-paragraph'),
(508, 'fa-sliders'),
(509, 'fa-share-alt'),
(510, 'fa-share-alt-square'),
(511, 'fa-bomb'),
(512, 'fa-soccer-ball-oddd'),
(513, 'fa-futbol-o'),
(514, 'fa-tty'),
(515, 'fa-binoculars'),
(516, 'fa-plug'),
(517, 'fa-slideshare'),
(518, 'fa-twitch'),
(519, 'fa-yelp'),
(520, 'fa-newspaper-o'),
(521, 'fa-wifi'),
(522, 'fa-calculator'),
(523, 'fa-paypal'),
(524, 'fa-google-wallet'),
(525, 'fa-cc-visa'),
(526, 'fa-cc-mastercard'),
(527, 'fa-cc-discover'),
(528, 'fa-cc-amex'),
(529, 'fa-cc-paypal'),
(530, 'fa-cc-stripe'),
(531, 'fa-bell-slash'),
(532, 'fa-bell-slash-o'),
(533, 'fa-trash'),
(534, 'fa-copyright'),
(535, 'fa-at'),
(536, 'fa-eyedropper'),
(537, 'fa-paint-brush'),
(538, 'fa-birthday-cake'),
(539, 'fa-area-chart'),
(540, 'fa-pie-chart'),
(541, 'fa-line-chart'),
(542, 'fa-lastfm'),
(543, 'fa-lastfm-square'),
(544, 'fa-toggle-off'),
(545, 'fa-toggle-on'),
(546, 'fa-bicycle'),
(547, 'fa-bus'),
(548, 'fa-ioxhost'),
(549, 'fa-angellist'),
(550, 'fa-cc'),
(551, 'fa-shekelddd'),
(552, 'fa-sheqelddd'),
(553, 'fa-ils'),
(554, 'fa-meanpath'),
(555, 'fa-buysellads'),
(556, 'fa-connectdevelop'),
(557, 'fa-dashcube'),
(558, 'fa-forumbee'),
(559, 'fa-leanpub'),
(560, 'fa-sellsy'),
(561, 'fa-shirtsinbulk'),
(562, 'fa-simplybuilt'),
(563, 'fa-skyatlas'),
(564, 'fa-cart-plus'),
(565, 'fa-cart-arrow-down'),
(566, 'fa-diamond'),
(567, 'fa-ship'),
(568, 'fa-user-secret'),
(569, 'fa-motorcycle'),
(570, 'fa-street-view'),
(571, 'fa-heartbeat'),
(572, 'fa-venus'),
(573, 'fa-mars'),
(574, 'fa-mercury'),
(575, 'fa-intersexddd'),
(576, 'fa-transgender'),
(577, 'fa-transgender-alt'),
(578, 'fa-venus-double'),
(579, 'fa-mars-double'),
(580, 'fa-venus-mars'),
(581, 'fa-mars-stroke'),
(582, 'fa-mars-stroke-v'),
(583, 'fa-mars-stroke-h'),
(584, 'fa-neuter'),
(585, 'fa-genderless'),
(586, 'fa-facebook-official'),
(587, 'fa-pinterest-p'),
(588, 'fa-whatsapp'),
(589, 'fa-server'),
(590, 'fa-user-plus'),
(591, 'fa-user-times'),
(592, 'fa-hotelddd'),
(593, 'fa-bed'),
(594, 'fa-viacoin'),
(595, 'fa-train'),
(596, 'fa-subway'),
(597, 'fa-medium'),
(598, 'fa-ycddd'),
(599, 'fa-y-combinator'),
(600, 'fa-optin-monster'),
(601, 'fa-opencart'),
(602, 'fa-expeditedssl'),
(603, 'fa-battery-4ddd'),
(604, 'fa-battery-full'),
(605, 'fa-battery-3ddd'),
(606, 'fa-battery-three-quarters'),
(607, 'fa-battery-2ddd'),
(608, 'fa-battery-half'),
(609, 'fa-battery-1ddd'),
(610, 'fa-battery-quarter'),
(611, 'fa-battery-0ddd'),
(612, 'fa-battery-empty'),
(613, 'fa-mouse-pointer'),
(614, 'fa-i-cursor'),
(615, 'fa-object-group'),
(616, 'fa-object-ungroup'),
(617, 'fa-sticky-note'),
(618, 'fa-sticky-note-o'),
(619, 'fa-cc-jcb'),
(620, 'fa-cc-diners-club'),
(621, 'fa-clone'),
(622, 'fa-balance-scale'),
(623, 'fa-hourglass-o'),
(624, 'fa-hourglass-1ddd'),
(625, 'fa-hourglass-start'),
(626, 'fa-hourglass-2ddd'),
(627, 'fa-hourglass-half'),
(628, 'fa-hourglass-3ddd'),
(629, 'fa-hourglass-end'),
(630, 'fa-hourglass'),
(631, 'fa-hand-grab-oddd'),
(632, 'fa-hand-rock-o'),
(633, 'fa-hand-stop-oddd'),
(634, 'fa-hand-paper-o'),
(635, 'fa-hand-scissors-o'),
(636, 'fa-hand-lizard-o'),
(637, 'fa-hand-spock-o'),
(638, 'fa-hand-pointer-o'),
(639, 'fa-hand-peace-o'),
(640, 'fa-trademark'),
(641, 'fa-registered'),
(642, 'fa-creative-commons'),
(643, 'fa-gg'),
(644, 'fa-gg-circle'),
(645, 'fa-tripadvisor'),
(646, 'fa-odnoklassniki'),
(647, 'fa-odnoklassniki-square'),
(648, 'fa-get-pocket'),
(649, 'fa-wikipedia-w'),
(650, 'fa-safari'),
(651, 'fa-chrome'),
(652, 'fa-firefox'),
(653, 'fa-opera'),
(654, 'fa-internet-explorer'),
(655, 'fa-tvddd'),
(656, 'fa-television'),
(657, 'fa-contao'),
(658, 'fa-500px'),
(659, 'fa-amazon'),
(660, 'fa-calendar-plus-o'),
(661, 'fa-calendar-minus-o'),
(662, 'fa-calendar-times-o'),
(663, 'fa-calendar-check-o'),
(664, 'fa-industry'),
(665, 'fa-map-pin'),
(666, 'fa-map-signs'),
(667, 'fa-map-o'),
(668, 'fa-map'),
(669, 'fa-commenting'),
(670, 'fa-commenting-o'),
(671, 'fa-houzz'),
(672, 'fa-vimeo'),
(673, 'fa-black-tie'),
(674, 'fa-fonticons');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE IF NOT EXISTS `log` (
`id` bigint(20) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_time` double DEFAULT NULL,
  `prefix` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(1, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946170.2649, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(2, 4, 'application', 1445946169.1672, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39718''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/log/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/log/index''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946169.166\n    ''REQUEST_TIME'' => 1445946169\n]'),
(3, 2, 'yii\\log\\Dispatcher::dispatch', 1445946172.2834, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),
(4, 4, 'application', 1445946169.1672, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39718''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/log/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/log/index''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946169.166\n    ''REQUEST_TIME'' => 1445946169\n]'),
(5, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946176.4212, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(6, 4, 'application', 1445946175.6114, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/log/index''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39721''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/menu/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/menu/index''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946175.61\n    ''REQUEST_TIME'' => 1445946175\n]'),
(7, 2, 'yii\\log\\Dispatcher::dispatch', 1445946176.6174, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),
(8, 4, 'application', 1445946175.6114, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/log/index''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39721''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/menu/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/menu/index''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946175.61\n    ''REQUEST_TIME'' => 1445946175\n]'),
(9, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946185.6412, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(10, 4, 'application', 1445946184.3822, '[127.0.0.1][1][-]', '$_GET = [\n    ''id'' => ''1''\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/menu/index''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39725''\n    ''REDIRECT_QUERY_STRING'' => ''id=1''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/configuration/update''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''id=1''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/configuration/update?id=1''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946184.381\n    ''REQUEST_TIME'' => 1445946184\n]'),
(11, 2, 'yii\\log\\Dispatcher::dispatch', 1445946185.8723, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),
(12, 4, 'application', 1445946184.3822, '[127.0.0.1][1][-]', '$_GET = [\n    ''id'' => ''1''\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/menu/index''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39725''\n    ''REDIRECT_QUERY_STRING'' => ''id=1''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/configuration/update''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''id=1''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/configuration/update?id=1''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946184.381\n    ''REQUEST_TIME'' => 1445946184\n]'),
(13, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946188.5021, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(14, 4, 'application', 1445946188.0829, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/configuration/update?id=1''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39727''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946188.081\n    ''REQUEST_TIME'' => 1445946188\n]'),
(15, 2, 'yii\\log\\Dispatcher::dispatch', 1445946188.72, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),
(16, 4, 'application', 1445946188.0829, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/configuration/update?id=1''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39727''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946188.081\n    ''REQUEST_TIME'' => 1445946188\n]'),
(17, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946193.4697, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(18, 4, 'application', 1445946192.0153, '[127.0.0.1][1][-]', '$_GET = [\n    ''id'' => ''1''\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39727''\n    ''REDIRECT_QUERY_STRING'' => ''id=1''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/user/update''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''id=1''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946192.014\n    ''REQUEST_TIME'' => 1445946192\n]'),
(19, 2, 'yii\\log\\Dispatcher::dispatch', 1445946193.723, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),
(20, 4, 'application', 1445946192.0153, '[127.0.0.1][1][-]', '$_GET = [\n    ''id'' => ''1''\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39727''\n    ''REDIRECT_QUERY_STRING'' => ''id=1''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/user/update''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''id=1''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946192.014\n    ''REQUEST_TIME'' => 1445946192\n]'),
(21, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946196.488, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(22, 4, 'application', 1445946196.4538, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/user/update?id=1''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39733''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946196.453\n    ''REQUEST_TIME'' => 1445946196\n]'),
(23, 2, 'yii\\log\\Dispatcher::dispatch', 1445946196.7347, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(24, 4, 'application', 1445946196.4538, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/user/update?id=1''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39733''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946196.453\n    ''REQUEST_TIME'' => 1445946196\n]'),
(25, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946231.7682, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(26, 4, 'application', 1445946231.7079, '[127.0.0.1][1][-]', '$_GET = [\n    ''id'' => ''1''\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39775''\n    ''REDIRECT_QUERY_STRING'' => ''id=1''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/configuration/update''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''id=1''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/configuration/update?id=1''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946231.706\n    ''REQUEST_TIME'' => 1445946231\n]'),
(27, 2, 'yii\\log\\Dispatcher::dispatch', 1445946231.9918, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),
(28, 4, 'application', 1445946231.7079, '[127.0.0.1][1][-]', '$_GET = [\n    ''id'' => ''1''\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39775''\n    ''REDIRECT_QUERY_STRING'' => ''id=1''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/configuration/update''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''id=1''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/configuration/update?id=1''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946231.706\n    ''REQUEST_TIME'' => 1445946231\n]'),
(29, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946235.0475, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(30, 4, 'application', 1445946234.7845, '[127.0.0.1][1][-]', '$_GET = [\n    ''SearchSourceMessage'' => [\n        ''category'' => ''back''\n    ]\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/configuration/update?id=1''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39775''\n    ''REDIRECT_QUERY_STRING'' => ''SearchSourceMessage[category]=back''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/source-message/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''SearchSourceMessage[category]=back''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/source-message/index?SearchSourceMessage[category]=back''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946234.783\n    ''REQUEST_TIME'' => 1445946234\n]'),
(31, 2, 'yii\\log\\Dispatcher::dispatch', 1445946235.2251, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),
(32, 4, 'application', 1445946234.7845, '[127.0.0.1][1][-]', '$_GET = [\n    ''SearchSourceMessage'' => [\n        ''category'' => ''back''\n    ]\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/configuration/update?id=1''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39775''\n    ''REDIRECT_QUERY_STRING'' => ''SearchSourceMessage[category]=back''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/source-message/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''SearchSourceMessage[category]=back''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/source-message/index?SearchSourceMessage[category]=back''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946234.783\n    ''REQUEST_TIME'' => 1445946234\n]'),
(33, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946238.1654, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(34, 4, 'application', 1445946237.8192, '[127.0.0.1][1][-]', '$_GET = [\n    ''id'' => ''1''\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/source-message/index?SearchSourceMessage[category]=back''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39775''\n    ''REDIRECT_QUERY_STRING'' => ''id=1''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/source-message/view''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''id=1''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/source-message/view?id=1''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946237.817\n    ''REQUEST_TIME'' => 1445946237\n]'),
(35, 2, 'yii\\log\\Dispatcher::dispatch', 1445946238.3946, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),
(36, 4, 'application', 1445946237.8192, '[127.0.0.1][1][-]', '$_GET = [\n    ''id'' => ''1''\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/source-message/index?SearchSourceMessage[category]=back''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39775''\n    ''REDIRECT_QUERY_STRING'' => ''id=1''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/source-message/view''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''id=1''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/source-message/view?id=1''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946237.817\n    ''REQUEST_TIME'' => 1445946237\n]'),
(37, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946240.1682, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(38, 4, 'application', 1445946240.1162, '[127.0.0.1][1][-]', '$_GET = [\n    ''id'' => ''1''\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/source-message/view?id=1''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39775''\n    ''REDIRECT_QUERY_STRING'' => ''id=1''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/source-message/update''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''id=1''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/source-message/update?id=1''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946240.114\n    ''REQUEST_TIME'' => 1445946240\n]'),
(39, 2, 'yii\\log\\Dispatcher::dispatch', 1445946240.3608, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),
(40, 4, 'application', 1445946240.1162, '[127.0.0.1][1][-]', '$_GET = [\n    ''id'' => ''1''\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/source-message/view?id=1''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39775''\n    ''REDIRECT_QUERY_STRING'' => ''id=1''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/source-message/update''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''id=1''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/source-message/update?id=1''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946240.114\n    ''REQUEST_TIME'' => 1445946240\n]'),
(41, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946244.484, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(42, 4, 'application', 1445946244.4333, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/source-message/update?id=1''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39775''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/user/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/user/index''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946244.432\n    ''REQUEST_TIME'' => 1445946244\n]'),
(43, 2, 'yii\\log\\Dispatcher::dispatch', 1445946244.6601, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),
(44, 4, 'application', 1445946244.4333, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/source-message/update?id=1''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39775''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/user/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/user/index''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946244.432\n    ''REQUEST_TIME'' => 1445946244\n]'),
(45, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946247.6108, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(46, 4, 'application', 1445946247.2544, '[127.0.0.1][1][-]', '$_GET = [\n    ''id'' => ''1''\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/user/index''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39775''\n    ''REDIRECT_QUERY_STRING'' => ''id=1''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/user/view''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''id=1''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/user/view?id=1''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946247.253\n    ''REQUEST_TIME'' => 1445946247\n]'),
(47, 2, 'yii\\log\\Dispatcher::dispatch', 1445946247.8176, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),
(48, 4, 'application', 1445946247.2544, '[127.0.0.1][1][-]', '$_GET = [\n    ''id'' => ''1''\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/user/index''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39775''\n    ''REDIRECT_QUERY_STRING'' => ''id=1''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/user/view''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''id=1''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/user/view?id=1''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946247.253\n    ''REQUEST_TIME'' => 1445946247\n]'),
(49, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946250.176, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(50, 4, 'application', 1445946250.1185, '[127.0.0.1][1][-]', '$_GET = [\n    ''id'' => ''1''\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/user/view?id=1''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39775''\n    ''REDIRECT_QUERY_STRING'' => ''id=1''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/user/update''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''id=1''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946250.117\n    ''REQUEST_TIME'' => 1445946250\n]'),
(51, 2, 'yii\\log\\Dispatcher::dispatch', 1445946250.3606, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),
(52, 4, 'application', 1445946250.1185, '[127.0.0.1][1][-]', '$_GET = [\n    ''id'' => ''1''\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/user/view?id=1''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39775''\n    ''REDIRECT_QUERY_STRING'' => ''id=1''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/user/update''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''id=1''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946250.117\n    ''REQUEST_TIME'' => 1445946250\n]'),
(53, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946253.5083, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(54, 4, 'application', 1445946252.684, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/user/update?id=1''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39779''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/admin/role/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/admin/role/index''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946252.683\n    ''REQUEST_TIME'' => 1445946252\n]'),
(55, 2, 'yii\\log\\Dispatcher::dispatch', 1445946253.6868, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),
(56, 4, 'application', 1445946252.684, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/user/update?id=1''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39779''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/admin/role/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/admin/role/index''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946252.683\n    ''REQUEST_TIME'' => 1445946252\n]'),
(57, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946257.5897, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(58, 4, 'application', 1445946256.3722, '[127.0.0.1][1][-]', '$_GET = [\n    ''id'' => ''Admin''\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/admin/role/index''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39779''\n    ''REDIRECT_QUERY_STRING'' => ''id=Admin''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/admin/role/view''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''id=Admin''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/admin/role/view?id=Admin''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946256.37\n    ''REQUEST_TIME'' => 1445946256\n]'),
(59, 2, 'yii\\log\\Dispatcher::dispatch', 1445946257.827, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),
(60, 4, 'application', 1445946256.3722, '[127.0.0.1][1][-]', '$_GET = [\n    ''id'' => ''Admin''\n]\n\n$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/admin/role/index''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39779''\n    ''REDIRECT_QUERY_STRING'' => ''id=Admin''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/admin/role/view''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''id=Admin''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/admin/role/view?id=Admin''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946256.37\n    ''REQUEST_TIME'' => 1445946256\n]'),
(61, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946261.7703, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(62, 4, 'application', 1445946261.443, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/admin/role/view?id=Admin''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39779''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/admin/permission/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/admin/permission/index''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946261.441\n    ''REQUEST_TIME'' => 1445946261\n]'),
(63, 2, 'yii\\log\\Dispatcher::dispatch', 1445946261.9539, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),
(64, 4, 'application', 1445946261.443, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/admin/role/view?id=Admin''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39779''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/admin/permission/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/admin/permission/index''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946261.441\n    ''REQUEST_TIME'' => 1445946261\n]'),
(65, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946263.9338, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(66, 4, 'application', 1445946263.884, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/admin/permission/index''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39779''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/admin/assignment/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/admin/assignment/index''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946263.883\n    ''REQUEST_TIME'' => 1445946263\n]'),
(67, 2, 'yii\\log\\Dispatcher::dispatch', 1445946264.1201, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(68, 4, 'application', 1445946263.884, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/admin/permission/index''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39779''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/admin/assignment/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/admin/assignment/index''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946263.883\n    ''REQUEST_TIME'' => 1445946263\n]'),
(69, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946266.1491, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(70, 4, 'application', 1445946265.9312, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/admin/assignment/index''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39779''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/admin/route/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/admin/route/index''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946265.93\n    ''REQUEST_TIME'' => 1445946265\n]'),
(71, 2, 'yii\\log\\Dispatcher::dispatch', 1445946266.3775, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),
(72, 4, 'application', 1445946265.9312, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/admin/assignment/index''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39779''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/admin/route/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/admin/route/index''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946265.93\n    ''REQUEST_TIME'' => 1445946265\n]'),
(73, 1, 'yii\\i18n\\PhpMessageSource::loadMessages', 1445946268.7257, '[127.0.0.1][1][-]', 'The message file for category ''app'' does not exist: /var/www/html/cms_beta/backend/messages/es/app.php'),
(74, 4, 'application', 1445946268.3667, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/admin/route/index''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39779''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/admin/rule/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/admin/rule/index''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946268.365\n    ''REQUEST_TIME'' => 1445946268\n]'),
(75, 2, 'yii\\log\\Dispatcher::dispatch', 1445946269.0388, '[127.0.0.1][1][-]', 'Unable to send log via yii\\log\\FileTarget: Exception (Invalid Configuration) ''yii\\base\\InvalidConfigException'' with message ''Unable to append to log file: /var/www/html/cms_beta/backend/runtime/logs/app.log'' \n\nin /var/www/html/cms_beta/vendor/yiisoft/yii2/log/FileTarget.php:108\n\nStack trace:\n#0 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Target.php(111): yii\\log\\FileTarget->export()\n#1 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Dispatcher.php(183): yii\\log\\Target->collect(Array, true)\n#2 /var/www/html/cms_beta/vendor/yiisoft/yii2/log/Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#3 [internal function]: yii\\log\\Logger->flush(true)\n#4 {main}'),
(76, 4, 'application', 1445946268.3667, '[127.0.0.1][1][-]', '$_COOKIE = [\n    ''__atuvc'' => ''2|42''\n    ''_csrf'' => ''7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a:2:{i:0;s:5:\\"_csrf\\";i:1;s:32:\\"0mB-m8plYCT1EDYeowYPCufvIUAYVVD1\\";}''\n    ''FRONTENDSESSIONID'' => ''i441m8eau8120mgf2rfcabm2h5''\n    ''_frontendCSRF'' => ''f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea:2:{i:0;s:13:\\"_frontendCSRF\\";i:1;s:32:\\"Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf\\";}''\n    ''_backendCSRF'' => ''78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a:2:{i:0;s:12:\\"_backendCSRF\\";i:1;s:32:\\"XF1HVkd_eYHTySss49xuq405VX-xIDYV\\";}''\n    ''BACKENDSESSIONID'' => ''rifa0kdeplc8545rmj5vtggs85''\n    ''PHPSESSID'' => ''ugb4boglmurola8hsovsk9faf2''\n    ''el-finder-view-elfd0'' => ''icons''\n    ''_language'' => ''21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca:2:{i:0;s:9:\\"_language\\";i:1;s:2:\\"es\\";}''\n]\n\n$_SESSION = [\n    ''__flash'' => []\n    ''_language'' => ''es''\n    ''__returnUrl'' => ''/cms_beta/backend/web/es/user/update?id=1''\n    ''__id'' => 1\n]\n\n$_SERVER = [\n    ''REDIRECT_STATUS'' => ''200''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/cms_beta/backend/web/es/admin/route/index''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8,en;q=0.6''\n    ''HTTP_COOKIE'' => ''__atuvc=2%7C42; _csrf=7d91fa8a4dc3021e197e47db1a1465c1e81fe9a17585dac5c904605c2837eea8a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220mB-m8plYCT1EDYeowYPCufvIUAYVVD1%22%3B%7D; FRONTENDSESSIONID=i441m8eau8120mgf2rfcabm2h5; _frontendCSRF=f040ee29fcb100e2e83e76e882daf02d8cb10510437ea793f0f4ecb9c549a4fea%3A2%3A%7Bi%3A0%3Bs%3A13%3A%22_frontendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22Rq2cqau4EdxJXLvTRkobOaRU5wvM_Ctf%22%3B%7D; _backendCSRF=78589152b46b6c5e95f94de89bee5248a15f41f0c3c58b922b3eb2f67fbace75a%3A2%3A%7Bi%3A0%3Bs%3A12%3A%22_backendCSRF%22%3Bi%3A1%3Bs%3A32%3A%22XF1HVkd_eYHTySss49xuq405VX-xIDYV%22%3B%7D; BACKENDSESSIONID=rifa0kdeplc8545rmj5vtggs85; PHPSESSID=ugb4boglmurola8hsovsk9faf2; el-finder-view-elfd0=icons; _language=21500e18355e77b41919af9189491bae2c916d13c5223ba46f65a7d22631084ca%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Ubuntu) Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Ubuntu)''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''/var/www/html''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''/var/www/html''\n    ''SERVER_ADMIN'' => ''webmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''/var/www/html/cms_beta/backend/web/index.php''\n    ''REMOTE_PORT'' => ''39779''\n    ''REDIRECT_URL'' => ''/cms_beta/backend/web/es/admin/rule/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/cms_beta/backend/web/es/admin/rule/index''\n    ''SCRIPT_NAME'' => ''/cms_beta/backend/web/index.php''\n    ''PHP_SELF'' => ''/cms_beta/backend/web/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1445946268.365\n    ''REQUEST_TIME'' => 1445946268\n]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(45) NOT NULL,
  `show` tinyint(4) NOT NULL DEFAULT '1',
  `order` tinyint(4) NOT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `name`, `url`, `icon`, `show`, `order`, `menu_id`) VALUES
(1, 'Desarrollador', '#', 'fa-cog', 1, 3, NULL),
(3, 'Menu', 'menu/index', 'fa-list', 1, 2, 1),
(5, 'Registro del sistema', 'log/index', 'fa-list-alt', 1, 4, 1),
(6, 'Global', 'configuration/update?id=1', 'fa-cog', 1, 0, 7),
(7, 'Configuración', '#', 'fa-cogs', 1, 2, NULL),
(8, 'Traducciones', 'source-message/index', 'fa-language', 1, 3, 7),
(9, 'Backend', 'source-message/index?SearchSourceMessage[category]=back', 'fa-language', 1, 1, 8),
(10, 'Frontend', 'source-message/index?SearchSourceMessage[category]=app', 'fa-language', 1, 2, 8),
(11, 'Usuarios', 'user/index', 'fa-user', 1, 1, 12),
(12, 'RBAC', '#', 'fa-users', 1, 3, 7),
(13, 'Roles', 'admin/role/index', 'fa-check', 1, 2, 12),
(14, 'Permisos', 'admin/permission/index', 'fa-check', 1, 3, 12),
(15, 'Asignaciones', 'admin/assignment/index', 'fa-check', 1, 4, 12),
(16, 'Rutas', 'admin/route/index', 'fa-check', 1, 5, 12),
(17, 'Reglas', 'admin/rule/index', 'fa-check', 1, 6, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(16) NOT NULL DEFAULT '',
  `translation` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `message`
--

INSERT INTO `message` (`id`, `language`, `translation`) VALUES
(1, 'es', 'Registros del sistema'),
(2, 'es', 'ID'),
(3, 'es', 'Nivel'),
(4, 'es', 'Categoria'),
(5, 'es', 'Hora de registro'),
(6, 'es', 'Prefijo'),
(7, 'es', 'Mensaje'),
(8, 'es', 'Cambiar Navegacion'),
(9, 'es', 'Registrado desde'),
(10, 'es', 'Cerrar sesion'),
(11, 'es', 'Conectado'),
(12, 'es', 'Panel de control'),
(13, 'es', 'Global'),
(14, 'es', 'Backend'),
(15, 'es', 'Frontend'),
(16, 'es', 'Traducciones'),
(17, 'es', 'Usuarios'),
(18, 'es', 'Roles'),
(19, 'es', 'Permisos'),
(20, 'es', 'Asignaciones'),
(21, 'es', 'Rutas'),
(22, 'es', 'Reglas'),
(23, 'es', 'RBAC'),
(24, 'es', 'Configuración'),
(25, 'es', 'Menu'),
(26, 'es', 'Registro del sistema'),
(27, 'es', 'Desarrollador'),
(28, 'es', 'Menus'),
(29, 'es', 'Crear'),
(30, 'es', 'Nombre'),
(31, 'es', 'Url'),
(32, 'es', 'Icono'),
(33, 'es', 'Mostrar'),
(34, 'es', 'Orden'),
(35, 'es', 'Menu Padre'),
(36, 'es', 'Actualizar'),
(37, 'es', 'Empresa'),
(38, 'es', 'Nombre Alias para el email'),
(39, 'es', 'Servidor SMTP'),
(40, 'es', 'Tipo de encriptacion'),
(41, 'es', 'Email'),
(42, 'es', 'Contraseña'),
(43, 'es', 'Puerto'),
(44, 'es', 'Plantilla de email'),
(45, 'es', 'Cancelar'),
(46, 'es', 'Esta seguro que desea cancelar?'),
(47, 'es', 'Hola {user}'),
(48, 'es', 'Bienvenido al Administrador de contenidos de  {site}'),
(49, 'es', 'Nombre de usuario'),
(50, 'es', 'Llave de autorizacion'),
(51, 'es', 'Contraseña encriptada'),
(52, 'es', 'Token de restablecimiento de contraseña'),
(53, 'es', 'Estado'),
(54, 'es', 'Foto de perfil'),
(55, 'es', 'Creado'),
(56, 'es', 'Actualizado'),
(57, 'es', 'Borrado'),
(58, 'es', 'Activo'),
(59, 'es', 'Suspendido'),
(60, 'es', 'Buscar'),
(61, 'es', 'Cambiar contraseña'),
(62, 'es', 'Clic aqui para cambiar la contraseña'),
(63, 'es', 'Source Messages'),
(64, 'es', 'Update'),
(65, 'es', 'Delete'),
(66, 'es', 'Esta seguro que desea borrar este elemento?'),
(67, 'es', 'Users'),
(68, 'es', 'Eliminar'),
(69, 'es', 'Esta seguro que desea eliminar este elemento?'),
(70, 'es', 'Help'),
(71, 'es', 'Application'),
(72, 'es', 'Roles'),
(73, 'es', 'Create Role'),
(74, 'es', 'Name'),
(75, 'es', 'Description'),
(76, 'es', 'Update'),
(77, 'es', 'Delete'),
(78, 'es', 'Are you sure to delete this item?'),
(79, 'es', 'Type'),
(80, 'es', 'Rule Name'),
(81, 'es', 'Data'),
(82, 'es', 'Assignments'),
(83, 'es', 'Avaliable'),
(84, 'es', 'Assigned'),
(85, 'es', 'Permission'),
(86, 'es', 'Messages'),
(87, 'es', 'Create Permission'),
(88, 'es', 'Routes'),
(89, 'es', 'Create route'),
(90, 'es', 'Rules'),
(91, 'es', 'Create Rule');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1441670339),
('m130524_201442_init', 1441670343),
('m140506_102106_rbac_init', 1442879191),
('m141106_185632_log_init', 1441678700),
('m150413_002612_i18n', 1441670344),
('m150416_024324_menu', 1441670344),
('m150907_235817_init', 1441670344),
('m150908_000520_insertFirsUser', 1441670750),
('m150908_212902_create_conf_table', 1441747996),
('m150909_143940_faIcons', 1441811574),
('m150909_151437_faIconsInsert', 1441812204),
('m150909_152437_fix', 1441812322),
('m150910_181740_insertMenu', 1444159785),
('m151006_192627_session', 1444159786);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `id` char(40) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `session`
--

INSERT INTO `session` (`id`, `expire`, `data`) VALUES
('498dcgal01h3vo4qo8kcmlg3n2', 1445883994, 0x5f5f666c6173687c613a303a7b7d5f6c616e67756167657c733a323a226573223b5f5f72657475726e55726c7c733a32343a222f636d735f626574612f6261636b656e642f7765622f6573223b5f5f69647c693a313b),
('5bci4bn7r3t96bls32j39lprj5', 1444420015, 0x5f5f666c6173687c613a303a7b7d5f6c616e67756167657c733a323a226573223b5f5f72657475726e55726c7c733a32343a222f636d735f626574612f6261636b656e642f7765622f6573223b5f5f69647c693a313b),
('88ee1q66f097rpbmnackh3u243', 1444327802, 0x5f5f666c6173687c613a303a7b7d5f6c616e67756167657c733a323a226573223b5f5f72657475726e55726c7c733a35343a222f636d735f626574612f6261636b656e642f7765622f65732f636f6e66696775726174696f6e2f73656e642d746573742d656d61696c223b),
('8ko96t2undk458amujrfufvp22', 1444410623, 0x5f5f666c6173687c613a303a7b7d5f6c616e67756167657c733a323a226573223b5f5f72657475726e55726c7c733a33333a222f636d735f626574612f6261636b656e642f7765622f65732f6769692f63727564223b5f5f69647c693a313b),
('8uv09u3j0450mpggeo288bbgl2', 1444176364, 0x5f5f666c6173687c613a303a7b7d5f6c616e67756167657c733a353a2265732d434f223b5f5f72657475726e55726c7c733a35373a222f636d735f626574612f6261636b656e642f7765622f65732d636f2f636f6e66696775726174696f6e2f73656e642d746573742d656d61696c223b5f5f69647c693a313b),
('an8pallp60f3r5osb84nkld4j4', 1445932066, 0x5f5f666c6173687c613a303a7b7d5f6c616e67756167657c733a323a226573223b5f5f72657475726e55726c7c733a35303a222f636d735f626574612f6261636b656e642f7765622f65732f636f6e66696775726174696f6e2f7570646174653f69643d31223b5f5f69647c693a313b),
('djsdp69c2me00fa8o2nf1ugvq2', 1444330085, 0x5f5f666c6173687c613a303a7b7d5f6c616e67756167657c733a323a226573223b5f5f72657475726e55726c7c733a35303a222f636d735f626574612f6261636b656e642f7765622f65732f636f6e66696775726174696f6e2f7570646174653f69643d31223b),
('ensnpfi87mhtou5m6m2uof3du5', 1444255482, 0x5f5f666c6173687c613a303a7b7d),
('fn147vhrpm5beg925se7pl6550', 1445916574, 0x5f5f666c6173687c613a303a7b7d5f6c616e67756167657c733a323a226573223b5f5f72657475726e55726c7c733a35303a222f636d735f626574612f6261636b656e642f7765622f65732f636f6e66696775726174696f6e2f7570646174653f69643d31223b5f5f69647c693a313b),
('jgo991vbf55l7uafaccl8k6se2', 1444329960, 0x5f5f666c6173687c613a303a7b7d5f6c616e67756167657c733a323a226573223b5f5f72657475726e55726c7c733a32343a222f636d735f626574612f6261636b656e642f7765622f6573223b5f5f69647c693a313b),
('k6kv59rnjstlojp34kml9fpjr5', 1445510535, 0x5f5f666c6173687c613a303a7b7d5f6c616e67756167657c733a323a226573223b5f5f72657475726e55726c7c733a32343a222f636d735f626574612f6261636b656e642f7765622f6573223b5f5f69647c693a313b),
('nk2l2d2f22rsh4q9hn3opfu9g4', 1444181734, 0x5f5f666c6173687c613a303a7b7d5f6c616e67756167657c733a353a2265732d434f223b5f5f72657475726e55726c7c733a35373a222f636d735f626574612f6261636b656e642f7765622f65732d636f2f636f6e66696775726174696f6e2f73656e642d746573742d656d61696c223b5f5f69647c693a313b),
('rfeb55jtk4t5nq8k1h5f3jgug3', 1445932300, 0x5f5f666c6173687c613a303a7b7d5f6c616e67756167657c733a323a226573223b5f5f72657475726e55726c7c733a34313a222f636d735f626574612f6261636b656e642f7765622f65732f757365722f7570646174653f69643d31223b5f5f69647c693a313b),
('tglbki5amduv4d51nvrtbe4h07', 1445280795, 0x5f5f666c6173687c613a303a7b7d5f6c616e67756167657c733a323a226573223b5f5f72657475726e55726c7c733a32343a222f636d735f626574612f6261636b656e642f7765622f6573223b),
('ugb4boglmurola8hsovsk9faf2', 1445947708, 0x5f5f666c6173687c613a303a7b7d5f6c616e67756167657c733a323a226573223b5f5f72657475726e55726c7c733a34313a222f636d735f626574612f6261636b656e642f7765622f65732f757365722f7570646174653f69643d31223b5f5f69647c693a313b),
('uh97bin9eh82rk0eld3sicb6g0', 1444259192, 0x5f5f666c6173687c613a303a7b7d5f6c616e67756167657c733a353a2265732d434f223b5f5f72657475726e55726c7c733a35353a222f636d735f626574612f6261636b656e642f7765622f65732d636f2f736974652f726571756573742d70617373776f72642d7265736574223b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `source_message`
--

CREATE TABLE IF NOT EXISTS `source_message` (
`id` int(11) NOT NULL,
  `category` varchar(32) DEFAULT NULL,
  `message` text
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `source_message`
--

INSERT INTO `source_message` (`id`, `category`, `message`) VALUES
(1, 'back', 'Registros del sistema'),
(2, 'back', 'ID'),
(3, 'back', 'Nivel'),
(4, 'back', 'Categoria'),
(5, 'back', 'Hora de registro'),
(6, 'back', 'Prefijo'),
(7, 'back', 'Mensaje'),
(8, 'back', 'Cambiar Navegacion'),
(9, 'back', 'Registrado desde'),
(10, 'back', 'Cerrar sesion'),
(11, 'back', 'Conectado'),
(12, 'back', 'Panel de control'),
(13, 'back', 'Global'),
(14, 'back', 'Backend'),
(15, 'back', 'Frontend'),
(16, 'back', 'Traducciones'),
(17, 'back', 'Usuarios'),
(18, 'back', 'Roles'),
(19, 'back', 'Permisos'),
(20, 'back', 'Asignaciones'),
(21, 'back', 'Rutas'),
(22, 'back', 'Reglas'),
(23, 'back', 'RBAC'),
(24, 'back', 'Configuración'),
(25, 'back', 'Menu'),
(26, 'back', 'Registro del sistema'),
(27, 'back', 'Desarrollador'),
(28, 'back', 'Menus'),
(29, 'back', 'Crear'),
(30, 'back', 'Nombre'),
(31, 'back', 'Url'),
(32, 'back', 'Icono'),
(33, 'back', 'Mostrar'),
(34, 'back', 'Orden'),
(35, 'back', 'Menu Padre'),
(36, 'back', 'Actualizar'),
(37, 'back', 'Empresa'),
(38, 'back', 'Nombre Alias para el email'),
(39, 'back', 'Servidor SMTP'),
(40, 'back', 'Tipo de encriptacion'),
(41, 'back', 'Email'),
(42, 'back', 'Contraseña'),
(43, 'back', 'Puerto'),
(44, 'back', 'Plantilla de email'),
(45, 'back', 'Cancelar'),
(46, 'back', 'Esta seguro que desea cancelar?'),
(47, 'back', 'Hola {user}'),
(48, 'back', 'Bienvenido al Administrador de contenidos de  {site}'),
(49, 'back', 'Nombre de usuario'),
(50, 'back', 'Llave de autorizacion'),
(51, 'back', 'Contraseña encriptada'),
(52, 'back', 'Token de restablecimiento de contraseña'),
(53, 'back', 'Estado'),
(54, 'back', 'Foto de perfil'),
(55, 'back', 'Creado'),
(56, 'back', 'Actualizado'),
(57, 'back', 'Borrado'),
(58, 'back', 'Activo'),
(59, 'back', 'Suspendido'),
(60, 'back', 'Buscar'),
(61, 'back', 'Cambiar contraseña'),
(62, 'back', 'Clic aqui para cambiar la contraseña'),
(63, 'back', 'Source Messages'),
(64, 'back', 'Update'),
(65, 'back', 'Delete'),
(66, 'back', 'Esta seguro que desea borrar este elemento?'),
(67, 'back', 'Users'),
(68, 'back', 'Eliminar'),
(69, 'back', 'Esta seguro que desea eliminar este elemento?'),
(70, 'rbac-admin', 'Help'),
(71, 'rbac-admin', 'Application'),
(72, 'rbac-admin', 'Roles'),
(73, 'rbac-admin', 'Create Role'),
(74, 'rbac-admin', 'Name'),
(75, 'rbac-admin', 'Description'),
(76, 'rbac-admin', 'Update'),
(77, 'rbac-admin', 'Delete'),
(78, 'rbac-admin', 'Are you sure to delete this item?'),
(79, 'rbac-admin', 'Type'),
(80, 'rbac-admin', 'Rule Name'),
(81, 'rbac-admin', 'Data'),
(82, 'rbac-admin', 'Assignments'),
(83, 'rbac-admin', 'Avaliable'),
(84, 'rbac-admin', 'Assigned'),
(85, 'rbac-admin', 'Permission'),
(86, 'back', 'Messages'),
(87, 'rbac-admin', 'Create Permission'),
(88, 'rbac-admin', 'Routes'),
(89, 'rbac-admin', 'Create route'),
(90, 'rbac-admin', 'Rules'),
(91, 'rbac-admin', 'Create Rule');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `picture` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `picture`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', '', '$2y$13$adRmNJkuo/VoutbEVggyhe6HS8DdmjuEDoTgjzSdN6AhOqQ8kexva', '3CkrZxGJMIlFyumobWsaxazUzYOcPS0b_1445930440', 'devsolarte@gmail.com', 10, '/cms_beta/backend/web/uploads/profileImg_1442897409.jpg', 1441670750, 1445936586),
(2, 'Admin', '', '$2y$13$bJHn0IChXNEuqgVZ6694.OQsfdOai.r7wmKADiBMvev8E2gT4hrCm', NULL, 'admin@mysite.com', 10, '/cms_beta/backend/web/uploads/profileImg_1442897409.jpg', 1441670750, 1445930730),
(3, 'User', '', '$2y$13$bJHn0IChXNEuqgVZ6694.OQsfdOai.r7wmKADiBMvev8E2gT4hrCm', NULL, 'user@mysite.com', 10, '/cms_beta/backend/web/uploads/profileImg_1442897409.jpg', 1441670750, 1445930784);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_assignment`
--
ALTER TABLE `auth_assignment`
 ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indices de la tabla `auth_item`
--
ALTER TABLE `auth_item`
 ADD PRIMARY KEY (`name`), ADD KEY `rule_name` (`rule_name`), ADD KEY `idx-auth_item-type` (`type`);

--
-- Indices de la tabla `auth_item_child`
--
ALTER TABLE `auth_item_child`
 ADD PRIMARY KEY (`parent`,`child`), ADD KEY `child` (`child`);

--
-- Indices de la tabla `auth_rule`
--
ALTER TABLE `auth_rule`
 ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `configuration`
--
ALTER TABLE `configuration`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `faIcon`
--
ALTER TABLE `faIcon`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `log`
--
ALTER TABLE `log`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_log_level` (`level`), ADD KEY `idx_log_category` (`category`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_menu_menu1_idx` (`menu_id`);

--
-- Indices de la tabla `message`
--
ALTER TABLE `message`
 ADD PRIMARY KEY (`id`,`language`);

--
-- Indices de la tabla `migration`
--
ALTER TABLE `migration`
 ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `session`
--
ALTER TABLE `session`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `source_message`
--
ALTER TABLE `source_message`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `configuration`
--
ALTER TABLE `configuration`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `faIcon`
--
ALTER TABLE `faIcon`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=675;
--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `source_message`
--
ALTER TABLE `source_message`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_assignment`
--
ALTER TABLE `auth_assignment`
ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `auth_item`
--
ALTER TABLE `auth_item`
ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `auth_item_child`
--
ALTER TABLE `auth_item_child`
ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
ADD CONSTRAINT `fk_menu_menu1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `message`
--
ALTER TABLE `message`
ADD CONSTRAINT `fk_message_source_message` FOREIGN KEY (`id`) REFERENCES `source_message` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
