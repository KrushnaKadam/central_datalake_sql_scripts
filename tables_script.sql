-- DROP SCHEMA central_data_check_levels;


IF (NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'central_data_check_levels')) 
BEGIN
    EXEC ('CREATE SCHEMA central_data_check_levels')
END;
-- central_data_check_levels.address_supplier_mapping definition

-- Drop table

-- DROP TABLE central_data_check_levels.address_supplier_mapping;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'address_supplier_mapping') CREATE TABLE central_data_check_levels.address_supplier_mapping (
	id int IDENTITY(1,1) NOT NULL,
	supplier_id int NULL,
	address_id int NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	manufacturing_location_id int NULL,
	CONSTRAINT PK__address___3213E83FF0AD8215 PRIMARY KEY (id)
);


-- central_data_check_levels.category_supplier_mapping definition

-- Drop table

-- DROP TABLE central_data_check_levels.category_supplier_mapping;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'category_supplier_mapping') CREATE TABLE central_data_check_levels.category_supplier_mapping (
	id int IDENTITY(1,1) NOT NULL,
	category_level_id int NOT NULL,
	supplier_id int NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	address_supplier_mapping_id int NULL,
	CONSTRAINT PK__category__3213E83F7B559E29 PRIMARY KEY (id)
);


-- central_data_check_levels.commodity_price definition

-- Drop table

-- DROP TABLE central_data_check_levels.commodity_price;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'commodity_price') CREATE TABLE central_data_check_levels.commodity_price (
	commodity_id int NOT NULL,
	value numeric(20,8) NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	calendar_id int NULL,
	id int IDENTITY(1,1) NOT NULL,
	CONSTRAINT PK__commodit__3213E83F94874DC6 PRIMARY KEY (id)
);


-- central_data_check_levels.company_imports definition

-- Drop table

-- DROP TABLE central_data_check_levels.company_imports;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'company_imports') CREATE TABLE central_data_check_levels.company_imports (
	id int IDENTITY(1,1) NOT NULL,
	company_id int NULL,
	metric_tons real NULL,
	[date] int NULL,
	database_region_id int NULL,
	supplier_type_id int NULL,
	is_logistic bit NULL,
	hs_id int NULL,
	country_of_origin_id int NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	shipper_id int NULL,
	shipper_address_id int NULL,
	consinee_address_id int NULL,
	competitor_supplier_mapping_id int NULL,
	CONSTRAINT PK__competit__3213E83F794B228C PRIMARY KEY (id)
);


-- central_data_check_levels.competitor_supplier_mapping definition

-- Drop table

-- DROP TABLE central_data_check_levels.competitor_supplier_mapping;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'competitor_supplier_mapping') CREATE TABLE central_data_check_levels.competitor_supplier_mapping (
	id int IDENTITY(1,1) NOT NULL,
	supplier_id int NULL,
	competitor_id int NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	CONSTRAINT PK__supplier__3213E83F4FC2E142 PRIMARY KEY (id)
);


-- central_data_check_levels.cost_estimation_formula definition

-- Drop table

-- DROP TABLE central_data_check_levels.cost_estimation_formula;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'cost_estimation_formula') CREATE TABLE central_data_check_levels.cost_estimation_formula (
	id int IDENTITY(1,1) NOT NULL,
	project_id int NOT NULL,
	section_id int NULL,
	subsection_id int NULL,
	formula_name varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	formula varchar(1025) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	value decimal(18,4) NULL,
	internal_order int NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	subsection_final_formula int NULL,
	element_id int NULL,
	items_names varchar(250) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	subsection_formula int NULL,
	CONSTRAINT PK_cost_est_formula_id PRIMARY KEY (id)
);


-- central_data_check_levels.cost_estimation_summary definition

-- Drop table

-- DROP TABLE central_data_check_levels.cost_estimation_summary;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'cost_estimation_summary') CREATE TABLE central_data_check_levels.cost_estimation_summary (
	id int IDENTITY(1,1) NOT NULL,
	section_id int NOT NULL,
	subsection_id int NULL,
	index_ticker varchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	value decimal(18,5) NOT NULL,
	fiscal_year int NOT NULL,
	fiscal_month int NOT NULL,
	project_id int NULL,
	simplified_project_id int NULL,
	[date] date NULL,
	CONSTRAINT PK__cost_est__3213E83FD3607F06 PRIMARY KEY (id)
);


