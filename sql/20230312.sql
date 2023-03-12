-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: ry
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `QRTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Blob类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QRTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CALENDARS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日历信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CALENDARS`
--

LOCK TABLES `QRTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cron类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CRON_TRIGGERS`
--

LOCK TABLES `QRTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='已触发的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QRTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_JOB_DETAILS`
--

LOCK TABLES `QRTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_LOCKS`
--

DROP TABLE IF EXISTS `QRTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_LOCKS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='存储的悲观锁信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_LOCKS`
--

LOCK TABLES `QRTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QRTZ_LOCKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='暂停的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QRTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='调度器状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SCHEDULER_STATE`
--

LOCK TABLES `QRTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='简单触发器的信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='同步机制的行锁表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='触发器详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_TRIGGERS`
--

LOCK TABLES `QRTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES (1,'t_material_info','原材料信息表',NULL,NULL,'TMaterialInfo','crud','com.ruoyi.system','system','info','原材料信息','ruoyi','0','/',NULL,'admin','2023-03-04 20:53:14','',NULL,NULL),(2,'t_other_param','其他参数信息表',NULL,NULL,'TOtherParam','crud','com.ruoyi.system','system','param','其他参数信息','ruoyi','0','/',NULL,'admin','2023-03-04 20:53:17','',NULL,NULL),(3,'t_product_component','产品/零/组件信息表','',NULL,'TProductComponent','tree','com.ruoyi.system','system','component','产品/零/组件信息','ruoyi','0','/','{\"parentMenuId\":\"3\",\"treeName\":\"product_name\",\"treeParentCode\":\"parent_id\",\"parentMenuName\":\"系统工具\",\"treeCode\":\"product_id\"}','admin','2023-03-04 20:53:18','','2023-03-04 21:18:45',''),(4,'t_purchase_component','外购件信息表','',NULL,'TPurchaseComponent','crud','com.ruoyi.system','system','purchase','外购件信息','ruoyi','0','/','{\"parentMenuId\":\"3\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"系统工具\",\"treeCode\":\"\"}','admin','2023-03-04 20:53:19','','2023-03-12 11:55:02',''),(5,'t_tech_process','工序信息表',NULL,NULL,'TTechProcess','crud','com.ruoyi.system','system','process','工序信息','ruoyi','0','/',NULL,'admin','2023-03-04 20:53:19','',NULL,NULL),(6,'t_tech_route','工艺路线信息表',NULL,NULL,'TTechRoute','crud','com.ruoyi.system','system','route','工艺路线信息','ruoyi','0','/',NULL,'admin','2023-03-04 20:53:20','',NULL,NULL);
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES (1,'1','material_id','原材料ID','bigint','Long','materialId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-03-04 20:53:17','',NULL),(2,'1','material_name','原材料名称','varchar(125)','String','materialName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2023-03-04 20:53:17','',NULL),(3,'1','material_grade','材料牌号','varchar(125)','String','materialGrade','0','0','1','1','1','1','1','EQ','input','',3,'admin','2023-03-04 20:53:17','',NULL),(4,'1','technical_conditions','技术条件','varchar(125)','String','technicalConditions','0','0','1','1','1','1','1','EQ','input','',4,'admin','2023-03-04 20:53:17','',NULL),(5,'1','material_specification','材料规格','varchar(125)','String','materialSpecification','0','0','1','1','1','1','1','EQ','input','',5,'admin','2023-03-04 20:53:17','',NULL),(6,'1','meterage_unit','计量单位','varchar(125)','String','meterageUnit','0','0','1','1','1','1','1','EQ','input','',6,'admin','2023-03-04 20:53:17','',NULL),(7,'1','price','价格','decimal(25,2)','BigDecimal','price','0','0','1','1','1','1','1','EQ','input','',7,'admin','2023-03-04 20:53:17','',NULL),(8,'1','price_basis','价格依据','varchar(125)','String','priceBasis','0','0','1','1','1','1','1','EQ','input','',8,'admin','2023-03-04 20:53:17','',NULL),(9,'1','supplier','供应商','varchar(255)','String','supplier','0','0','1','1','1','1','1','EQ','input','',9,'admin','2023-03-04 20:53:17','',NULL),(10,'1','status','状态','char(1)','String','status','0','0','1','1','1','1','1','EQ','radio','',10,'admin','2023-03-04 20:53:17','',NULL),(11,'1','remark','备注','varchar(255)','String','remark','0','0','1','1','1','1',NULL,'EQ','input','',11,'admin','2023-03-04 20:53:17','',NULL),(12,'1','attr1','预留字段1','varchar(64)','String','attr1','0','0','1','1','1','1','1','EQ','input','',12,'admin','2023-03-04 20:53:17','',NULL),(13,'1','attr2','预留字段2','varchar(255)','String','attr2','0','0','1','1','1','1','1','EQ','input','',13,'admin','2023-03-04 20:53:17','',NULL),(14,'1','attr3','预留字段3','int','Long','attr3','0','0','1','1','1','1','1','EQ','input','',14,'admin','2023-03-04 20:53:17','',NULL),(15,'1','attr4','预留字段4','int','Long','attr4','0','0','1','1','1','1','1','EQ','input','',15,'admin','2023-03-04 20:53:17','',NULL),(16,'1','create_by','创建者','varchar(64)','String','createBy','0','0','1','1',NULL,NULL,NULL,'EQ','input','',16,'admin','2023-03-04 20:53:17','',NULL),(17,'1','cteate_time','创建时间','datetime','Date','cteateTime','0','0','1','1','1','1','1','EQ','datetime','',17,'admin','2023-03-04 20:53:17','',NULL),(18,'1','update_by','更新者','varchar(64)','String','updateBy','0','0','1','1','1',NULL,NULL,'EQ','input','',18,'admin','2023-03-04 20:53:17','',NULL),(19,'1','update_time','更新时间','datetime','Date','updateTime','0','0','1','1','1',NULL,NULL,'EQ','datetime','',19,'admin','2023-03-04 20:53:17','',NULL),(20,'2','parameter_id','参数ID','bigint','Long','parameterId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-03-04 20:53:18','',NULL),(21,'2','parameter_code','参数编号','varchar(125)','String','parameterCode','0','0','1','1','1','1','1','EQ','input','',2,'admin','2023-03-04 20:53:18','',NULL),(22,'2','parameter_name','参数名称','varchar(125)','String','parameterName','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2023-03-04 20:53:18','',NULL),(23,'2','cost','费用/费用率','decimal(25,2)','BigDecimal','cost','0','0','1','1','1','1','1','EQ','input','',4,'admin','2023-03-04 20:53:18','',NULL),(24,'2','status','状态','char(1)','String','status','0','0','1','1','1','1','1','EQ','radio','',5,'admin','2023-03-04 20:53:18','',NULL),(25,'2','remark','备注','varchar(255)','String','remark','0','0','1','1','1','1',NULL,'EQ','input','',6,'admin','2023-03-04 20:53:18','',NULL),(26,'2','attr1','预留字段1','varchar(64)','String','attr1','0','0','1','1','1','1','1','EQ','input','',7,'admin','2023-03-04 20:53:18','',NULL),(27,'2','attr2','预留字段2','varchar(255)','String','attr2','0','0','1','1','1','1','1','EQ','input','',8,'admin','2023-03-04 20:53:18','',NULL),(28,'2','attr3','预留字段3','int','Long','attr3','0','0','1','1','1','1','1','EQ','input','',9,'admin','2023-03-04 20:53:18','',NULL),(29,'2','attr4','预留字段4','int','Long','attr4','0','0','1','1','1','1','1','EQ','input','',10,'admin','2023-03-04 20:53:18','',NULL),(30,'2','create_by','创建者','varchar(64)','String','createBy','0','0','1','1',NULL,NULL,NULL,'EQ','input','',11,'admin','2023-03-04 20:53:18','',NULL),(31,'2','cteate_time','创建时间','datetime','Date','cteateTime','0','0','1','1','1','1','1','EQ','datetime','',12,'admin','2023-03-04 20:53:18','',NULL),(32,'2','update_by','更新者','varchar(64)','String','updateBy','0','0','1','1','1',NULL,NULL,'EQ','input','',13,'admin','2023-03-04 20:53:18','',NULL),(33,'2','update_time','更新时间','datetime','Date','updateTime','0','0','1','1','1',NULL,NULL,'EQ','datetime','',14,'admin','2023-03-04 20:53:18','',NULL),(34,'3','product_id','产品ID','bigint','Long','productId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:45'),(35,'3','parent_id','父节点ID','bigint','Long','parentId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:45'),(36,'3','is_parent','是否为父节点','int','Long','isParent','0','0','1','1','1','1','1','EQ','input','',3,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:45'),(37,'3','product_num','图号','varchar(125)','String','productNum','0','0','1','1','1','1','1','EQ','input','',4,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:45'),(38,'3','product_name','名称','varchar(126)','String','productName','0','0','1','1','1','1','1','LIKE','input','',5,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:45'),(39,'3','product_type','种类1: 产品，2：组件，3:零件','int','Long','productType','0','0','1','1','1','1','1','EQ','select','',6,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:45'),(40,'3','product_make_type','制造方式','int','Long','productMakeType','0','0','1','1','1','1','1','EQ','select','',7,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(41,'3','meterage_unit','计量单位','varchar(125)','String','meterageUnit','0','0','1','1','1','1','1','EQ','input','',8,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(42,'3','assemble_quantity','单套数量','int','Long','assembleQuantity','0','0','1','1','1','1','1','EQ','input','',9,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(43,'3','special_item','专项费用','decimal(25,2)','BigDecimal','specialItem','0','0','1','1','1','1','1','EQ','input','',10,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(44,'3','material_grade','材料牌号','varchar(125)','String','materialGrade','0','0','1','1','1','1','1','EQ','input','',11,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(45,'3','technical_conditions','技术条件','varchar(125)','String','technicalConditions','0','0','1','1','1','1','1','EQ','input','',12,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(46,'3','material_specification','材料规格','varchar(125)','String','materialSpecification','0','0','1','1','1','1','1','EQ','input','',13,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(47,'3','single_piece_quota','单件定额','decimal(25,2)','BigDecimal','singlePieceQuota','0','0','1','1','1','1','1','EQ','input','',14,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(48,'3','waste_loss','废品损失金额','decimal(25,2)','BigDecimal','wasteLoss','0','0','1','1','1','1','1','EQ','input','',15,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(49,'3','model_specification','型号规格','varchar(125)','String','modelSpecification','0','0','1','1','1','1','1','EQ','input','',16,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(50,'3','status','状态','char(1)','String','status','0','0','1','1','1','1','1','EQ','radio','',17,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(51,'3','remark','备注','varchar(255)','String','remark','0','0','1','1','1','1',NULL,'EQ','input','',18,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(52,'3','attr1','预留字段1','varchar(64)','String','attr1','0','0','1','1','1','1','1','EQ','input','',19,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(53,'3','attr2','预留字段2','varchar(255)','String','attr2','0','0','1','1','1','1','1','EQ','input','',20,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(54,'3','attr3','预留字段3','int','Long','attr3','0','0','1','1','1','1','1','EQ','input','',21,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(55,'3','attr4','预留字段4','int','Long','attr4','0','0','1','1','1','1','1','EQ','input','',22,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(56,'3','create_by','创建者','varchar(64)','String','createBy','0','0','1','1',NULL,NULL,NULL,'EQ','input','',23,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(57,'3','cteate_time','创建时间','datetime','Date','cteateTime','0','0','1','1','1','1','1','EQ','datetime','',24,'admin','2023-03-04 20:53:18',NULL,'2023-03-04 21:18:46'),(58,'3','update_by','更新者','varchar(64)','String','updateBy','0','0','1','1','1',NULL,NULL,'EQ','input','',25,'admin','2023-03-04 20:53:19',NULL,'2023-03-04 21:18:47'),(59,'3','update_time','更新时间','datetime','Date','updateTime','0','0','1','1','1',NULL,NULL,'EQ','datetime','',26,'admin','2023-03-04 20:53:19',NULL,'2023-03-04 21:18:47'),(60,'4','purchase_id','外购件ID','bigint','Long','purchaseId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-03-04 20:53:19',NULL,'2023-03-12 11:55:02'),(61,'4','purchase_name','外购件名称','varchar(125)','String','purchaseName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2023-03-04 20:53:19',NULL,'2023-03-12 11:55:02'),(62,'4','model_specification','型号规格','varchar(125)','String','modelSpecification','0','0','1','1','1','1','1','EQ','input','',3,'admin','2023-03-04 20:53:19',NULL,'2023-03-12 11:55:02'),(63,'4','meterage_unit','计量单位','varchar(125)','String','meterageUnit','0','0','1','1','1','1','1','EQ','input','',4,'admin','2023-03-04 20:53:19',NULL,'2023-03-12 11:55:02'),(64,'4','price','单价','decimal(25,2)','BigDecimal','price','0','0','1','1','1','1','1','EQ','input','',5,'admin','2023-03-04 20:53:19',NULL,'2023-03-12 11:55:02'),(65,'4','price_basis','价格依据','varchar(125)','String','priceBasis','0','0','1','1','1','1','1','EQ','input','',6,'admin','2023-03-04 20:53:19',NULL,'2023-03-12 11:55:02'),(66,'4','supplier','供应商','varchar(255)','String','supplier','0','0','1','1','1','1','1','EQ','input','',7,'admin','2023-03-04 20:53:19',NULL,'2023-03-12 11:55:02'),(67,'4','status','状态','char(1)','String','status','0','0','1','1','1','1','1','EQ','radio','',8,'admin','2023-03-04 20:53:19',NULL,'2023-03-12 11:55:03'),(68,'4','remark','备注','varchar(255)','String','remark','0','0','1','1','1','1',NULL,'EQ','input','',9,'admin','2023-03-04 20:53:19',NULL,'2023-03-12 11:55:03'),(69,'4','attr1','预留字段1','varchar(64)','String','attr1','0','0','1','1','1','1','1','EQ','input','',10,'admin','2023-03-04 20:53:19',NULL,'2023-03-12 11:55:03'),(70,'4','attr2','预留字段2','varchar(255)','String','attr2','0','0','1','1','1','1','1','EQ','input','',11,'admin','2023-03-04 20:53:19',NULL,'2023-03-12 11:55:03'),(71,'4','attr3','预留字段3','int','Long','attr3','0','0','1','1','1','1','1','EQ','input','',12,'admin','2023-03-04 20:53:19',NULL,'2023-03-12 11:55:03'),(72,'4','attr4','预留字段4','int','Long','attr4','0','0','1','1','1','1','1','EQ','input','',13,'admin','2023-03-04 20:53:19',NULL,'2023-03-12 11:55:03'),(73,'4','create_by','创建者','varchar(64)','String','createBy','0','0','1','1',NULL,NULL,NULL,'EQ','input','',14,'admin','2023-03-04 20:53:19',NULL,'2023-03-12 11:55:03'),(74,'4','cteate_time','创建时间','datetime','Date','cteateTime','0','0','1','1','1','1','1','EQ','datetime','',15,'admin','2023-03-04 20:53:19',NULL,'2023-03-12 11:55:03'),(75,'4','update_by','更新者','varchar(64)','String','updateBy','0','0','1','1','1',NULL,NULL,'EQ','input','',16,'admin','2023-03-04 20:53:19',NULL,'2023-03-12 11:55:03'),(76,'4','update_time','更新时间','datetime','Date','updateTime','0','0','1','1','1',NULL,NULL,'EQ','datetime','',17,'admin','2023-03-04 20:53:19',NULL,'2023-03-12 11:55:03'),(77,'5','process_id','工序ID','bigint','Long','processId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-03-04 20:53:20','',NULL),(78,'5','route_id','工艺路线ID','bigint','Long','routeId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2023-03-04 20:53:20','',NULL),(79,'5','process_num','工序号','varchar(64)','String','processNum','0','0','1','1','1','1','1','EQ','input','',3,'admin','2023-03-04 20:53:20','',NULL),(80,'5','process_name','工序名称','varchar(125)','String','processName','0','0','1','1','1','1','1','LIKE','input','',4,'admin','2023-03-04 20:53:20','',NULL),(81,'5','is_outsource','是否外协','int','Long','isOutsource','0','0','1','1','1','1','1','EQ','input','',5,'admin','2023-03-04 20:53:20','',NULL),(82,'5','outsource_price','外协价格','decimal(25,2)','BigDecimal','outsourcePrice','0','0','1','1','1','1','1','EQ','input','',6,'admin','2023-03-04 20:53:20','',NULL),(83,'5','device','设备','varchar(125)','String','device','0','0','1','1','1','1','1','EQ','input','',7,'admin','2023-03-04 20:53:20','',NULL),(84,'5','tool','工具','varchar(125)','String','tool','0','0','1','1','1','1','1','EQ','input','',8,'admin','2023-03-04 20:53:20','',NULL),(85,'5','work_hours','生产工时','decimal(25,2)','BigDecimal','workHours','0','0','1','1','1','1','1','EQ','input','',9,'admin','2023-03-04 20:53:20','',NULL),(86,'5','process_description','工艺描述','varchar(255)','String','processDescription','0','0','1','1','1','1','1','EQ','input','',10,'admin','2023-03-04 20:53:20','',NULL),(87,'5','process_picture','工艺图纸路径','varchar(255)','String','processPicture','0','0','1','1','1','1','1','EQ','input','',11,'admin','2023-03-04 20:53:20','',NULL),(88,'5','status','状态','char(1)','String','status','0','0','1','1','1','1','1','EQ','radio','',12,'admin','2023-03-04 20:53:20','',NULL),(89,'5','remark','备注','varchar(255)','String','remark','0','0','1','1','1','1',NULL,'EQ','input','',13,'admin','2023-03-04 20:53:20','',NULL),(90,'5','attr1','预留字段1','varchar(64)','String','attr1','0','0','1','1','1','1','1','EQ','input','',14,'admin','2023-03-04 20:53:20','',NULL),(91,'5','attr2','预留字段2','varchar(255)','String','attr2','0','0','1','1','1','1','1','EQ','input','',15,'admin','2023-03-04 20:53:20','',NULL),(92,'5','attr3','预留字段3','int','Long','attr3','0','0','1','1','1','1','1','EQ','input','',16,'admin','2023-03-04 20:53:20','',NULL),(93,'5','attr4','预留字段4','int','Long','attr4','0','0','1','1','1','1','1','EQ','input','',17,'admin','2023-03-04 20:53:20','',NULL),(94,'5','create_by','创建者','varchar(64)','String','createBy','0','0','1','1',NULL,NULL,NULL,'EQ','input','',18,'admin','2023-03-04 20:53:20','',NULL),(95,'5','cteate_time','创建时间','datetime','Date','cteateTime','0','0','1','1','1','1','1','EQ','datetime','',19,'admin','2023-03-04 20:53:20','',NULL),(96,'5','update_by','更新者','varchar(64)','String','updateBy','0','0','1','1','1',NULL,NULL,'EQ','input','',20,'admin','2023-03-04 20:53:20','',NULL),(97,'5','update_time','更新时间','datetime','Date','updateTime','0','0','1','1','1',NULL,NULL,'EQ','datetime','',21,'admin','2023-03-04 20:53:20','',NULL),(98,'6','route_id','工艺路线ID','bigint','Long','routeId','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-03-04 20:53:20','',NULL),(99,'6','route_code','工艺路线编号','varchar(125)','String','routeCode','0','0','1','1','1','1','1','EQ','input','',2,'admin','2023-03-04 20:53:20','',NULL),(100,'6','route_name','工艺路线名称','varchar(125)','String','routeName','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2023-03-04 20:53:21','',NULL),(101,'6','status','状态','char(1)','String','status','0','0','1','1','1','1','1','EQ','radio','',4,'admin','2023-03-04 20:53:21','',NULL),(102,'6','remark','备注','varchar(255)','String','remark','0','0','1','1','1','1',NULL,'EQ','input','',5,'admin','2023-03-04 20:53:21','',NULL),(103,'6','attr1','预留字段1','varchar(64)','String','attr1','0','0','1','1','1','1','1','EQ','input','',6,'admin','2023-03-04 20:53:21','',NULL),(104,'6','attr2','预留字段2','varchar(255)','String','attr2','0','0','1','1','1','1','1','EQ','input','',7,'admin','2023-03-04 20:53:21','',NULL),(105,'6','attr3','预留字段3','int','Long','attr3','0','0','1','1','1','1','1','EQ','input','',8,'admin','2023-03-04 20:53:21','',NULL),(106,'6','attr4','预留字段4','int','Long','attr4','0','0','1','1','1','1','1','EQ','input','',9,'admin','2023-03-04 20:53:21','',NULL),(107,'6','create_by','创建者','varchar(64)','String','createBy','0','0','1','1',NULL,NULL,NULL,'EQ','input','',10,'admin','2023-03-04 20:53:21','',NULL),(108,'6','cteate_time','创建时间','datetime','Date','cteateTime','0','0','1','1','1','1','1','EQ','datetime','',11,'admin','2023-03-04 20:53:21','',NULL),(109,'6','update_by','更新者','varchar(64)','String','updateBy','0','0','1','1','1',NULL,NULL,'EQ','input','',12,'admin','2023-03-04 20:53:21','',NULL),(110,'6','update_time','更新时间','datetime','Date','updateTime','0','0','1','1','1',NULL,NULL,'EQ','datetime','',13,'admin','2023-03-04 20:53:21','',NULL);
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2023-03-03 21:30:06','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2023-03-03 21:30:06','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2023-03-03 21:30:06','',NULL,'深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue'),(4,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2023-03-03 21:30:06','',NULL,'是否开启注册用户功能（true开启，false关闭）'),(5,'用户管理-密码字符范围','sys.account.chrtype','0','Y','admin','2023-03-03 21:30:06','',NULL,'默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）'),(6,'用户管理-初始密码修改策略','sys.account.initPasswordModify','0','Y','admin','2023-03-03 21:30:07','',NULL,'0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框'),(7,'用户管理-账号密码更新周期','sys.account.passwordValidateDays','0','Y','admin','2023-03-03 21:30:07','',NULL,'密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框'),(8,'主框架页-菜单导航显示风格','sys.index.menuStyle','default','Y','admin','2023-03-03 21:30:07','',NULL,'菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）'),(9,'主框架页-是否开启页脚','sys.index.footer','true','Y','admin','2023-03-03 21:30:07','',NULL,'是否开启底部页脚显示（true显示，false隐藏）'),(10,'主框架页-是否开启页签','sys.index.tagsView','true','Y','admin','2023-03-03 21:30:08','',NULL,'是否开启菜单多页签显示（true显示，false隐藏）'),(11,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2023-03-03 21:30:08','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2023-03-03 21:29:00','',NULL),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2023-03-03 21:29:00','',NULL),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2023-03-03 21:29:01','',NULL),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2023-03-03 21:29:01','',NULL),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2023-03-03 21:29:02','',NULL),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2023-03-03 21:29:02','',NULL),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2023-03-03 21:29:02','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2023-03-03 21:29:03','',NULL),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2023-03-03 21:29:03','',NULL),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2023-03-03 21:29:04','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2023-03-03 21:29:57','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2023-03-03 21:29:58','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2023-03-03 21:29:58','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2023-03-03 21:29:58','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2023-03-03 21:29:58','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2023-03-03 21:29:58','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2023-03-03 21:29:59','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2023-03-03 21:29:59','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2023-03-03 21:29:59','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2023-03-03 21:29:59','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2023-03-03 21:29:59','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2023-03-03 21:29:59','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2023-03-03 21:30:00','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2023-03-03 21:30:00','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2023-03-03 21:30:00','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2023-03-03 21:30:00','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2023-03-03 21:30:01','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2023-03-03 21:30:01','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2023-03-03 21:30:01','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2023-03-03 21:30:01','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2023-03-03 21:30:02','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2023-03-03 21:30:02','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2023-03-03 21:30:03','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2023-03-03 21:30:03','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2023-03-03 21:30:03','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2023-03-03 21:30:03','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2023-03-03 21:30:04','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2023-03-03 21:30:04','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2023-03-03 21:30:04','',NULL,'停用状态');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2023-03-03 21:29:54','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2023-03-03 21:29:55','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2023-03-03 21:29:55','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2023-03-03 21:29:55','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2023-03-03 21:29:55','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2023-03-03 21:29:55','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2023-03-03 21:29:56','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2023-03-03 21:29:56','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2023-03-03 21:29:56','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2023-03-03 21:29:56','',NULL,'登录状态列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2023-03-03 21:30:12','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2023-03-03 21:30:12','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2023-03-03 21:30:12','',NULL,'');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Firefox 11','Ubuntu','0','登录成功','2023-03-03 21:42:31'),(101,'admin','127.0.0.1','内网IP','Firefox 11','Ubuntu','0','登录成功','2023-03-04 20:52:34'),(102,'admin','127.0.0.1','内网IP','Firefox 11','Ubuntu','0','登录成功','2023-03-04 21:07:31'),(103,'admin','127.0.0.1','内网IP','Firefox 11','Ubuntu','0','登录成功','2023-03-04 21:15:52'),(104,'admin','127.0.0.1','内网IP','Firefox 11','Ubuntu','0','登录成功','2023-03-04 21:22:27'),(105,'admin','127.0.0.1','内网IP','Firefox 11','Ubuntu','0','登录成功','2023-03-04 21:28:20'),(106,'admin','127.0.0.1','内网IP','Firefox 11','Ubuntu','0','登录成功','2023-03-04 21:55:57'),(107,'admin','127.0.0.1','内网IP','Firefox 11','Ubuntu','0','登录成功','2023-03-05 21:58:13'),(108,'admin','127.0.0.1','内网IP','Firefox 11','Ubuntu','0','登录成功','2023-03-06 22:16:02'),(109,'admin','127.0.0.1','内网IP','Firefox 11','Ubuntu','0','登录成功','2023-03-06 22:21:12'),(110,'admin','127.0.0.1','内网IP','Firefox 11','Ubuntu','0','登录成功','2023-03-07 09:42:46'),(111,'admin','127.0.0.1','内网IP','Firefox 11','Ubuntu','0','登录成功','2023-03-07 23:36:48'),(112,'admin','127.0.0.1','内网IP','Firefox 11','Ubuntu','0','登录成功','2023-03-12 11:41:48'),(113,'admin','127.0.0.1','内网IP','Firefox 11','Ubuntu','0','登录成功','2023-03-12 12:04:19'),(114,'admin','127.0.0.1','内网IP','Firefox 11','Ubuntu','0','登录成功','2023-03-12 12:28:24');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2048 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'#','','M','0','1','','fa fa-gear','admin','2023-03-03 21:29:15','',NULL,'系统管理目录'),(2,'系统监控',0,2,'#','','M','0','1','','fa fa-video-camera','admin','2023-03-03 21:29:15','',NULL,'系统监控目录'),(3,'系统工具',0,3,'#','','M','0','1','','fa fa-bars','admin','2023-03-03 21:29:16','',NULL,'系统工具目录'),(4,'若依官网',0,4,'http://ruoyi.vip','menuBlank','C','0','1','','fa fa-location-arrow','admin','2023-03-03 21:29:16','',NULL,'若依官网地址'),(100,'用户管理',1,1,'/system/user','','C','0','1','system:user:view','fa fa-user-o','admin','2023-03-03 21:29:16','',NULL,'用户管理菜单'),(101,'角色管理',1,2,'/system/role','','C','0','1','system:role:view','fa fa-user-secret','admin','2023-03-03 21:29:16','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'/system/menu','','C','0','1','system:menu:view','fa fa-th-list','admin','2023-03-03 21:29:17','',NULL,'菜单管理菜单'),(103,'部门管理',1,4,'/system/dept','','C','0','1','system:dept:view','fa fa-outdent','admin','2023-03-03 21:29:17','',NULL,'部门管理菜单'),(104,'岗位管理',1,5,'/system/post','','C','0','1','system:post:view','fa fa-address-card-o','admin','2023-03-03 21:29:17','',NULL,'岗位管理菜单'),(105,'字典管理',1,6,'/system/dict','','C','0','1','system:dict:view','fa fa-bookmark-o','admin','2023-03-03 21:29:17','',NULL,'字典管理菜单'),(106,'参数设置',1,7,'/system/config','','C','0','1','system:config:view','fa fa-sun-o','admin','2023-03-03 21:29:17','',NULL,'参数设置菜单'),(107,'通知公告',1,8,'/system/notice','','C','0','1','system:notice:view','fa fa-bullhorn','admin','2023-03-03 21:29:17','',NULL,'通知公告菜单'),(108,'日志管理',1,9,'#','','M','0','1','','fa fa-pencil-square-o','admin','2023-03-03 21:29:18','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'/monitor/online','','C','0','1','monitor:online:view','fa fa-user-circle','admin','2023-03-03 21:29:18','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'/monitor/job','','C','0','1','monitor:job:view','fa fa-tasks','admin','2023-03-03 21:29:18','',NULL,'定时任务菜单'),(111,'数据监控',2,3,'/monitor/data','','C','0','1','monitor:data:view','fa fa-bug','admin','2023-03-03 21:29:18','',NULL,'数据监控菜单'),(112,'服务监控',2,4,'/monitor/server','','C','0','1','monitor:server:view','fa fa-server','admin','2023-03-03 21:29:18','',NULL,'服务监控菜单'),(113,'缓存监控',2,5,'/monitor/cache','','C','0','1','monitor:cache:view','fa fa-cube','admin','2023-03-03 21:29:19','',NULL,'缓存监控菜单'),(114,'表单构建',3,1,'/tool/build','','C','0','1','tool:build:view','fa fa-wpforms','admin','2023-03-03 21:29:19','',NULL,'表单构建菜单'),(115,'代码生成',3,2,'/tool/gen','','C','0','1','tool:gen:view','fa fa-code','admin','2023-03-03 21:29:19','',NULL,'代码生成菜单'),(116,'系统接口',3,3,'/tool/swagger','','C','0','1','tool:swagger:view','fa fa-gg','admin','2023-03-03 21:29:19','',NULL,'系统接口菜单'),(500,'操作日志',108,1,'/monitor/operlog','','C','0','1','monitor:operlog:view','fa fa-address-book','admin','2023-03-03 21:29:19','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'/monitor/logininfor','','C','0','1','monitor:logininfor:view','fa fa-file-image-o','admin','2023-03-03 21:29:20','',NULL,'登录日志菜单'),(1000,'用户查询',100,1,'#','','F','0','1','system:user:list','#','admin','2023-03-03 21:29:20','',NULL,''),(1001,'用户新增',100,2,'#','','F','0','1','system:user:add','#','admin','2023-03-03 21:29:20','',NULL,''),(1002,'用户修改',100,3,'#','','F','0','1','system:user:edit','#','admin','2023-03-03 21:29:20','',NULL,''),(1003,'用户删除',100,4,'#','','F','0','1','system:user:remove','#','admin','2023-03-03 21:29:20','',NULL,''),(1004,'用户导出',100,5,'#','','F','0','1','system:user:export','#','admin','2023-03-03 21:29:20','',NULL,''),(1005,'用户导入',100,6,'#','','F','0','1','system:user:import','#','admin','2023-03-03 21:29:21','',NULL,''),(1006,'重置密码',100,7,'#','','F','0','1','system:user:resetPwd','#','admin','2023-03-03 21:29:21','',NULL,''),(1007,'角色查询',101,1,'#','','F','0','1','system:role:list','#','admin','2023-03-03 21:29:21','',NULL,''),(1008,'角色新增',101,2,'#','','F','0','1','system:role:add','#','admin','2023-03-03 21:29:21','',NULL,''),(1009,'角色修改',101,3,'#','','F','0','1','system:role:edit','#','admin','2023-03-03 21:29:21','',NULL,''),(1010,'角色删除',101,4,'#','','F','0','1','system:role:remove','#','admin','2023-03-03 21:29:21','',NULL,''),(1011,'角色导出',101,5,'#','','F','0','1','system:role:export','#','admin','2023-03-03 21:29:21','',NULL,''),(1012,'菜单查询',102,1,'#','','F','0','1','system:menu:list','#','admin','2023-03-03 21:29:22','',NULL,''),(1013,'菜单新增',102,2,'#','','F','0','1','system:menu:add','#','admin','2023-03-03 21:29:22','',NULL,''),(1014,'菜单修改',102,3,'#','','F','0','1','system:menu:edit','#','admin','2023-03-03 21:29:22','',NULL,''),(1015,'菜单删除',102,4,'#','','F','0','1','system:menu:remove','#','admin','2023-03-03 21:29:22','',NULL,''),(1016,'部门查询',103,1,'#','','F','0','1','system:dept:list','#','admin','2023-03-03 21:29:22','',NULL,''),(1017,'部门新增',103,2,'#','','F','0','1','system:dept:add','#','admin','2023-03-03 21:29:22','',NULL,''),(1018,'部门修改',103,3,'#','','F','0','1','system:dept:edit','#','admin','2023-03-03 21:29:23','',NULL,''),(1019,'部门删除',103,4,'#','','F','0','1','system:dept:remove','#','admin','2023-03-03 21:29:23','',NULL,''),(1020,'岗位查询',104,1,'#','','F','0','1','system:post:list','#','admin','2023-03-03 21:29:23','',NULL,''),(1021,'岗位新增',104,2,'#','','F','0','1','system:post:add','#','admin','2023-03-03 21:29:23','',NULL,''),(1022,'岗位修改',104,3,'#','','F','0','1','system:post:edit','#','admin','2023-03-03 21:29:23','',NULL,''),(1023,'岗位删除',104,4,'#','','F','0','1','system:post:remove','#','admin','2023-03-03 21:29:23','',NULL,''),(1024,'岗位导出',104,5,'#','','F','0','1','system:post:export','#','admin','2023-03-03 21:29:24','',NULL,''),(1025,'字典查询',105,1,'#','','F','0','1','system:dict:list','#','admin','2023-03-03 21:29:24','',NULL,''),(1026,'字典新增',105,2,'#','','F','0','1','system:dict:add','#','admin','2023-03-03 21:29:24','',NULL,''),(1027,'字典修改',105,3,'#','','F','0','1','system:dict:edit','#','admin','2023-03-03 21:29:24','',NULL,''),(1028,'字典删除',105,4,'#','','F','0','1','system:dict:remove','#','admin','2023-03-03 21:29:24','',NULL,''),(1029,'字典导出',105,5,'#','','F','0','1','system:dict:export','#','admin','2023-03-03 21:29:24','',NULL,''),(1030,'参数查询',106,1,'#','','F','0','1','system:config:list','#','admin','2023-03-03 21:29:25','',NULL,''),(1031,'参数新增',106,2,'#','','F','0','1','system:config:add','#','admin','2023-03-03 21:29:25','',NULL,''),(1032,'参数修改',106,3,'#','','F','0','1','system:config:edit','#','admin','2023-03-03 21:29:25','',NULL,''),(1033,'参数删除',106,4,'#','','F','0','1','system:config:remove','#','admin','2023-03-03 21:29:25','',NULL,''),(1034,'参数导出',106,5,'#','','F','0','1','system:config:export','#','admin','2023-03-03 21:29:25','',NULL,''),(1035,'公告查询',107,1,'#','','F','0','1','system:notice:list','#','admin','2023-03-03 21:29:25','',NULL,''),(1036,'公告新增',107,2,'#','','F','0','1','system:notice:add','#','admin','2023-03-03 21:29:26','',NULL,''),(1037,'公告修改',107,3,'#','','F','0','1','system:notice:edit','#','admin','2023-03-03 21:29:26','',NULL,''),(1038,'公告删除',107,4,'#','','F','0','1','system:notice:remove','#','admin','2023-03-03 21:29:26','',NULL,''),(1039,'操作查询',500,1,'#','','F','0','1','monitor:operlog:list','#','admin','2023-03-03 21:29:26','',NULL,''),(1040,'操作删除',500,2,'#','','F','0','1','monitor:operlog:remove','#','admin','2023-03-03 21:29:26','',NULL,''),(1041,'详细信息',500,3,'#','','F','0','1','monitor:operlog:detail','#','admin','2023-03-03 21:29:27','',NULL,''),(1042,'日志导出',500,4,'#','','F','0','1','monitor:operlog:export','#','admin','2023-03-03 21:29:27','',NULL,''),(1043,'登录查询',501,1,'#','','F','0','1','monitor:logininfor:list','#','admin','2023-03-03 21:29:27','',NULL,''),(1044,'登录删除',501,2,'#','','F','0','1','monitor:logininfor:remove','#','admin','2023-03-03 21:29:27','',NULL,''),(1045,'日志导出',501,3,'#','','F','0','1','monitor:logininfor:export','#','admin','2023-03-03 21:29:27','',NULL,''),(1046,'账户解锁',501,4,'#','','F','0','1','monitor:logininfor:unlock','#','admin','2023-03-03 21:29:27','',NULL,''),(1047,'在线查询',109,1,'#','','F','0','1','monitor:online:list','#','admin','2023-03-03 21:29:27','',NULL,''),(1048,'批量强退',109,2,'#','','F','0','1','monitor:online:batchForceLogout','#','admin','2023-03-03 21:29:28','',NULL,''),(1049,'单条强退',109,3,'#','','F','0','1','monitor:online:forceLogout','#','admin','2023-03-03 21:29:28','',NULL,''),(1050,'任务查询',110,1,'#','','F','0','1','monitor:job:list','#','admin','2023-03-03 21:29:28','',NULL,''),(1051,'任务新增',110,2,'#','','F','0','1','monitor:job:add','#','admin','2023-03-03 21:29:28','',NULL,''),(1052,'任务修改',110,3,'#','','F','0','1','monitor:job:edit','#','admin','2023-03-03 21:29:28','',NULL,''),(1053,'任务删除',110,4,'#','','F','0','1','monitor:job:remove','#','admin','2023-03-03 21:29:29','',NULL,''),(1054,'状态修改',110,5,'#','','F','0','1','monitor:job:changeStatus','#','admin','2023-03-03 21:29:29','',NULL,''),(1055,'任务详细',110,6,'#','','F','0','1','monitor:job:detail','#','admin','2023-03-03 21:29:29','',NULL,''),(1056,'任务导出',110,7,'#','','F','0','1','monitor:job:export','#','admin','2023-03-03 21:29:29','',NULL,''),(1057,'生成查询',115,1,'#','','F','0','1','tool:gen:list','#','admin','2023-03-03 21:29:29','',NULL,''),(1058,'生成修改',115,2,'#','','F','0','1','tool:gen:edit','#','admin','2023-03-03 21:29:29','',NULL,''),(1059,'生成删除',115,3,'#','','F','0','1','tool:gen:remove','#','admin','2023-03-03 21:29:30','',NULL,''),(1060,'预览代码',115,4,'#','','F','0','1','tool:gen:preview','#','admin','2023-03-03 21:29:30','',NULL,''),(1061,'生成代码',115,5,'#','','F','0','1','tool:gen:code','#','admin','2023-03-03 21:29:30','',NULL,''),(2006,'产品/零/组件信息',3,1,'/system/component','','C','0','1','system:component:view','#','admin','2023-03-04 21:24:37','',NULL,'产品/零/组件信息菜单'),(2007,'产品/零/组件信息查询',2006,1,'#','','F','0','1','system:component:list','#','admin','2023-03-04 21:24:37','',NULL,''),(2008,'产品/零/组件信息新增',2006,2,'#','','F','0','1','system:component:add','#','admin','2023-03-04 21:24:37','',NULL,''),(2009,'产品/零/组件信息修改',2006,3,'#','','F','0','1','system:component:edit','#','admin','2023-03-04 21:24:38','',NULL,''),(2010,'产品/零/组件信息删除',2006,4,'#','','F','0','1','system:component:remove','#','admin','2023-03-04 21:24:38','',NULL,''),(2011,'产品/零/组件信息导出',2006,5,'#','','F','0','1','system:component:export','#','admin','2023-03-04 21:24:40','',NULL,''),(2018,'外购件信息',3,1,'/system/purchase','','C','0','1','system:purchase:view','#','admin','2023-03-12 12:02:54','',NULL,'外购件信息菜单'),(2019,'外购件信息查询',2018,1,'#','','F','0','1','system:purchase:list','#','admin','2023-03-12 12:02:54','',NULL,''),(2020,'外购件信息新增',2018,2,'#','','F','0','1','system:purchase:add','#','admin','2023-03-12 12:02:54','',NULL,''),(2021,'外购件信息修改',2018,3,'#','','F','0','1','system:purchase:edit','#','admin','2023-03-12 12:02:54','',NULL,''),(2022,'外购件信息删除',2018,4,'#','','F','0','1','system:purchase:remove','#','admin','2023-03-12 12:02:54','',NULL,''),(2023,'外购件信息导出',2018,5,'#','','F','0','1','system:purchase:export','#','admin','2023-03-12 12:02:54','',NULL,''),(2024,'原材料信息',3,1,'/system/info','','C','0','1','system:info:view','#','admin','2023-03-12 12:11:49','',NULL,'原材料信息菜单'),(2025,'原材料信息查询',2024,1,'#','','F','0','1','system:info:list','#','admin','2023-03-12 12:11:49','',NULL,''),(2026,'原材料信息新增',2024,2,'#','','F','0','1','system:info:add','#','admin','2023-03-12 12:11:50','',NULL,''),(2027,'原材料信息修改',2024,3,'#','','F','0','1','system:info:edit','#','admin','2023-03-12 12:11:50','',NULL,''),(2028,'原材料信息删除',2024,4,'#','','F','0','1','system:info:remove','#','admin','2023-03-12 12:11:50','',NULL,''),(2029,'原材料信息导出',2024,5,'#','','F','0','1','system:info:export','#','admin','2023-03-12 12:11:50','',NULL,''),(2030,'工序信息',3,1,'/system/process','','C','0','1','system:process:view','#','admin','2023-03-12 12:17:23','',NULL,'工序信息菜单'),(2031,'工序信息查询',2030,1,'#','','F','0','1','system:process:list','#','admin','2023-03-12 12:17:23','',NULL,''),(2032,'工序信息新增',2030,2,'#','','F','0','1','system:process:add','#','admin','2023-03-12 12:17:23','',NULL,''),(2033,'工序信息修改',2030,3,'#','','F','0','1','system:process:edit','#','admin','2023-03-12 12:17:24','',NULL,''),(2034,'工序信息删除',2030,4,'#','','F','0','1','system:process:remove','#','admin','2023-03-12 12:17:24','',NULL,''),(2035,'工序信息导出',2030,5,'#','','F','0','1','system:process:export','#','admin','2023-03-12 12:17:24','',NULL,''),(2036,'工艺路线信息',3,1,'/system/route','','C','0','1','system:route:view','#','admin','2023-03-12 12:18:10','',NULL,'工艺路线信息菜单'),(2037,'工艺路线信息查询',2036,1,'#','','F','0','1','system:route:list','#','admin','2023-03-12 12:18:10','',NULL,''),(2038,'工艺路线信息新增',2036,2,'#','','F','0','1','system:route:add','#','admin','2023-03-12 12:18:10','',NULL,''),(2039,'工艺路线信息修改',2036,3,'#','','F','0','1','system:route:edit','#','admin','2023-03-12 12:18:10','',NULL,''),(2040,'工艺路线信息删除',2036,4,'#','','F','0','1','system:route:remove','#','admin','2023-03-12 12:18:10','',NULL,''),(2041,'工艺路线信息导出',2036,5,'#','','F','0','1','system:route:export','#','admin','2023-03-12 12:18:10','',NULL,''),(2042,'其他参数信息',3,1,'/system/param','','C','0','1','system:param:view','#','admin','2023-03-12 12:26:28','',NULL,'其他参数信息菜单'),(2043,'其他参数信息查询',2042,1,'#','','F','0','1','system:param:list','#','admin','2023-03-12 12:26:29','',NULL,''),(2044,'其他参数信息新增',2042,2,'#','','F','0','1','system:param:add','#','admin','2023-03-12 12:26:29','',NULL,''),(2045,'其他参数信息修改',2042,3,'#','','F','0','1','system:param:edit','#','admin','2023-03-12 12:26:29','',NULL,''),(2046,'其他参数信息删除',2042,4,'#','','F','0','1','system:param:remove','#','admin','2023-03-12 12:26:29','',NULL,''),(2047,'其他参数信息导出',2042,5,'#','','F','0','1','system:param:export','#','admin','2023-03-12 12:26:29','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2023-03-03 21:30:15','',NULL,'管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1','维护内容','0','admin','2023-03-03 21:30:15','',NULL,'管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":[\"t_product_component,t_other_param,t_tech_process,t_tech_route,t_material_info,t_purchase_component\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-04 20:53:22',8328),(101,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/t_product_component','127.0.0.1','内网IP','\"t_product_component\"',NULL,0,NULL,'2023-03-04 20:54:36',690),(102,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"3\"],\"tableName\":[\"t_product_component\"],\"tableComment\":[\"产品/零/组件信息表\"],\"className\":[\"TProductComponent\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"34\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"产品ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"productId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"35\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父节点ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"parentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"36\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"是否为父节点\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"isParent\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"37\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"图号\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"productNum\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"38\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"名称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"productName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"39\"],\"','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-04 21:18:47',2326),(103,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/t_product_component','127.0.0.1','内网IP','\"t_product_component\"',NULL,0,NULL,'2023-03-04 21:22:47',1683),(104,'产品/零/组件信息',1,'com.ruoyi.system.controller.TProductComponentController.addSave()','POST',1,'admin','研发部门','/system/component/add','127.0.0.1','内网IP','{\"parentId\":[\"\"],\"productType\":[\"1\"],\"productMakeType\":[\"2\"],\"productNum\":[\"1\"],\"productName\":[\"测试产品\"],\"meterageUnit\":[\"件\"],\"assembleQuantity\":[\"100\"],\"specialItem\":[\"100000\"],\"materialGrade\":[\"\"],\"technicalConditions\":[\"\"],\"materialSpecification\":[\"\"],\"singlePieceQuota\":[\"\"],\"wasteLoss\":[\"\"],\"modelSpecification\":[\"\"],\"remark\":[\"备注产品1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-06 22:25:42',967),(105,'产品/零/组件信息',1,'com.ruoyi.system.controller.TProductComponentController.addSave()','POST',1,'admin','研发部门','/system/component/add','127.0.0.1','内网IP','{\"parentId\":[\"1\"],\"productType\":[\"2\"],\"productMakeType\":[\"1\"],\"productNum\":[\"222\"],\"productName\":[\"测试组件1\"],\"meterageUnit\":[\"套\"],\"assembleQuantity\":[\"20\"],\"specialItem\":[\"200\"],\"materialGrade\":[\"材料牌号1\"],\"technicalConditions\":[\"技术条件1\"],\"materialSpecification\":[\"技术规格1\"],\"singlePieceQuota\":[\"20\"],\"wasteLoss\":[\"10\"],\"modelSpecification\":[\"\"],\"remark\":[\"自制件备注1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-06 22:27:24',448),(106,'产品/零/组件信息',1,'com.ruoyi.system.controller.TProductComponentController.addSave()','POST',1,'admin','研发部门','/system/component/add','127.0.0.1','内网IP','{\"parentId\":[\"\"],\"productType\":[\"1\"],\"productMakeType\":[\"\"],\"productNum\":[\"22\"],\"productName\":[\"测试产品2\"],\"meterageUnit\":[\"套\"],\"assembleQuantity\":[\"222\"],\"specialItem\":[\"2000000\"],\"materialGrade\":[\"\"],\"technicalConditions\":[\"\"],\"materialSpecification\":[\"\"],\"singlePieceQuota\":[\"\"],\"wasteLoss\":[\"\"],\"modelSpecification\":[\"\"],\"remark\":[\"测试产品2\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-08 00:02:56',6667),(107,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/t_purchase_component','127.0.0.1','内网IP','\"t_purchase_component\"',NULL,0,NULL,'2023-03-12 11:46:09',2232),(108,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/t_tech_route','127.0.0.1','内网IP','\"t_tech_route\"',NULL,0,NULL,'2023-03-12 11:46:12',430),(109,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/t_purchase_component','127.0.0.1','内网IP','\"t_purchase_component\"',NULL,0,NULL,'2023-03-12 11:49:25',521),(110,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"4\"],\"tableName\":[\"t_purchase_component\"],\"tableComment\":[\"外购件信息表\"],\"className\":[\"TPurchaseComponent\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"60\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"外购件ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"purchaseId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"61\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"外购件名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"purchaseName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"62\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"型号规格\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"modelSpecification\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"63\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"计量单位\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"meterageUnit\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"64\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"单价\"],\"columns[4].javaType\":[\"BigDecimal\"],\"columns[4].javaField\":[\"price\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-12 11:55:03',907),(111,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/t_purchase_component','127.0.0.1','内网IP','\"t_purchase_component\"',NULL,0,NULL,'2023-03-12 11:57:46',336),(112,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/t_material_info','127.0.0.1','内网IP','\"t_material_info\"',NULL,0,NULL,'2023-03-12 12:09:19',1379),(113,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/t_tech_route','127.0.0.1','内网IP','\"t_tech_route\"',NULL,0,NULL,'2023-03-12 12:13:22',289),(114,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/t_tech_route','127.0.0.1','内网IP','\"t_tech_route\"',NULL,0,NULL,'2023-03-12 12:13:37',297),(115,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/t_tech_process','127.0.0.1','内网IP','\"t_tech_process\"',NULL,0,NULL,'2023-03-12 12:15:45',266),(116,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/t_tech_route','127.0.0.1','内网IP','\"t_tech_route\"',NULL,0,NULL,'2023-03-12 12:17:43',320),(117,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/t_tech_process','127.0.0.1','内网IP','\"t_tech_process\"',NULL,0,NULL,'2023-03-12 12:19:29',558),(118,'代码生成',8,'com.ruoyi.generator.controller.GenController.download()','GET',1,'admin','研发部门','/tool/gen/download/t_other_param','127.0.0.1','内网IP','\"t_other_param\"',NULL,0,NULL,'2023-03-12 12:24:30',232);
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2023-03-03 21:29:11','',NULL,''),(2,'se','项目经理',2,'0','admin','2023-03-03 21:29:11','',NULL,''),(3,'hr','人力资源',3,'0','admin','2023-03-03 21:29:11','',NULL,''),(4,'user','普通员工',4,'0','admin','2023-03-03 21:29:12','',NULL,'');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1','0','0','admin','2023-03-03 21:29:13','',NULL,'超级管理员'),(2,'普通角色','common',2,'2','0','0','admin','2023-03-03 21:29:13','',NULL,'普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,1),(2,2),(2,3),(2,4),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,109),(2,110),(2,111),(2,112),(2,113),(2,114),(2,115),(2,116),(2,500),(2,501),(2,1000),(2,1001),(2,1002),(2,1003),(2,1004),(2,1005),(2,1006),(2,1007),(2,1008),(2,1009),(2,1010),(2,1011),(2,1012),(2,1013),(2,1014),(2,1015),(2,1016),(2,1017),(2,1018),(2,1019),(2,1020),(2,1021),(2,1022),(2,1023),(2,1024),(2,1025),(2,1026),(2,1027),(2,1028),(2,1029),(2,1030),(2,1031),(2,1032),(2,1033),(2,1034),(2,1035),(2,1036),(2,1037),(2,1038),(2,1039),(2,1040),(2,1041),(2,1042),(2,1043),(2,1044),(2,1045),(2,1046),(2,1047),(2,1048),(2,1049),(2,1050),(2,1051),(2,1052),(2,1053),(2,1054),(2,1055),(2,1056),(2,1057),(2,1058),(2,1059),(2,1060),(2,1061);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','若依','00','ry@163.com','15888888888','1','','29c67a30398638269fe600f73a054934','111111','0','0','127.0.0.1','2023-03-12 12:28:24','2023-03-03 21:29:07','admin','2023-03-03 21:29:07','','2023-03-12 12:28:23','管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','8e6d98b90472783cc73c17047ddccf36','222222','0','0','127.0.0.1','2023-03-03 21:29:08','2023-03-03 21:29:08','admin','2023-03-03 21:29:08','',NULL,'测试员');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_online`
--

