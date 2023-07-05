IF NOT EXISTS (SELECT * FROM sysobjects WHERE ID = OBJECT_ID(N'[central_data_check_levels].[vw_supplier_info_v2]') AND OBJECTPROPERTY(id, N'IsView') = 1)
BEGIN
	EXEC('
CREATE VIEW [central_data_check_levels].[vw_supplier_info_v2]

AS

SELECT

    ROW_NUMBER() OVER (ORDER BY ds.id ) AS unique_search_id,

    ds.id AS id,

    ds.ap_supplier_id AS Supplier_ID,

    ds.name AS Supplier_Name,

    dc.country AS Country_Region,

    dsi.Supplier_Capability,

    dc1.name AS Level_1,

    dc2.name AS Level_2,

    dc3.name AS Level_3,

    dsi.supplier_additional_info,

    da.address,

    dct.website,

    dct.phone,

    dct.key_contact_name,

    dct.email,

    ds.ap_preferred,

    ds.updated_date AS HighWatermarkColumn

FROM central_data_check_levels.dim_supplier ds

LEFT JOIN central_data_check_levels.address_supplier_mapping asm ON asm.supplier_id = ds.id

LEFT outer JOIN central_data_check_levels.dim_supplier_info dsi ON ds.id = dsi.supplier_id and dsi.address_supplier_mapping_id= asm.id

LEFT JOIN central_data_check_levels.dim_address da ON asm.address_id = da.id

LEFT JOIN central_data_check_levels.dim_country dc ON dc.id = da.country_id

LEFT outer JOIN central_data_check_levels.category_supplier_mapping csm ON csm.supplier_id = ds.id and (csm.address_supplier_mapping_id=asm.id or (csm.address_supplier_mapping_id is null and asm.id is null))

LEFT JOIN central_data_check_levels.dim_category_level dcl ON dcl.id = csm.category_level_id

LEFT JOIN central_data_check_levels.dim_category dc1 ON dc1.id = dcl.level_1_category_id

LEFT JOIN central_data_check_levels.dim_category dc2 ON dc2.id = dcl.level_2_category_id

LEFT JOIN central_data_check_levels.dim_category dc3 ON dc3.id = dcl.level_3_category_id

LEFT JOIN central_data_check_levels.dim_contact dct ON dct.supplier_id = ds.id and (dct.address_supplier_mapping_id=asm.id or (dct.address_supplier_mapping_id is null and asm.id is null))

where dsi.delete_flag is null

group by

    ds.id ,ds.ap_supplier_id,ds.name,dc.country,dsi.Supplier_Capability,dc1.name,dc2.name,dc3.name,

    dct.email,ds.ap_preferred,ds.updated_date,da.address,dct.website,    dct.phone,    dct.key_contact_name,dsi.supplier_additional_info;

 ')
END



 