-- central_data_check_levels.dim_address definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_address;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_address') CREATE TABLE central_data_check_levels.dim_address (
	id int IDENTITY(1,1) NOT NULL,
	country_id int NULL,
	state_id int NULL,
	city_id int NULL,
	address nvarchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	region_id int NULL,
	pincode varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	CONSTRAINT PK__dim_addr__3213E83F96D49B26 PRIMARY KEY (id)
);


-- central_data_check_levels.dim_article definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_article;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_article') CREATE TABLE central_data_check_levels.dim_article (
	id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	description varchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ah3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	category_ah4 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	subcategory_ah5 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	details_ah6 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	vendor_id int NULL,
	CONSTRAINT PK__dim_arti__3213E83F97D99A94 PRIMARY KEY (id)
);


-- central_data_check_levels.dim_calendar definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_calendar;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_calendar') CREATE TABLE central_data_check_levels.dim_calendar (
	calendar_month_first_day date NULL,
	fiscal_year int NULL,
	fiscal_quarter varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fiscal_month int NULL,
	fiscal_week int NULL,
	fiscal_month_first_date date NULL,
	fiscal_year_label varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	day_of_week varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	id int IDENTITY(1,1) NOT NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	date_number int NULL,
	calendar_year int NOT NULL,
	calendar_month int NOT NULL,
	calendar_quarter int NOT NULL,
	CONSTRAINT PK__dim_cale__3213E83F93DEDBA2 PRIMARY KEY (id)
);


-- central_data_check_levels.dim_category definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_category;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_category') CREATE TABLE central_data_check_levels.dim_category (
	id int IDENTITY(1,1) NOT NULL,
	name nvarchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	CONSTRAINT PK__dim_cate__3213E83FE64E42CF PRIMARY KEY (id),
	CONSTRAINT UQ__dim_cate__72E12F1B32101CD0 UNIQUE (name)
);


-- central_data_check_levels.dim_category_level definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_category_level;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_category_level') CREATE TABLE central_data_check_levels.dim_category_level (
	id int IDENTITY(1,1) NOT NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	level_1_category_id int NULL,
	level_2_category_id int NULL,
	level_3_category_id int NULL,
	CONSTRAINT PK__dim_cate__3213E83F207A7B58 PRIMARY KEY (id)
);


-- central_data_check_levels.dim_city definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_city;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_city') CREATE TABLE central_data_check_levels.dim_city (
	id int IDENTITY(1,1) NOT NULL,
	city nvarchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	CONSTRAINT PK__dim_city__3213E83F4EA33F91 PRIMARY KEY (id)
);


-- central_data_check_levels.dim_commodity definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_commodity;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_commodity') CREATE TABLE central_data_check_levels.dim_commodity (
	id int NOT NULL,
	level_1 varchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	level_2 varchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	level_3 varchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	description varchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	series_specific varchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	index_ticker varchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	units varchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	level_4 varchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	data_source varchar(50) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	CONSTRAINT PK_commodities_id PRIMARY KEY (id),
	CONSTRAINT UQ_index_ticker UNIQUE (index_ticker)
);


-- central_data_check_levels.dim_contact definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_contact;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_contact') CREATE TABLE central_data_check_levels.dim_contact (
	id int IDENTITY(1,1) NOT NULL,
	key_contact_name nvarchar(400) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	phone nvarchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	email nvarchar(500) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	website nvarchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	created_date datetime NULL,
	supplier_id int NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	address_supplier_mapping_id int NULL,
	person_role varchar(200) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	CONSTRAINT PK__dim_cont__3213E83F0C0087A2 PRIMARY KEY (id)
);


-- central_data_check_levels.dim_conversion_library definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_conversion_library;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_conversion_library') CREATE TABLE central_data_check_levels.dim_conversion_library (
	id int IDENTITY(1,1) NOT NULL,
	industry varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	application varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	name varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	process varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	description varchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	value_final decimal(18,6) NULL,
	comments varchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	data_source varchar(50) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	country_id int NULL,
	order_type_id int NULL,
	CONSTRAINT PK_dim_conv_lib_id PRIMARY KEY (id)
);


-- central_data_check_levels.dim_cost_estimation_commodities definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_cost_estimation_commodities;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_cost_estimation_commodities') CREATE TABLE central_data_check_levels.dim_cost_estimation_commodities (
	id int IDENTITY(1,1) NOT NULL,
	project_id int NOT NULL,
	subsection_id int NULL,
	variable_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	value decimal(18,2) NULL,
	internal_order int NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	section_id int NULL,
	commodities_id int NULL,
	lookup_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	order_type_id int NULL,
	CONSTRAINT PK_dim_cost_est_comm_id PRIMARY KEY (id)
);