DROP TABLE IF EXISTS `sys_user_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='在线用户记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_online`
--

LOCK TABLES `sys_user_online` WRITE;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
INSERT INTO `sys_user_online` VALUES ('39ac98c9-887d-4cbc-a53a-d89ae3b0824e','admin','研发部门','127.0.0.1','内网IP','Firefox 11','Ubuntu','on_line','2023-03-12 11:40:44','2023-03-12 12:32:14',1800000);
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_material_info`
--

DROP TABLE IF EXISTS `t_material_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_material_info` (
  `material_id` bigint NOT NULL AUTO_INCREMENT COMMENT '原材料ID',
  `material_name` varchar(125) NOT NULL DEFAULT '' COMMENT '原材料名称',
  `material_grade` varchar(125) NOT NULL DEFAULT '' COMMENT '材料牌号',
  `technical_conditions` varchar(125) NOT NULL DEFAULT '' COMMENT '技术条件',
  `material_specification` varchar(125) NOT NULL DEFAULT '' COMMENT '材料规格',
  `meterage_unit` varchar(125) NOT NULL DEFAULT '' COMMENT '计量单位',
  `price` decimal(25,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `price_basis` varchar(125) NOT NULL DEFAULT '' COMMENT '价格依据',
  `supplier` varchar(255) NOT NULL DEFAULT '' COMMENT '供应商',
  `status` char(1) NOT NULL DEFAULT '' COMMENT '状态',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) NOT NULL DEFAULT '' COMMENT '预留字段1',
  `attr2` varchar(255) NOT NULL DEFAULT '' COMMENT '预留字段2',
  `attr3` int NOT NULL DEFAULT '0' COMMENT '预留字段3',
  `attr4` int NOT NULL DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `cteate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='原材料信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_material_info`
