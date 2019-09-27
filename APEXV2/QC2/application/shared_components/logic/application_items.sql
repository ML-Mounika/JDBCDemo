prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(90733743761528463)
,p_name=>'BADGE_CLASS_HELLO'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(90737836314572120)
,p_name=>'BADGE_CLASS_NOTIFICATIONS'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(89661246192243683)
,p_name=>'EDIT_HELP'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(9897246195891231)
,p_name=>'G_ACTUAL_PAGE'
,p_protection_level=>'N'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(9897478265893676)
,p_name=>'G_CALLING_PAGE'
,p_protection_level=>'N'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(11413287829219489)
,p_name=>'G_CURRENT_LOCATION_FORMATTED'
,p_protection_level=>'I'
,p_item_comment=>'contains user''s current location plant code and name.'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(12663547809777892)
,p_name=>'G_DEFAULT_BRAND_ID'
,p_protection_level=>'N'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(12666537982693684)
,p_name=>'G_DEFAULT_DIVISION_ID'
,p_protection_level=>'N'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(4738697744036733)
,p_name=>'G_DEFAULT_LOCATION_ID'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(4738272095029166)
,p_name=>'G_DEFAULT_LOC_CODE'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(12663710003781477)
,p_name=>'G_DEFAULT_MODEL_ID'
,p_protection_level=>'N'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(9661300483311663)
,p_name=>'G_DEFAULT_PLANT_ID'
,p_protection_level=>'I'
,p_item_comment=>'Holds User''s Default QCIS Plant ID'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(10327287917809917)
,p_name=>'G_FILE_ID'
,p_protection_level=>'N'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(14217248037492815)
,p_name=>'G_MARINE_DIVISION_TYPE'
,p_protection_level=>'N'
,p_item_comment=>'Indicates if the Plant is a BBG or BME Plant'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(15628301120275035)
,p_name=>'G_NAV_BAR_SELECTION'
,p_protection_level=>'N'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(9964044054151389)
,p_name=>'G_REFRESH_HOME'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(16493296046953214)
,p_name=>'G_SFM_FLAG'
,p_protection_level=>'N'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(4738468779034132)
,p_name=>'G_SUPER_USER'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(11684867047791928)
,p_name=>'G_TT_BACK_BUTT'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(11684487560789187)
,p_name=>'G_TT_CAN_BUTT'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(11685440431800607)
,p_name=>'G_TT_SAVE_BUTT'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(4737847963023598)
,p_name=>'G_USER_ID'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(4738017044026228)
,p_name=>'G_USER_OID'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(90105543384118502)
,p_name=>'HOT'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(90105738329119383)
,p_name=>'NEUTRAL'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(80658140132972319)
,p_name=>'NOTIFICATIONS'
,p_protection_level=>'I'
);
end;
/