-- central_data_check_levels.dim_cost_estimation_conversion definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_cost_estimation_conversion;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_cost_estimation_conversion') CREATE TABLE central_data_check_levels.dim_cost_estimation_conversion (
	id int IDENTITY(1,1) NOT NULL,
	project_id int NOT NULL,
	section_id int NULL,
	subsection_id int NULL,
	conversion_library_id int NOT NULL,
	adjusted_value decimal(18,4) NULL,
	internal_order int NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	variable_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	value decimal(18,4) NULL,
	lookup_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK_dim_cost_est_conv_id PRIMARY KEY (id)
);


-- central_data_check_levels.dim_cost_estimation_machine definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_cost_estimation_machine;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_cost_estimation_machine') CREATE TABLE central_data_check_levels.dim_cost_estimation_machine (
	id int IDENTITY(1,1) NOT NULL,
	project_id int NOT NULL,
	section_id int NULL,
	subsection_id int NULL,
	machine_library_id int NOT NULL,
	machine_library_field varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	variable_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adjusted_value decimal(18,5) NULL,
	internal_order int NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	value decimal(18,4) NULL,
	order_type_id int NULL,
	CONSTRAINT PK_dim_cost_est_mach_id PRIMARY KEY (id)
);


-- central_data_check_levels.dim_cost_estimation_tariff definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_cost_estimation_tariff;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_cost_estimation_tariff') CREATE TABLE central_data_check_levels.dim_cost_estimation_tariff (
	id int IDENTITY(1,1) NOT NULL,
	project_id int NOT NULL,
	section_id int NULL,
	subsection_id int NULL,
	tariff_id int NULL,
	variable_name varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	value decimal(18,4) NULL,
	internal_order int NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adjusted_value decimal(18,4) NULL,
	lookup_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	order_type_id int NULL,
	CONSTRAINT PK_dim_cost_est_tariff_id PRIMARY KEY (id)
);


-- central_data_check_levels.dim_country definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_country;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_country') CREATE TABLE central_data_check_levels.dim_country (
	id int IDENTITY(1,1) NOT NULL,
	iso2 varchar(4) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	country nvarchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	CONSTRAINT PK__dim_coun__3213E83F9EC03F6A PRIMARY KEY (id)
);


-- central_data_check_levels.dim_database_region definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_database_region;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_database_region') CREATE TABLE central_data_check_levels.dim_database_region (
	id int IDENTITY(1,1) NOT NULL,
	database_region varchar(50) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	CONSTRAINT PK__dim_data__3213E83FC2CA8FD2 PRIMARY KEY (id)
);


-- central_data_check_levels.dim_element definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_element;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_element') CREATE TABLE central_data_check_levels.dim_element (
	id int IDENTITY(1,1) NOT NULL,
	project_id int NOT NULL,
	name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	internal_order int NOT NULL,
	packaging_flag bit NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK_dim_element_id PRIMARY KEY (id)
);


-- central_data_check_levels.dim_hs definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_hs;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_hs') CREATE TABLE central_data_check_levels.dim_hs (
	id int IDENTITY(1,1) NOT NULL,
	hs_code_heading nvarchar(25) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	hs_code_sub_heading nvarchar(25) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	description varchar(200) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	hs_code int NULL,
	hs_level_1_id int NULL,
	hs_level_2_id int NULL,
	hs_level_3_id int NULL,
	hs_level_4_id int NULL,
	hs_level_5_id int NULL,
	hs_level_6_id int NULL,
	CONSTRAINT PK__dim_hs__3213E83F654608EE PRIMARY KEY (id)
);


-- central_data_check_levels.dim_hs_description definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_hs_description;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_hs_description') CREATE TABLE central_data_check_levels.dim_hs_description (
	id int IDENTITY(1,1) NOT NULL,
	hs_code int NOT NULL,
	hs_description varchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	hs_code_heading nvarchar(25) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	hs_code_sub_heading nvarchar(25) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	CONSTRAINT PK__dim_hs_d__3213E83F7DF305BC PRIMARY KEY (id)
);


