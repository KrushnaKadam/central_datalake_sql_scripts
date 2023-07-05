


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__address_s__suppl__03DEB70F' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.address_supplier_mapping add constraint FK__address_s__suppl__03DEB70F FOREIGN KEY (supplier_id) references central_data_check_levels.dim_supplier(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__address_s__addre__04D2DB48' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.address_supplier_mapping add constraint FK__address_s__addre__04D2DB48 FOREIGN KEY (address_id) references central_data_check_levels.dim_address(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__address_s__manuf__055CEB2D' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.address_supplier_mapping add constraint FK__address_s__manuf__055CEB2D FOREIGN KEY (manufacturing_location_id) references central_data_check_levels.dim_address(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__category___categ__31A581BF' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.category_supplier_mapping add constraint FK__category___categ__31A581BF FOREIGN KEY (category_level_id) references central_data_check_levels.dim_category_level(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__category___suppl__3299A5F8' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.category_supplier_mapping add constraint FK__category___suppl__3299A5F8 FOREIGN KEY (supplier_id) references central_data_check_levels.dim_supplier(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__category___addre__2239EC54' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.category_supplier_mapping add constraint FK__category___addre__2239EC54 FOREIGN KEY (address_supplier_mapping_id) references central_data_check_levels.address_supplier_mapping(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_target_commodities_commodity_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.commodity_price add constraint FK_target_commodities_commodity_id FOREIGN KEY (commodity_id) references central_data_check_levels.dim_commodity(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__commodity__calen__50E922EE' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.commodity_price add constraint FK__commodity__calen__50E922EE FOREIGN KEY (calendar_id) references central_data_check_levels.dim_calendar(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__competito__compa__1D3474BE' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.company_imports add constraint FK__competito__compa__1D3474BE FOREIGN KEY (company_id) references central_data_check_levels.dim_supplier(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__competito__compa__3946A387' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.company_imports add constraint FK__competito__compa__3946A387 FOREIGN KEY (company_id) references central_data_check_levels.dim_supplier(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__competito__datab__3A3AC7C0' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.company_imports add constraint FK__competito__datab__3A3AC7C0 FOREIGN KEY (database_region_id) references central_data_check_levels.dim_database_region(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__competito__suppl__3B2EEBF9' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.company_imports add constraint FK__competito__suppl__3B2EEBF9 FOREIGN KEY (supplier_type_id) references central_data_check_levels.dim_supplier_type(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__competito__hs_id__3C231032' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.company_imports add constraint FK__competito__hs_id__3C231032 FOREIGN KEY (hs_id) references central_data_check_levels.dim_hs(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__competito__count__3D17346B' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.company_imports add constraint FK__competito__count__3D17346B FOREIGN KEY (country_of_origin_id) references central_data_check_levels.dim_country(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__competito__shipp__177B9B68' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.company_imports add constraint FK__competito__shipp__177B9B68 FOREIGN KEY (shipper_id) references central_data_check_levels.dim_supplier(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__competito__shipp__186FBFA1' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.company_imports add constraint FK__competito__shipp__186FBFA1 FOREIGN KEY (shipper_address_id) references central_data_check_levels.dim_address(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__competito__consi__1963E3DA' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.company_imports add constraint FK__competito__consi__1963E3DA FOREIGN KEY (consinee_address_id) references central_data_check_levels.dim_address(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__company_i__compe__1F1CBD30' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.company_imports add constraint FK__company_i__compe__1F1CBD30 FOREIGN KEY (competitor_supplier_mapping_id) references central_data_check_levels.competitor_supplier_mapping(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__supplier___suppl__41DBE988' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.competitor_supplier_mapping add constraint FK__supplier___suppl__41DBE988 FOREIGN KEY (supplier_id) references central_data_check_levels.dim_supplier(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__supplier___compe__42D00DC1' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.competitor_supplier_mapping add constraint FK__supplier___compe__42D00DC1 FOREIGN KEY (competitor_id) references central_data_check_levels.dim_supplier(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_cost_estimation_formula_project_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.cost_estimation_formula add constraint FK_cost_estimation_formula_project_id FOREIGN KEY (project_id) references central_data_check_levels.dim_project(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_cost_estimation_formula_section_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.cost_estimation_formula add constraint FK_cost_estimation_formula_section_id FOREIGN KEY (section_id) references central_data_check_levels.dim_section(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_cost_estimation_formula_subsection_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.cost_estimation_formula add constraint FK_cost_estimation_formula_subsection_id FOREIGN KEY (subsection_id) references central_data_check_levels.dim_subsection(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_cost_estimation_summary_section_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.cost_estimation_summary add constraint FK_cost_estimation_summary_section_id FOREIGN KEY (section_id) references central_data_check_levels.dim_section(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__cost_esti__subse__3911995D' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.cost_estimation_summary add constraint FK__cost_esti__subse__3911995D FOREIGN KEY (subsection_id) references central_data_check_levels.dim_subsection(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_cost_estimation_summary_project_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.cost_estimation_summary add constraint FK_cost_estimation_summary_project_id FOREIGN KEY (project_id) references central_data_check_levels.dim_project(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_addre__count__7F1A01F2' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_address add constraint FK__dim_addre__count__7F1A01F2 FOREIGN KEY (country_id) references central_data_check_levels.dim_country(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_addre__state__000E262B' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_address add constraint FK__dim_addre__state__000E262B FOREIGN KEY (state_id) references central_data_check_levels.dim_state(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_addre__city___01024A64' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_address add constraint FK__dim_addre__city___01024A64 FOREIGN KEY (city_id) references central_data_check_levels.dim_city(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_addre__regio__3CE22A41' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_address add constraint FK__dim_addre__regio__3CE22A41 FOREIGN KEY (region_id) references central_data_check_levels.dim_region(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_artic__vendo__75268364' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_article add constraint FK__dim_artic__vendo__75268364 FOREIGN KEY (vendor_id) references central_data_check_levels.dim_supplier(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_categ__level__0A21A04A' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_category_level add constraint FK__dim_categ__level__0A21A04A FOREIGN KEY (level_1_category_id) references central_data_check_levels.dim_category(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_categ__level__0B15C483' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_category_level add constraint FK__dim_categ__level__0B15C483 FOREIGN KEY (level_2_category_id) references central_data_check_levels.dim_category(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_categ__level__0C09E8BC' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_category_level add constraint FK__dim_categ__level__0C09E8BC FOREIGN KEY (level_3_category_id) references central_data_check_levels.dim_category(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_conta__suppl__7684BBF1' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_contact add constraint FK__dim_conta__suppl__7684BBF1 FOREIGN KEY (supplier_id) references central_data_check_levels.dim_supplier(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_conta__addre__06510F66' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_contact add constraint FK__dim_conta__addre__06510F66 FOREIGN KEY (address_supplier_mapping_id) references central_data_check_levels.address_supplier_mapping(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_conve__count__2EC91514' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_conversion_library add constraint FK__dim_conve__count__2EC91514 FOREIGN KEY (country_id) references central_data_check_levels.dim_country(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_conve__order__74325F2B' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_conversion_library add constraint FK__dim_conve__order__74325F2B FOREIGN KEY (order_type_id) references central_data_check_levels.dim_order_type(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_dim_cost_estimation_commodities_subsection_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_commodities add constraint FK_dim_cost_estimation_commodities_subsection_id FOREIGN KEY (subsection_id) references central_data_check_levels.dim_subsection(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_dim_cost_estimation_commodities_section_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_commodities add constraint FK_dim_cost_estimation_commodities_section_id FOREIGN KEY (section_id) references central_data_check_levels.dim_section(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_cost___commo__3A05BD96' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_commodities add constraint FK__dim_cost___commo__3A05BD96 FOREIGN KEY (commodities_id) references central_data_check_levels.dim_commodity(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_cost___order__7061CE47' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_commodities add constraint FK__dim_cost___order__7061CE47 FOREIGN KEY (order_type_id) references central_data_check_levels.dim_order_type(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_dim_cost_estimation_conversion_project_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_conversion add constraint FK_dim_cost_estimation_conversion_project_id FOREIGN KEY (project_id) references central_data_check_levels.dim_project(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_dim_cost_estimation_conversion_section_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_conversion add constraint FK_dim_cost_estimation_conversion_section_id FOREIGN KEY (section_id) references central_data_check_levels.dim_section(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_dim_cost_estimation_conversion_subsection_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_conversion add constraint FK_dim_cost_estimation_conversion_subsection_id FOREIGN KEY (subsection_id) references central_data_check_levels.dim_subsection(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_cost___conve__0F1B5F91' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_conversion add constraint FK__dim_cost___conve__0F1B5F91 FOREIGN KEY (conversion_library_id) references central_data_check_levels.dim_conversion_library(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_cost___proje__5E782836' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_machine add constraint FK__dim_cost___proje__5E782836 FOREIGN KEY (project_id) references central_data_check_levels.dim_project(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_dim_cost_estimation_machine_section_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_machine add constraint FK_dim_cost_estimation_machine_section_id FOREIGN KEY (section_id) references central_data_check_levels.dim_section(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_dim_cost_estimation_machine_subsection_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_machine add constraint FK_dim_cost_estimation_machine_subsection_id FOREIGN KEY (subsection_id) references central_data_check_levels.dim_subsection(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_cost___machi__100F83CA' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_machine add constraint FK__dim_cost___machi__100F83CA FOREIGN KEY (machine_library_id) references central_data_check_levels.dim_machine_library(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_cost___order__724A16B9' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_machine add constraint FK__dim_cost___order__724A16B9 FOREIGN KEY (order_type_id) references central_data_check_levels.dim_order_type(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_dim_cost_estimation_tariff_project_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_tariff add constraint FK_dim_cost_estimation_tariff_project_id FOREIGN KEY (project_id) references central_data_check_levels.dim_project(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_dim_cost_estimation_tariff_section_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_tariff add constraint FK_dim_cost_estimation_tariff_section_id FOREIGN KEY (section_id) references central_data_check_levels.dim_section(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_dim_cost_estimation_tariff_subsection_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_tariff add constraint FK_dim_cost_estimation_tariff_subsection_id FOREIGN KEY (subsection_id) references central_data_check_levels.dim_subsection(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_cost___tarif__1103A803' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_tariff add constraint FK__dim_cost___tarif__1103A803 FOREIGN KEY (tariff_id) references central_data_check_levels.dim_tariff(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_cost___order__7155F280' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_cost_estimation_tariff add constraint FK__dim_cost___order__7155F280 FOREIGN KEY (order_type_id) references central_data_check_levels.dim_order_type(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_dim_element_project_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_element add constraint FK_dim_element_project_id FOREIGN KEY (project_id) references central_data_check_levels.dim_project(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_hs__hs_level__11C2C212' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_hs add constraint FK__dim_hs__hs_level__11C2C212 FOREIGN KEY (hs_level_1_id) references central_data_check_levels.dim_hs_description(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_hs__hs_level__12B6E64B' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_hs add constraint FK__dim_hs__hs_level__12B6E64B FOREIGN KEY (hs_level_2_id) references central_data_check_levels.dim_hs_description(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_hs__hs_level__13AB0A84' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_hs add constraint FK__dim_hs__hs_level__13AB0A84 FOREIGN KEY (hs_level_3_id) references central_data_check_levels.dim_hs_description(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_hs__hs_level__149F2EBD' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_hs add constraint FK__dim_hs__hs_level__149F2EBD FOREIGN KEY (hs_level_4_id) references central_data_check_levels.dim_hs_description(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_hs__hs_level__159352F6' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_hs add constraint FK__dim_hs__hs_level__159352F6 FOREIGN KEY (hs_level_5_id) references central_data_check_levels.dim_hs_description(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_hs__hs_level__1687772F' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_hs add constraint FK__dim_hs__hs_level__1687772F FOREIGN KEY (hs_level_6_id) references central_data_check_levels.dim_hs_description(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_machi__count__2DD4F0DB' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_machine_library add constraint FK__dim_machi__count__2DD4F0DB FOREIGN KEY (country_id) references central_data_check_levels.dim_country(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_proje__artic__372950EB' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_project add constraint FK__dim_proje__artic__372950EB FOREIGN KEY (article_id) references central_data_check_levels.dim_article(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_proje__count__381D7524' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_project add constraint FK__dim_proje__count__381D7524 FOREIGN KEY (country_id) references central_data_check_levels.dim_country(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_proje__proje__5F6C4C6F' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_project_cost_details add constraint FK__dim_proje__proje__5F6C4C6F FOREIGN KEY (project_id) references central_data_check_levels.dim_project(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_central_data_check_levels_dim_project_cost_details_element_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_project_cost_details add constraint FK_central_data_check_levels_dim_project_cost_details_element_id FOREIGN KEY (element_id) references central_data_check_levels.dim_element(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_proje__secti__606070A8' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_project_cost_details add constraint FK__dim_proje__secti__606070A8 FOREIGN KEY (section_id) references central_data_check_levels.dim_section(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_central_data_check_levels_dim_project_cost_details_subsection_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_project_cost_details add constraint FK_central_data_check_levels_dim_project_cost_details_subsection_id FOREIGN KEY (subsection_id) references central_data_check_levels.dim_subsection(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_proje__order__733E3AF2' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_project_cost_details add constraint FK__dim_proje__order__733E3AF2 FOREIGN KEY (order_type_id) references central_data_check_levels.dim_order_type(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_dim_spec_material_element_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_spec_material add constraint FK_dim_spec_material_element_id FOREIGN KEY (element_id) references central_data_check_levels.dim_element(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_spec___subse__2B0A656D' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_spec_material add constraint FK__dim_spec___subse__2B0A656D FOREIGN KEY (subsection_id) references central_data_check_levels.dim_subsection(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_spec___order__6F6DAA0E' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_spec_material add constraint FK__dim_spec___order__6F6DAA0E FOREIGN KEY (order_type_id) references central_data_check_levels.dim_order_type(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_dim_subsection_element_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_subsection add constraint FK_dim_subsection_element_id FOREIGN KEY (element_id) references central_data_check_levels.dim_element(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_dim_subsection_section_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_subsection add constraint FK_dim_subsection_section_id FOREIGN KEY (section_id) references central_data_check_levels.dim_section(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_suppl__suppl__1C405085' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_supplier_info add constraint FK__dim_suppl__suppl__1C405085 FOREIGN KEY (supplier_id) references central_data_check_levels.dim_supplier(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_suppl__addre__232E108D' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_supplier_info add constraint FK__dim_suppl__addre__232E108D FOREIGN KEY (address_supplier_mapping_id) references central_data_check_levels.address_supplier_mapping(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_tarif__count__2CE0CCA2' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.dim_tariff add constraint FK__dim_tarif__count__2CE0CCA2 FOREIGN KEY (country_id) references central_data_check_levels.dim_country(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__hs_suppli__hs_id__1F86D184' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.hs_supplier_mapping add constraint FK__hs_suppli__hs_id__1F86D184 FOREIGN KEY (hs_id) references central_data_check_levels.dim_hs(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__hs_suppli__suppl__207AF5BD' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.hs_supplier_mapping add constraint FK__hs_suppli__suppl__207AF5BD FOREIGN KEY (supplier_id) references central_data_check_levels.dim_supplier(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_reven__suppl__70CBE29B' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.revenue add constraint FK__dim_reven__suppl__70CBE29B FOREIGN KEY (supplier_id) references central_data_check_levels.dim_supplier(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__dim_reven__calen__4853DCED' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.revenue add constraint FK__dim_reven__calen__4853DCED FOREIGN KEY (calendar_id) references central_data_check_levels.dim_calendar(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__risk_scor__suppl__4F00DA7C' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.risk_score_supplier_mapping add constraint FK__risk_scor__suppl__4F00DA7C FOREIGN KEY (supplier_id) references central_data_check_levels.dim_supplier(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__risk_scor__risk___4FF4FEB5' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.risk_score_supplier_mapping add constraint FK__risk_scor__risk___4FF4FEB5 FOREIGN KEY (risk_id) references central_data_check_levels.dim_risk(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK_target_tariff_tariff_id' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.tariff add constraint FK_target_tariff_tariff_id FOREIGN KEY (tariff_id) references central_data_check_levels.dim_tariff(id)


IF NOT EXISTS ( SELECT NULL 
    FROM information_schema.TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = 'central_data_check_levels' AND
        CONSTRAINT_NAME   = 'FK__tariff__calendar__53C58F99' AND
        CONSTRAINT_TYPE   = 'FOREIGN KEY'
        ) alter table central_data_check_levels.tariff add constraint FK__tariff__calendar__53C58F99 FOREIGN KEY (calendar_id) references central_data_check_levels.dim_calendar(id)