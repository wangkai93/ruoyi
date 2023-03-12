-- t_product_component：产品/零/组件信息表
DROP TABLE IF EXISTS t_product_component;
CREATE TABLE t_product_component (
	product_id bigint PRIMARY KEY NOT NULL auto_increment COMMENT '产品ID',
	parent_id bigint NOT NULL default 0 COMMENT '父节点ID',
	is_parent int NOT NULL default 0 COMMENT '是否为父节点',
	product_num varchar(125) not null default '' COMMENT '图号',
	product_name varchar(126) not null default '' COMMENT '名称',
	product_type int NOT NULL default 0 COMMENT '种类1: 产品，2：组件，3:零件',
	product_make_type int NOT NULL default 0 COMMENT '制造方式',
	meterage_unit varchar(125) not null default '' COMMENT '计量单位',
	assemble_quantity int NOT NULL default 0 COMMENT '单套数量',
	special_item decimal(25, 2) NOT NULL default 0 COMMENT '专项费用',
	material_grade varchar(125) not null default '' COMMENT '材料牌号',
	technical_conditions varchar(125) not null default '' COMMENT '技术条件',
	material_specification varchar(125) not null default '' COMMENT '材料规格',
	single_piece_quota decimal(25, 2) NOT NULL default 0 COMMENT '单件定额',
	waste_loss decimal(25, 2) NOT NULL default 0  COMMENT  '废品损失金额',
	model_specification varchar(125) not null default '' COMMENT '型号规格',
	status char not null default '' COMMENT '状态',
	remark varchar(255) not null default '' COMMENT '备注',
	attr1 varchar(64) not null default '' COMMENT '预留字段1',
	attr2 varchar(255) not null default '' COMMENT '预留字段2',
	attr3 int NOT NULL default 0 COMMENT '预留字段3',
	attr4 int NOT NULL default 0 COMMENT '预留字段4',
	create_by varchar(64) not null default '' COMMENT '创建者',
	cteate_time datetime not null default current_timestamp COMMENT '创建时间',
	update_by varchar(64) not null default '' COMMENT '更新者',
	update_time	 datetime not null default current_timestamp on update current_timestamp COMMENT '更新时间'
) COMMENT = '产品/零/组件信息表';

-- t_purchase_component：外购件信息表
DROP TABLE IF EXISTS t_purchase_component;
CREATE TABLE t_purchase_component (
	purchase_id bigint PRIMARY KEY NOT NULL auto_increment COMMENT '外购件ID',
	purchase_name varchar(125) not null default '' COMMENT '外购件名称',
	model_specification varchar(125) not null default '' COMMENT '型号规格',
	meterage_unit varchar(125) not null default '' COMMENT '计量单位',
	price decimal(25, 2) NOT NULL default 0  COMMENT  '单价',
	price_basis varchar(125) not null default '' COMMENT '价格依据',
	supplier varchar(255) not null default '' COMMENT '供应商',
	status char not null default '' COMMENT '状态',
	remark varchar(255) not null default '' COMMENT '备注',
	attr1 varchar(64) not null default '' COMMENT '预留字段1',
	attr2 varchar(255) not null default '' COMMENT '预留字段2',
	attr3 int NOT NULL default 0 COMMENT '预留字段3',
	attr4 int NOT NULL default 0 COMMENT '预留字段4',
	create_by varchar(64) not null default '' COMMENT '创建者',
	cteate_time datetime not null default current_timestamp COMMENT '创建时间',
	update_by varchar(64) not null default '' COMMENT '更新者',
	update_time	 datetime not null default current_timestamp on update current_timestamp COMMENT '更新时间'
) COMMENT = '外购件信息表';

-- t_material_info：原材料信息表
DROP TABLE IF EXISTS t_material_info;
CREATE TABLE t_material_info (
	material_id bigint PRIMARY KEY NOT NULL auto_increment COMMENT '原材料ID',
	material_name varchar(125) not null default '' COMMENT '原材料名称',
	material_grade varchar(125) not null default '' COMMENT '材料牌号',
	technical_conditions varchar(125) not null default '' COMMENT '技术条件',
	material_specification varchar(125) not null default '' COMMENT '材料规格',
	meterage_unit varchar(125) not null default '' COMMENT '计量单位',
	price decimal(25, 2) NOT NULL default 0  COMMENT  '价格',
	price_basis varchar(125) not null default '' COMMENT '价格依据',
	supplier varchar(255) not null default '' COMMENT '供应商',
	status char not null default '' COMMENT '状态',
	remark varchar(255) not null default '' COMMENT '备注',
	attr1 varchar(64) not null default '' COMMENT '预留字段1',
	attr2 varchar(255) not null default '' COMMENT '预留字段2',
	attr3 int NOT NULL default 0 COMMENT '预留字段3',
	attr4 int NOT NULL default 0 COMMENT '预留字段4',
	create_by varchar(64) not null default '' COMMENT '创建者',
	cteate_time datetime not null default current_timestamp COMMENT '创建时间',
	update_by varchar(64) not null default '' COMMENT '更新者',
	update_time	 datetime not null default current_timestamp on update current_timestamp COMMENT '更新时间'
) COMMENT = '原材料信息表';

