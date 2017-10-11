-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 172.16.88.140    Database: alpha
-- ------------------------------------------------------
-- Server version	5.5.52-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `formula`
--

DROP TABLE IF EXISTS `formula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `formula` longtext,
  `title` varchar(64) DEFAULT NULL,
  `description` longtext,
  `user_id` int(11) DEFAULT NULL,
  `comment` longtext,
  `enable` tinyint(1) NOT NULL DEFAULT '0',
  `trigger_price_code` varchar(500) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formula`
--

LOCK TABLES `formula` WRITE;
/*!40000 ALTER TABLE `formula` DISABLE KEYS */;
INSERT INTO `formula` VALUES (1,'2017-08-08 16:36:54','2017-08-11 15:25:32','data = REF(e, WARRANT, 1)\nalert, e.result = ISCONTUP(data, 0.02)\n\ne_variety = e.ch_variety\nmessage = \"上期所%s仓单对比昨天上涨2%%\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, WARRANT)\n\nlogger.info(\"上期所%s仓单二天数据为:%s,对比上涨比率为:%s, 预警为上涨2%%\",\n            e_variety, data, e.result)\n','上期所仓单对比昨天上涨2%','上期所仓单对比昨天上涨2%',NULL,NULL,1,NULL,''),(2,'2017-08-08 16:36:54','2017-08-11 15:25:32','data = REF(e, WARRANT, 1)\nalert, e.result = ISCONTDOWN(data, 0.02)\n\ne_variety = e.ch_variety\nmessage = \"上期所%s仓单对比昨天下跌2%%\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, WARRANT)\n\nlogger.info(\"上期所%s仓单二天数据为:%s,对比上涨比率为:%s, 预警为下跌2%%\",\n            e_variety, data, e.result)\n\n','上期所仓单对比昨天下跌2%','上期所仓单对比昨天下跌2%',NULL,NULL,1,NULL,''),(3,'2017-08-08 16:36:54','2017-08-15 09:52:05','data = REF(e, STOCK_LME, 3)\nalert, e.result = ISCONTDOWN(data, 0)\n\ne_variety = e.ch_variety\nmessage = \"%sLME库存已连续下降3天\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, STOCK_LME)\n\nlogger.info(\"%sLME库存最近四天库存数据为:%s, 三天下降比率为%s,  预警指数为3天连续下跌\",\n            e_variety, data, e.result)','LME库存已连续下降3天','LME库存连续下降3天',NULL,NULL,1,NULL,''),(4,'2017-08-08 16:36:54','2017-08-11 15:25:32','data = REF(e, STOCK_LME, 3)\nalert, e.result = ISCONTUP(data, 0)\n\ne_variety = e.ch_variety\nmessage = \"%sLME库存连续上升3天\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, STOCK_LME)\n\nlogger.info(\"%sLME库存最近四天库存数据为:%s, 三天上升比率为%s, 预警指数为3天连续上升\",\n            e_variety, data, e.result)\n','LME库存连续上升3天','LME库存连续上升3天',NULL,NULL,1,NULL,''),(5,'2017-08-08 16:36:54','2017-08-11 15:25:32','data = REF(e, WARRANT, 3)\nalert, e.result = ISCONTDOWN(data, 0)\n\ne_variety = e.ch_variety\nmessage = \"上期所%s仓单已连续下降3天\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, WARRANT)\n\nlogger.info(\"上期所%s仓单四天数据为:%s,三天连续下降比率为:%s, 预警为3天连续下降\",\n            e_variety, data, e.result)\n','上期所仓单已连续下降3天','上期所仓单已连续下降3天',NULL,NULL,1,NULL,''),(6,'2017-08-08 16:36:54','2017-08-11 15:25:32','data = REF(e, WARRANT, 3)\nalert, e.result = ISCONTUP(data, 0)\n\ne_variety = e.ch_variety\nmessage = \"上期所%s仓单已连续上涨3天\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, WARRANT)\n\nlogger.info(\"上期所%s仓单四天数据为:%s,三天连续下降比率为:%s, 预警为3天连续上涨\",\n            e_variety, data, e.result)\n','上期所仓单已连续上涨3天','上期所仓单已连续上涨3天',NULL,NULL,1,NULL,''),(7,'2017-08-08 16:36:54','2017-08-08 16:36:54','data = REF(e, SPOT, 1)\nalert, e.result = ISCONTDOWNABS(data, 100)\n\ne_variety = e.ch_variety\nmessage = \"%s上海金属网现货平均价格下跌大于等于100元\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, SPOT)\n\nlogger.info(\"%s上海金属网现货平均价格日间数据为:%s, 下降幅度%s , 预警幅度为%s\",\n                e_variety, data, e.result, 100)','SMM现货平均价格下跌大于等于100元','SMM现货平均价格下跌大于等于100元',NULL,NULL,1,NULL,''),(8,'2017-08-08 16:36:54','2017-08-08 16:36:54','data = REF(e, SPOT, 1)\nalert, e.result = ISCONTUPABS(data, 100)\n\ne_variety = e.ch_variety\nmessage = \"%s上海金属网现货平均价格上涨大于等于100元\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, SPOT)\n\nlogger.info(\"%s上海金属网现货平均价格日间数据为:%s, 上涨幅度%s , 预警幅度为%s\",\n            e_variety, data, e.result, 100)','SMM现货平均价格上升大于等于100元','SMM现货平均价格上升大于等于100元',NULL,NULL,1,NULL,''),(9,'2017-08-08 16:36:54','2017-08-11 16:36:16','data = REF(e, PD, 3)\nalert, e.result = ISCONTUP(data, 0)\n\ne_variety = e.ch_variety\nmessage = \"%s上海金属网升贴水连续上涨3天\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, PD)\n\nlogger.info(\"%s上海金属网升贴水最近四天数据为:%s, 三天上涨比率为%s, 预警指数为3天连续上涨\",\n            e_variety, data, e.result)','SMM升贴水连续上涨3天','SMM升贴水连续上涨3天',NULL,NULL,1,NULL,''),(10,'2017-08-08 16:36:54','2017-08-08 16:36:54','data = REF(e, PD, 3)\nalert, e.result = ISCONTDOWN(data, 0)\n\ne_variety = e.ch_variety\nmessage = \"%s上海金属网升贴水连续下跌3天\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, PD)\n\nlogger.info(\"%s上海金属网升贴水最近四天数据为:%s, 三天下跌比率为%s, 预警指数为3天连续下跌\",\n            e_variety, data, e.result)','SMM升贴水连续下跌3天','SMM升贴水连续下跌3天',NULL,NULL,1,NULL,''),(11,'2017-08-08 16:36:54','2017-08-11 15:09:27','data = REF(e, WEEK_SPOT_DIFF, 1)\nalert, e.result = ISCONTUPABS(data, 500)\n\ne_variety = e.ch_variety\nmessage = \"%s上海金属网现货平均价格周比上升大于等于500元\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, WEEK_SPOT_DIFF)\n\nlogger.info(\"%s上海金属网现货平均价格周比数据为:%s, 周比上升幅度%s元 , 预警幅度为%s元\",\n            e_variety, data, e.result, 500)\n','SMM现货平均价格周比上升大于等于500元','SMM现货平均价格周比上升大于等于500元',NULL,NULL,1,NULL,''),(12,'2017-08-08 16:36:54','2017-08-11 15:09:27','data = REF(e, WEEK_SPOT_DIFF, 1)\nalert, e.result = ISCONTDOWNABS(data, 500)\n\ne_variety = e.ch_variety\nmessage = \"%s上海金属网现货平均价格周比下跌大于等于500元\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, WEEK_SPOT_DIFF)\n\nlogger.info(\"%s上海金属网现货平均价格周比数据为:%s, 周比下跌幅度%s元 , 预警幅度为%s元\",\n            e_variety, data, e.result, 500)','SMM现货平均价格周比下跌大于等于500元','SMM现货平均价格周比下跌大于等于500元',NULL,NULL,1,NULL,''),(13,'2017-08-08 16:36:54','2017-08-08 16:36:54','main_con = REF(e, MAIN_CONTRACT)\nthreshold = REF(e, DOJI_STAR_THRESHOLD)\ne.result = REF(e, DOJI_STAR_RATE)\n\nmessage = \"%s开盘价收盘价差值比率为%s, 十字星预警比率为%s\" % (main_con[0], e.result[0], threshold[0])\n\n\nif ABS(e.result[0]) <= threshold[0]:\n    ALERT(e, message)\n    CHART(e, DOJI_STAR_RATE)\n\nlogger.info(message)\n','期货主力合约出现十字星','期货主力合约出现十字星',NULL,NULL,1,NULL,''),(14,'2017-08-08 16:36:54','2017-08-08 16:36:54','main_con = REF(e, MAIN_CONTRACT)\ne.result = REF(e, SHFE_LME_DIFF)\ne_variety = e.ch_variety\n\nmessage = \"沪%s主力合约%s结算价比LME价格（剔除影响）超-300元\" % (e_variety, main_con[0])\n\nif e.result and e.result[0] >= -300:\n    ALERT(e, message)\n    CHART(e, SHFE_LME_DIFF)\n\nlogger.info(\"%s主力合约为%s, 差值为%s, 预警值:%s\",\n            e_variety, main_con[0], e.result, -300)\n','沪主力合约结算价比LME价格（剔除影响）超-300元','沪主力合约结算价比LME价格（剔除影响）超-300元',NULL,NULL,1,NULL,''),(15,'2017-08-08 16:36:54','2017-08-14 14:36:08','con1 = REF(e, CON_CONTRACT_1)\n\npre_con1 = CONTRACTN(e, con1[0], -1)\npre_con1_expire_dt = EXPIREDATE(e, pre_con1)[0]\n\n# 获取当前交割月环比比率数据\nrate_list = REF(e, OPI_MONTH_RATE, 30,\n                 start_date=next_day(pre_con1_expire_dt))\n\ngt_days = COUNTGT(rate_list)\ne_variety = e.ch_variety\n\nif gt_days < 3:\n    logger.info(\"当前环比数据%s不足3天,放弃预警\", rate_list)\n    exit()\n\nmessage = \"沪%s交割月%s合约持仓：总持仓环比连续上涨%s天\" % (e_variety, con1[0], gt_days)\n\nALERT(e, message)\nCHART(e, OPI_MONTH_RATE)\n\nlogger.info(\"环比上升天数:%s, 上升率:%s, 上升数量:%s\", gt_days, rate_list[-gt_days:],\n            gt_days)\n','交割月合约持仓：总持仓环比连续上涨多天','交割月合约持仓：总持仓环比连续上涨多天',NULL,NULL,1,NULL,''),(16,'2017-08-08 16:36:54','2017-08-08 16:36:54','con1 = REF(e, CON_CONTRACT_1)\nwarrant_list = REF(e, WARRANT, 30, start_date=begin_month())\nmonth_rate = REF(e, WARRANT_MONTH_RATE, 30, start_date=begin_month())\n\ngt_days = COUNTGT(month_rate)\ne_variety = e.ch_variety\n\nif gt_days < 3:\n    logger.info(\"当月%s数据为:%s,环比为:%s, 连续上涨天数%s不足3天,放弃计算\",\n                e_variety, warrant_list, month_rate, gt_days)\n    exit()\n\n\nmessage = \"沪%s交割月%s合约持仓：仓单仓环比连续上涨%s天\" % (e_variety, con1[0], gt_days)\n\nALERT(e, message)\nCHART(e, WARRANT_MONTH_RATE)\n\nlogger.info(\"环比上升天数:%s, 上升率:%s, 上升数量:%s\", gt_days, month_rate[-gt_days:],\n            gt_days)','交割月合约持仓：仓单环比连续上涨多天','交割月合约持仓：仓单环比连续上涨多天',NULL,NULL,1,NULL,''),(17,'2017-08-08 16:36:54','2017-08-08 16:36:54','alert_rate = 0.005\ne_variety = e.ch_variety\n\ne.result = REF(e, CON1_CON2_DIFF_RATE)\nmessage = \"沪%s连1-连2变化比率为%s, 预警指数%s\" % (e_variety, round(e.result[0], 4), alert_rate)\n\nif abs(e.result[0]) >= alert_rate:\n    ALERT(e, message)\n    CHART(e, CON1_CON2_DIFF_RATE)\nlogger.info(message)\n','沪连1连2基差比高于预警','沪连1连2基差比高于预警',NULL,NULL,1,NULL,''),(18,'2017-08-08 16:36:54','2017-08-08 16:36:54','alert_rate = 0.005\ne_variety = e.ch_variety\n\ne.result  = REF(e, CON2_CON3_DIFF_RATE)\nmessage = \"沪%s连2-连3变化比率为%s, 预警指数%s\" % (e_variety, round(e.result[0], 4),alert_rate)\n\nif e.result  and abs(e.result[0]) >= alert_rate:\n    ALERT(e, message)\n    CHART(e, CON2_CON3_DIFF_RATE)\n\nlogger.info(message)\n','沪连2连3基差比高于预警','沪连2连3基差比高于预警',NULL,NULL,1,NULL,''),(19,'2017-08-08 16:36:54','2017-08-08 16:36:54','alert_rate = 0.005\ne_variety = e.ch_variety\n\ne.result = REF(e, CON1_CON3_DIFF_RATE)\nmessage = \"沪%s连1-连3变化比率为%s, 预警指数%s\" % (e_variety, round(e.result[0], 4),alert_rate)\n\nif e.result and abs(e.result[0]) >= alert_rate:\n    ALERT(e, message)\n    CHART(e, CON1_CON3_DIFF_RATE)\n\nlogger.info(message)\n','沪连1连3基差比高于预警','沪连1连3基差比高于预警',NULL,NULL,1,NULL,''),(20,'2017-08-08 16:36:54','2017-08-08 16:36:54','data = REF(e, SPOT, 1)\nalert, e.result = ISCONTUPABS(data, 100)\n\ne_variety = e.ch_variety\nmessage = \"%s上海金属网现货平均价格上涨大于等于100元\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, SPOT)\n\nlogger.info(\"%s上海金属网现货平均价格日间数据为:%s, 上涨幅度%s , 预警幅度为%s\",\n            e_variety, data, e.result, 100)','上海金属网现货平均价格上涨大于等于100元','上海金属网现货平均价格上涨大于等于100元',NULL,NULL,1,NULL,''),(21,'2017-08-08 16:36:54','2017-08-08 16:36:54','data = REF(e, SPOT, 1)\nalert, e.result = ISCONTDOWNABS(data, 100)\n\ne_variety = e.ch_variety\nmessage = \"%s上海金属网现货平均价格下跌大于等于100元\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, SPOT)\n\nlogger.info(\"%s上海金属网现货平均价格日间数据为:%s, 下降幅度%s , 预警幅度为%s\",\n                e_variety, data, e.result, 100)','上海金属网现货平均价格下跌大于等于100元','上海金属网现货平均价格下跌大于等于100元',NULL,NULL,1,NULL,''),(22,'2017-08-08 16:36:54','2017-08-08 16:36:54','data = REF(e, PD, 3)\nalert, e.result = ISCONTUP(data, 0)\n\ne_variety = e.ch_variety\nmessage = \"%s上海金属网升贴水连续上涨3天\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, PD)\n\nlogger.info(\"%s上海金属网升贴水最近四天数据为:%s, 三天上涨比率为%s, 预警指数为3天连续上涨\",\n            e_variety, data, e.result)','上海金属网升贴水连续上涨3天','上海金属网升贴水连续上涨3天',NULL,NULL,1,NULL,''),(23,'2017-08-08 16:36:54','2017-08-08 16:36:54','data = REF(e, SPOT, 1)\nalert, e.result = ISCONTDOWNABS(data, 100)\n\ne_variety = e.ch_variety\nmessage = \"%s上海金属网现货平均价格下跌大于等于100元\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, SPOT)\n\nlogger.info(\"%s上海金属网现货平均价格日间数据为:%s, 下降幅度%s , 预警幅度为%s\",\n                e_variety, data, e.result, 100)','上海金属网升贴水连续下跌3天','上海金属网升贴水连续下跌3天',NULL,NULL,1,NULL,''),(24,'2017-08-08 16:36:54','2017-08-08 16:36:54','data = REF(e, WEEK_SPOT_DIFF, 1)\nalert, e.result = ISCONTUPABS(data, 500)\n\ne_variety = e.ch_variety\nmessage = \"%s上海金属网现货平均价格周比上升大于等于500元\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, WEEK_SPOT_DIFF)\n\nlogger.info(\"%s上海金属网现货平均价格周比数据为:%s, 周比上升幅度%s元 , 预警幅度为%s元\",\n            e_variety, data, e.result, 500)\n','上海金属网现货平均价格周比上升大于等于500元','上海金属网现货平均价格周比上升大于等于500元',NULL,NULL,1,NULL,''),(25,'2017-08-08 16:36:54','2017-08-08 16:36:54','data = REF(e, WEEK_SPOT_DIFF, 1)\nalert, e.result = ISCONTDOWNABS(data, 500)\n\ne_variety = e.ch_variety\nmessage = \"%s上海金属网现货平均价格周比下跌大于等于500元\" % e_variety\n\nALERT(e, message, alert)\nCHART(e, WEEK_SPOT_DIFF)\n\nlogger.info(\"%s上海金属网现货平均价格周比数据为:%s, 周比下跌幅度%s元 , 预警幅度为%s元\",\n            e_variety, data, e.result, 500)','上海金属网现货平均价格周比下跌大于等于500元','上海金属网现货平均价格周比下跌大于等于500元',NULL,NULL,1,NULL,''),(26,'2017-08-08 16:36:54','2017-08-21 11:40:53','main_opi = REF(e, OPI)[0]\nmain_vol = REF(e, VOL)[0]\nmain_con_name = REF(e, MAIN_CONTRACT)[0]\n\ne_variety = e.ch_variety\nfor CON_CONTRACT in [CON_CONTRACT_1, CON_CONTRACT_2, CON_CONTRACT_3, CON_CONTRACT_4,\n          CON_CONTRACT_5, CON_CONTRACT_6, CON_CONTRACT_7, CON_CONTRACT_8,\n          CON_CONTRACT_9, CON_CONTRACT_10, CON_CONTRACT_11, CON_CONTRACT_12]:\n    con_name = REF(e, CON_CONTRACT)[0]\n    con_opi = REF(e, OPI, contract=CON_CONTRACT)[0]\n    con_vol = REF(e, VOL, contract=CON_CONTRACT)[0]\n    if con_opi < main_opi and con_vol > main_vol:\n        message = \"品目%s发生由主力合约%s移仓到远期合约%s的现象\" % (e_variety, main_con_name, con_name)\n        ALERT(e, message)\n        CHART(e, VOL, CON_CONTRACT)\n        e.result=[con_vol-main_vol]\n        logger.info(message)\n        break\nlogger.info(\"品目%s主力合约无移仓情况发生\", e_variety)','发生由移仓','发生由移仓',NULL,NULL,1,NULL,NULL),(27,'2017-08-08 16:36:54','2017-08-21 11:40:53','e_variety = e.ch_variety\nmessage = \"%s合约持仓量和交易量增大, 价格持续下降100元\" % e_variety\n\nopi_data = REF(e, OPI, 3)\nvol_data = REF(e, VOL, 3)\nsettle_data = REF(e, SETTLE, 3)\n\nopi_is_up, opi_up_data = ISCONTUP(opi_data, 0)\nvol_is_up, vol_up_data = ISCONTUP(vol_data, 0)\nsettle_is_down, settle_down_data = ISCONTDOWNABS(settle_data, 100)\n\nif opi_is_up and vol_is_up and settle_is_down:\n    ALERT(e, message)\n    CHART(e, SETTLE)\n\nlogger.info(\"%s合约持仓量增量为:%s,预警值为连续增加, 交易量增量为%s , 预警值为连续增加\"\n            \"结算价下降为%s, 预警幅度为连续下降小于等于100元\",\n            e_variety, opi_up_data, vol_up_data, settle_down_data)','合约持仓量和交易量增大, 价格持续下降100元','合约持仓量和交易量增大, 价格持续下降100元',NULL,NULL,0,NULL,NULL),(28,'2017-08-08 16:36:54','2017-08-21 11:40:53','e_variety = e.ch_variety\nmessage = \"%s现货价格价格未动(一天内100元,一周500元), 期货价格持续下跌3天\" % e_variety\n\nspot_week_data = REF(e, WEEK_SPOT_DIFF)[0]\nweek_change = ABS(spot_week_data) <= 500\n\nspot_day_data = REF(e, SPOT, 3)\nday_change, day_change_result = ISCONTCHANGEABS(spot_day_data,100, iseg=False)\n\nsettle_data = REF(e, SETTLE, 3)\n\nsettle_change, change_data = ISCONTDOWNABS(settle_data,0)\n\nif week_change and day_change and settle_change:\n    ALERT(e, message)\n    CHART(e, SETTLE)\n\nlogger.info(\"%s期货价格3天下跌幅度为:%s,预警值为连续下跌, 现货价格一天内改变量为%s元 , \"\n            \"预警幅度为小于等于100元, 现货价格一周内改变是为%s元, 预警值为小于等于500元\",\n            e_variety, change_data, day_change_result, week_change)','现货价格价格未动(一天内100元,一周500元), 期货价格持续下跌3天','现货价格价格未动(一天内100元,一周500元), 期货价格持续下跌3天',NULL,NULL,0,NULL,NULL),(29,'2017-08-08 16:36:54','2017-08-21 11:40:53','e_variety = e.ch_variety\nmessage = \"%s现货价格上涨(一天内100元,一周500元), 期货价格持续上升3天\" % e_variety\n\nspot_week_data = REF(e, WEEK_SPOT_DIFF)[0]\nweek_change = ABS(spot_week_data) >= 500\n\nspot_day_data = REF(e, SPOT, 3)\nday_change, day_change_result = ISCONTCHANGEABS(spot_day_data,100)\n\nsettle_data = REF(e, SETTLE, 3)\n\nsettle_change, change_data = ISCONTUPABS(settle_data,0)\n\nif week_change and day_change and settle_change:\n    ALERT(e, message)\n    CHART(e, SPOT)\n\nlogger.info(\"%s期货价格3天上涨幅度为:%s,预警值为连续上涨, 现货价格一天内改变量为%s元 , \"\n            \"预警幅度为大于等于100元, 现货价格一周内改变是为%s元, 预警值为大于等于500元\",\n            e_variety, change_data, day_change_result, week_change)','现货价格上涨(一天内100元,一周500元), 期货价格持续上升3天','现货价格上涨(一天内100元,一周500元), 期货价格持续上升3天',NULL,NULL,0,NULL,NULL),(30,'2017-08-08 16:36:54','2017-08-21 11:40:53','e_variety = e.ch_variety\nmessage = \"%s总库存重大变动:连续3天改变2%%\" % e_variety\n\nstock_data = REF(e, STOCK, 3)\nchange, change_data = ISCONTCHANGE(stock_data, 0.02)\n\nALERT(e, message, change)\nCHART(e, STOCK)\n\nlogger.info(\"%s总库存3天改变量为:%s,预警值为连续改变2%%\",\n            e_variety, change_data)','总库存重大变动:连续3天改变2%','总库存重大变动:连续3天改变2%',NULL,NULL,0,NULL,NULL),(31,'2017-08-08 16:36:54','2017-08-21 11:40:53','e_variety = e.ch_variety\nmessage = \"%s库存连续改变3天(2%%)而价格未动(一天内100元,一周500元)\" % e_variety\n\nstock_data = REF(e, STOCK, 3)\nis_change, change_result = ISCONTCHANGE(data, 0.02)\n\n\nspot_week_data = REF(e, SPOT, 5, INDEX_CONTRACT)\nweek_change = spot_week_data[-1]-spot_week_data[-5]\nweek_change_result = ABS(week_change) <= 500\n\nspot_day_data = REF(e, SPOT, 3, INDEX_CONTRACT)\nday_change, day_change_result = ISCONTCHANGEABS(spot_day_data,100, iseg=False)\n\nif is_change and week_change and day_change:\n    ALERT(e, message)\n    CHART(e, STOCK)\n\nlogger.info(\"%s库存3天改变量为:%s,预警值为大于等于2%%, 价格一天内改变量为%s元 , \"\n            \"预警幅度为小于等于100元, 价格一周内改变是为%s元, 预警值为小玩等于500元\",\n            e_variety, change_result, day_change_result, week_change)','库存连续改变3天(2%)而价格未动(一天内100元,一周500元)','库存连续改变3天(2%)而价格未动(一天内100元,一周500元)',NULL,NULL,0,NULL,NULL),(32,'2017-08-08 16:36:54','2017-08-21 11:40:53','e_variety = e.ch_variety\nmessage = \"%s库存不足\" % e_variety\n\nyear_sale = REF(e, YEAL_SALE, end_date=begin_year())[0]\nstock = REF(e, STOCK)[0]\ndays = stock/(year_sale/365)\n\nalert = days > year_days_remain()\n\nALERT(e, message, alert)\nCHART(e, STOCK)\n\nlogger.info(\"%s库存剩余量为:%s, 按去年平均消费量还可以维持%s天, 今年剩余天数:%s天, \"\n            \"预警值为剩余天数大于可维持天数\",\n            e_variety, days, year_days_remain())','库存不足以维持剩余天数','库存不足以维持剩余天数',NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `formula` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-31 16:29:36