--

LOCK TABLES `t_material_info` WRITE;
/*!40000 ALTER TABLE `t_material_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_material_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_other_param`
--

DROP TABLE IF EXISTS `t_other_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_other_param` (
  `parameter_id` bigint NOT NULL AUTO_INCREMENT COMMENT '参数ID',
  `parameter_code` varchar(125) NOT NULL DEFAULT '' COMMENT '参数编号',
  `parameter_name` varchar(125) NOT NULL DEFAULT '' COMMENT '参数名称',
  `cost` decimal(25,2) NOT NULL DEFAULT '0.00' COMMENT '费用/费用率',
  `status` char(1) NOT NULL DEFAULT '' COMMENT '状态',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) NOT NULL DEFAULT '' COMMENT '预留字段1',
  `attr2` varchar(255) NOT NULL DEFAULT '' COMMENT '预留字段2',
  `attr3` int NOT NULL DEFAULT '0' COMMENT '预留字段3',
  `attr4` int NOT NULL DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `cteate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`parameter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='其他参数信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_other_param`
--

LOCK TABLES `t_other_param` WRITE;
/*!40000 ALTER TABLE `t_other_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_other_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_product_component`
--

DROP TABLE IF EXISTS `t_product_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_product_component` (
  `product_id` bigint NOT NULL AUTO_INCREMENT COMMENT '产品ID',
  `parent_id` bigint NOT NULL DEFAULT '0' COMMENT '父节点ID',
  `is_parent` int NOT NULL DEFAULT '0' COMMENT '是否为父节点',
  `product_num` varchar(125) NOT NULL DEFAULT '' COMMENT '图号',
  `product_name` varchar(126) NOT NULL DEFAULT '' COMMENT '名称',
  `product_type` int NOT NULL DEFAULT '0' COMMENT '种类1: 产品，2：组件，3:零件',
  `product_make_type` int NOT NULL DEFAULT '0' COMMENT '制造方式',
  `meterage_unit` varchar(125) NOT NULL DEFAULT '' COMMENT '计量单位',
  `assemble_quantity` int NOT NULL DEFAULT '0' COMMENT '单套数量',
  `special_item` decimal(25,2) NOT NULL DEFAULT '0.00' COMMENT '专项费用',
  `material_grade` varchar(125) NOT NULL DEFAULT '' COMMENT '材料牌号',
  `technical_conditions` varchar(125) NOT NULL DEFAULT '' COMMENT '技术条件',
  `material_specification` varchar(125) NOT NULL DEFAULT '' COMMENT '材料规格',
  `single_piece_quota` decimal(25,2) NOT NULL DEFAULT '0.00' COMMENT '单件定额',
  `waste_loss` decimal(25,2) NOT NULL DEFAULT '0.00' COMMENT '废品损失金额',
  `model_specification` varchar(125) NOT NULL DEFAULT '' COMMENT '型号规格',
  `status` char(1) NOT NULL DEFAULT '' COMMENT '状态',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) NOT NULL DEFAULT '' COMMENT '预留字段1',
  `attr2` varchar(255) NOT NULL DEFAULT '' COMMENT '预留字段2',
  `attr3` int NOT NULL DEFAULT '0' COMMENT '预留字段3',
  `attr4` int NOT NULL DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `cteate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='产品/零/组件信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_product_component`
--

LOCK TABLES `t_product_component` WRITE;
/*!40000 ALTER TABLE `t_product_component` DISABLE KEYS */;
INSERT INTO `t_product_component` VALUES (1,0,0,'1','测试产品',1,2,'件',100,100000.00,'','','',0.00,0.00,'','','备注产品1','','',0,0,'','2023-03-06 22:25:42','','2023-03-06 22:25:42'),(2,1,0,'222','测试组件1',2,1,'套',20,200.00,'材料牌号1','技术条件1','技术规格1',20.00,10.00,'','','自制件备注1','','',0,0,'','2023-03-06 22:27:24','','2023-03-06 22:27:24'),(3,0,0,'22','测试产品2',1,0,'套',222,2000000.00,'','','',0.00,0.00,'','','测试产品2','','',0,0,'','2023-03-08 00:02:49','','2023-03-08 00:02:49');
/*!40000 ALTER TABLE `t_product_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_purchase_component`
--

DROP TABLE IF EXISTS `t_purchase_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_purchase_component` (
  `purchase_id` bigint NOT NULL AUTO_INCREMENT COMMENT '外购件ID',
  `purchase_name` varchar(125) NOT NULL DEFAULT '' COMMENT '外购件名称',
  `model_specification` varchar(125) NOT NULL DEFAULT '' COMMENT '型号规格',
  `meterage_unit` varchar(125) NOT NULL DEFAULT '' COMMENT '计量单位',
  `price` decimal(25,2) NOT NULL DEFAULT '0.00' COMMENT '单价',
  `price_basis` varchar(125) NOT NULL DEFAULT '' COMMENT '价格依据',
  `supplier` varchar(255) NOT NULL DEFAULT '' COMMENT '供应商',
  `status` char(1) NOT NULL DEFAULT '' COMMENT '状态',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) NOT NULL DEFAULT '' COMMENT '预留字段1',
  `attr2` varchar(255) NOT NULL DEFAULT '' COMMENT '预留字段2',
  `attr3` int NOT NULL DEFAULT '0' COMMENT '预留字段3',
  `attr4` int NOT NULL DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `cteate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='外购件信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_purchase_component`
--

LOCK TABLES `t_purchase_component` WRITE;
/*!40000 ALTER TABLE `t_purchase_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_purchase_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tech_process`
--

DROP TABLE IF EXISTS `t_tech_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_tech_process` (
  `process_id` bigint NOT NULL AUTO_INCREMENT COMMENT '工序ID',
  `route_id` bigint NOT NULL DEFAULT '0' COMMENT '工艺路线ID',
  `process_num` varchar(64) NOT NULL DEFAULT '' COMMENT '工序号',
  `process_name` varchar(125) NOT NULL DEFAULT '' COMMENT '工序名称',
  `is_outsource` int NOT NULL DEFAULT '0' COMMENT '是否外协',
  `outsource_price` decimal(25,2) NOT NULL DEFAULT '0.00' COMMENT '外协价格',
  `device` varchar(125) NOT NULL DEFAULT '' COMMENT '设备',
  `tool` varchar(125) NOT NULL DEFAULT '' COMMENT '工具',
  `work_hours` decimal(25,2) NOT NULL DEFAULT '0.00' COMMENT '生产工时',
  `process_description` varchar(255) NOT NULL DEFAULT '' COMMENT '工艺描述',
  `process_picture` varchar(255) NOT NULL DEFAULT '' COMMENT '工艺图纸路径',
  `status` char(1) NOT NULL DEFAULT '' COMMENT '状态',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) NOT NULL DEFAULT '' COMMENT '预留字段1',
  `attr2` varchar(255) NOT NULL DEFAULT '' COMMENT '预留字段2',
  `attr3` int NOT NULL DEFAULT '0' COMMENT '预留字段3',
  `attr4` int NOT NULL DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `cteate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='工序信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tech_process`
--

LOCK TABLES `t_tech_process` WRITE;
/*!40000 ALTER TABLE `t_tech_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_tech_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tech_route`
--

DROP TABLE IF EXISTS `t_tech_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_tech_route` (
  `route_id` bigint NOT NULL AUTO_INCREMENT COMMENT '工艺路线ID',
  `route_code` varchar(125) NOT NULL DEFAULT '' COMMENT '工艺路线编号',
  `route_name` varchar(125) NOT NULL DEFAULT '' COMMENT '工艺路线名称',
  `status` char(1) NOT NULL DEFAULT '' COMMENT '状态',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `attr1` varchar(64) NOT NULL DEFAULT '' COMMENT '预留字段1',
  `attr2` varchar(255) NOT NULL DEFAULT '' COMMENT '预留字段2',
  `attr3` int NOT NULL DEFAULT '0' COMMENT '预留字段3',
  `attr4` int NOT NULL DEFAULT '0' COMMENT '预留字段4',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `cteate_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='工艺路线信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tech_route`
--

LOCK TABLES `t_tech_route` WRITE;
/*!40000 ALTER TABLE `t_tech_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_tech_route` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-12 12:52:30