-- central_data_check_levels.dim_machine_library definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_machine_library;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_machine_library') CREATE TABLE central_data_check_levels.dim_machine_library (
	id int NOT NULL,
	name nvarchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	details nvarchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	application nvarchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	machine_cost decimal(10,2) NULL,
	lifespan decimal(5,2) NULL,
	throughput_minute decimal(10,2) NULL,
	energy_consumption_kwh decimal(10,2) NULL,
	operator_ftes_per_line decimal(6,2) NULL,
	supervisor_fte_per_line decimal(6,2) NULL,
	scrap decimal(4,2) NULL,
	[attribute] varchar(50) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	hours_per_day decimal(4,2) NULL,
	days_per_week decimal(4,2) NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by nvarchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	country_id int NULL,
	CONSTRAINT PK_dim_machine_library_sweet PRIMARY KEY (id)
);


-- central_data_check_levels.dim_order_type definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_order_type;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_order_type') CREATE TABLE central_data_check_levels.dim_order_type (
	id int IDENTITY(1,1) NOT NULL,
	unit_of_measure varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	CONSTRAINT PK__dim_orde__3213E83FD3D82773 PRIMARY KEY (id),
	CONSTRAINT UQ__dim_orde__ECA5170B4C229B78 UNIQUE (unit_of_measure)
);


-- central_data_check_levels.dim_project definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_project;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_project') CREATE TABLE central_data_check_levels.dim_project (
	id int IDENTITY(1,1) NOT NULL,
	name varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	article_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	status varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	industry varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	application varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	parent_project_id int NULL,
	project_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_final bit DEFAULT 0 NULL,
	parent_project_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	country_id int NULL,
	CONSTRAINT PK_dim_project_id PRIMARY KEY (id)
);


-- central_data_check_levels.dim_project_cost_details definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_project_cost_details;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_project_cost_details') CREATE TABLE central_data_check_levels.dim_project_cost_details (
	id int IDENTITY(1,1) NOT NULL,
	project_id int NULL,
	element_id int NULL,
	section_id int NULL,
	subsection_id int NULL,
	type_id int NULL,
	tb_id int NULL,
	variable_name varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	value decimal(18,4) NULL,
	adjusted_value decimal(18,4) NULL,
	index_spec varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	comments varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	final_formula int NULL,
	internal_order int NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_packaging int NULL,
	formula varchar(2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tb_ref_id int NULL,
	items_names varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	subsection_formula int NULL,
	should_cost decimal(18,4) NULL,
	linked_sku int NULL,
	order_type_id int NULL,
	CONSTRAINT PK_dim_project_cost_details_id PRIMARY KEY (id)
);


-- central_data_check_levels.dim_region definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_region;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_region') CREATE TABLE central_data_check_levels.dim_region (
	id int IDENTITY(1,1) NOT NULL,
	region nvarchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	CONSTRAINT PK__dim_regi__3213E83FF5BBE08B PRIMARY KEY (id)
);


-- central_data_check_levels.dim_risk definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_risk;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_risk') CREATE TABLE central_data_check_levels.dim_risk (
	id int IDENTITY(1,1) NOT NULL,
	risk_type varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	risk_description varchar(MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	CONSTRAINT PK__dim_risk__3213E83FD4227648 PRIMARY KEY (id)
);


-- central_data_check_levels.dim_section definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_section;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_section') CREATE TABLE central_data_check_levels.dim_section (
	id int IDENTITY(1,1) NOT NULL,
	name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	internal_order int NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK_dim_section_id PRIMARY KEY (id)
);


-- central_data_check_levels.dim_spec_material definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_spec_material;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_spec_material') CREATE TABLE central_data_check_levels.dim_spec_material (
	id int IDENTITY(1,1) NOT NULL,
	element_id int NOT NULL,
	specification varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	additional_description varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	internal_order int NULL,
	variable_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	value decimal(18,4) NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_date date NULL,
	updated_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	subsection_id int NULL,
	order_type_id int NULL,
	CONSTRAINT PK_dim_spec_material_id PRIMARY KEY (id)
);


-- central_data_check_levels.dim_state definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_state;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_state') CREATE TABLE central_data_check_levels.dim_state (
	id int IDENTITY(1,1) NOT NULL,
	state nvarchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	CONSTRAINT PK__dim_stat__3213E83FF4BCCA1C PRIMARY KEY (id)
);


-- central_data_check_levels.dim_subsection definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_subsection;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_subsection') CREATE TABLE central_data_check_levels.dim_subsection (
	id int IDENTITY(1,1) NOT NULL,
	element_id int NOT NULL,
	section_id int NOT NULL,
	name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	internal_order int NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK_dim_subsection_id PRIMARY KEY (id)
);