-- t_tech_route：工艺路线信息表
DROP TABLE IF EXISTS t_tech_route;
CREATE TABLE t_tech_route (
	route_id bigint PRIMARY KEY NOT NULL auto_increment COMMENT '工艺路线ID',
	route_code varchar(125) not null default '' COMMENT '工艺路线编号',
	route_name varchar(125) not null default '' COMMENT '工艺路线名称',
	status char not null default '' COMMENT '状态',
	remark varchar(255) not null default '' COMMENT '备注',
	attr1 varchar(64) not null default '' COMMENT '预留字段1',
	attr2 varchar(255) not null default '' COMMENT '预留字段2',
	attr3 int NOT NULL default 0 COMMENT '预留字段3',
	attr4 int NOT NULL default 0 COMMENT '预留字段4',
	create_by varchar(64) not null default '' COMMENT '创建者',
	cteate_time datetime not null default current_timestamp COMMENT '创建时间',
	update_by varchar(64) not null default '' COMMENT '更新者',
	update_time	 datetime not null default current_timestamp on update current_timestamp COMMENT '更新时间'
) COMMENT = '工艺路线信息表';

-- t_tech_process：工序信息表
DROP TABLE IF EXISTS t_tech_process;
CREATE TABLE t_tech_process (
	process_id bigint PRIMARY KEY NOT NULL auto_increment COMMENT '工序ID',
	route_id bigint NOT NULL default 0 COMMENT '工艺路线ID',
	process_num varchar(64) not null default '' COMMENT '工序号',
	process_name varchar(125) not null default '' COMMENT '工序名称',
	is_outsource int NOT NULL default 0 COMMENT '是否外协',
	outsource_price decimal(25, 2) NOT NULL default 0  COMMENT  '外协价格',
	device varchar(125) not null default '' COMMENT '设备',
	tool varchar(125) not null default '' COMMENT '工具',
	work_hours decimal(25, 2) NOT NULL default 0  COMMENT  '生产工时',
	process_description varchar(255) not null default '' COMMENT '工艺描述',
	process_picture varchar(255) not null default '' COMMENT '工艺图纸路径',
	status char not null default '' COMMENT '状态',
	remark varchar(255) not null default '' COMMENT '备注',
	attr1 varchar(64) not null default '' COMMENT '预留字段1',
	attr2 varchar(255) not null default '' COMMENT '预留字段2',
	attr3 int NOT NULL default 0 COMMENT '预留字段3',
	attr4 int NOT NULL default 0 COMMENT '预留字段4',
	create_by varchar(64) not null default '' COMMENT '创建者',
	cteate_time datetime not null default current_timestamp COMMENT '创建时间',
	update_by varchar(64) not null default '' COMMENT '更新者',
	update_time	 datetime not null default current_timestamp on update current_timestamp COMMENT '更新时间'
) COMMENT = '工序信息表';

-- t_other_param：其他参数信息表
DROP TABLE IF EXISTS t_other_param;
CREATE TABLE t_other_param (
	parameter_id bigint PRIMARY KEY NOT NULL auto_increment COMMENT '参数ID',
	parameter_code varchar(125) not null default '' COMMENT '参数编号',
	parameter_name varchar(125) not null default '' COMMENT '参数名称',
	cost decimal(25, 2) NOT NULL default 0  COMMENT  '费用/费用率',
	status char not null default '' COMMENT '状态',
	remark varchar(255) not null default '' COMMENT '备注',
	attr1 varchar(64) not null default '' COMMENT '预留字段1',
	attr2 varchar(255) not null default '' COMMENT '预留字段2',
	attr3 int NOT NULL default 0 COMMENT '预留字段3',
	attr4 int NOT NULL default 0 COMMENT '预留字段4',
	create_by varchar(64) not null default '' COMMENT '创建者',
	cteate_time datetime not null default current_timestamp COMMENT '创建时间',
	update_by varchar(64) not null default '' COMMENT '更新者',
	update_time	 datetime not null default current_timestamp on update current_timestamp COMMENT '更新时间'
) COMMENT = '其他参数信息表';