-- central_data_check_levels.dim_supplier definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_supplier;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_supplier') CREATE TABLE central_data_check_levels.dim_supplier (
	id int IDENTITY(1,1) NOT NULL,
	name nvarchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	ap_supplier_id nvarchar(50) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	supplier_type varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	ap_preferred bit NULL,
	CONSTRAINT PK__dim_supp__3213E83F4E385595 PRIMARY KEY (id)
);


-- central_data_check_levels.dim_supplier_info definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_supplier_info;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_supplier_info') CREATE TABLE central_data_check_levels.dim_supplier_info (
	id int IDENTITY(1,1) NOT NULL,
	key_categories nvarchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	supplier_additional_info nvarchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	supplier_catalogue nvarchar(MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	supplier_capability nvarchar(MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	detailed_table nvarchar(MAX) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	[source] nvarchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	key_customers nvarchar(4000) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	supplier_recognition nvarchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	supplier_id int NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	delete_flag bit NULL,
	address_supplier_mapping_id int NULL,
	CONSTRAINT PK__dim_supp__3213E83FA9178ACC PRIMARY KEY (id)
);


-- central_data_check_levels.dim_supplier_type definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_supplier_type;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_supplier_type') CREATE TABLE central_data_check_levels.dim_supplier_type (
	id int IDENTITY(1,1) NOT NULL,
	datamyne_supplier_type varchar(250) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	CONSTRAINT PK__dim_supp__3213E83F1B3F99D0 PRIMARY KEY (id)
);


-- central_data_check_levels.dim_tariff definition

-- Drop table

-- DROP TABLE central_data_check_levels.dim_tariff;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'dim_tariff') CREATE TABLE central_data_check_levels.dim_tariff (
	id int IDENTITY(1,1) NOT NULL,
	level_1 varchar(500) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	level_2 varchar(500) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	level_3 varchar(500) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	level_4 varchar(500) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	level_5 varchar(500) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	level_6 varchar(500) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	description varchar(500) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	hts_code varchar(10) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NOT NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	country_id int NULL,
	CONSTRAINT PK_dim_tariff_id PRIMARY KEY (id)
);


-- central_data_check_levels.hs_supplier_mapping definition

-- Drop table

-- DROP TABLE central_data_check_levels.hs_supplier_mapping;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'hs_supplier_mapping') CREATE TABLE central_data_check_levels.hs_supplier_mapping (
	id int IDENTITY(1,1) NOT NULL,
	hs_id int NULL,
	supplier_id int NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	CONSTRAINT PK__hs_suppl__3213E83FF97FE6C1 PRIMARY KEY (id)
);


-- central_data_check_levels.revenue definition

-- Drop table

-- DROP TABLE central_data_check_levels.revenue;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'revenue') CREATE TABLE central_data_check_levels.revenue (
	id int IDENTITY(1,1) NOT NULL,
	revenue_millions nvarchar(255) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	supplier_id int NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	calendar_id int NULL,
	CONSTRAINT PK__dim_reve__3213E83FC7831F45 PRIMARY KEY (id)
);


-- central_data_check_levels.risk_score_supplier_mapping definition

-- Drop table

-- DROP TABLE central_data_check_levels.risk_score_supplier_mapping;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'risk_score_supplier_mapping') CREATE TABLE central_data_check_levels.risk_score_supplier_mapping (
	id int IDENTITY(1,1) NOT NULL,
	supplier_id int NULL,
	risk_id int NULL,
	risk_score float NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	CONSTRAINT PK__risk_sco__3213E83F728E488B PRIMARY KEY (id)
);


-- central_data_check_levels.tariff definition

-- Drop table

-- DROP TABLE central_data_check_levels.tariff;


IF NOT EXISTS (
 SELECT TABLE_SCHEMA, TABLE_NAME
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'central_data_check_levels'
 AND TABLE_NAME = 'tariff') CREATE TABLE central_data_check_levels.tariff (
	tariff_id int NOT NULL,
	value decimal(18,4) NULL,
	created_date datetime NULL,
	created_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	updated_date datetime NULL,
	updated_by varchar(100) COLLATE Latin1_General_100_CI_AI_SC_UTF8 NULL,
	calendar_id int NOT NULL,
	CONSTRAINT PK_target_tariff PRIMARY KEY (calendar_id,tariff_id)
);



