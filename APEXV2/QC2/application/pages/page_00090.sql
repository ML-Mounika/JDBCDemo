prompt --application/pages/page_00090
begin
wwv_flow_api.create_page(
 p_id=>90
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Pin Maps - Draft List'
,p_page_mode=>'MODAL'
,p_step_title=>'Pin Maps - Draft List'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'.a-IRR-buttons {  ',
'    margin-left: 8px;  ',
'}  ',
'.a-IRR-buttons, .a-IRR-controls {  ',
'    display: block;  ',
'    float: left;  ',
'}'))
,p_step_template=>wwv_flow_api.id(90704752091242393)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'775'
,p_dialog_width=>'1300'
,p_dialog_css_classes=>'no-close'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190830122215'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63799033341327280)
,p_plug_name=>'PM - IM IR'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''fa-copy'' CLONE,',
'       dr.header_id                                            header,',
'       (SELECT bm.brand_code',
'          FROM qcis_brand_master bm',
'         WHERE bm.qcis_brand_master_id = dr.brand_id)          brd,',
'       (SELECT dm.division_code',
'          FROM qcis_division_master dm',
'         WHERE dm.qcis_division_master_id = dr.division_id)    div,',
'       :G_DEFAULT_LOCATION_CODE          plt,',
'       m.model_year MODEL_YEAR,',
'       m.model_name model,',
'       dr.acc_group                                            grp,',
'       dr.accessory                                            acc,',
'       (SELECT sh.station_code || ''-'' || sh.station_name',
'          FROM qcis_station_master sh',
'         WHERE sh.station_master_id = dr.station_id)           station,',
'       (SELECT ss.substation_code || ''-'' || ss.substation_name',
'          FROM qcis_substation ss',
'         WHERE ss.substation_id = dr.substation_id)            substation,',
'       dr.inactive_date,',
'       im.image_name,',
'       inn.inspection_name,',
'       dr.white_space_yn,',
'       dr.column_qty,',
'       dr.row_qty,',
'       dr.x_start,',
'       dr.y_start,',
'       dr.x_end,',
'       dr.y_end,',
'       dr.CREATION_DATE,',
'       dr.CREATED_BY,',
'       dr.LAST_UPDATE_DATE,',
'       dr.LAST_UPDATED_BY',
'  FROM QCIS_IM_TEMPLATE_DRAFT     dr,',
'       QCIS_IMAGES                im,',
'       QCIS_INSPECTION_NAMES      inn,',
'       BG_QCIS.QCIS_MODEL_MASTER  m',
' WHERE     im.images_id = dr.image_id',
'       AND inn.inspect_name_id = dr.INSPECT_NAME_ID',
'       AND dr.PLANT_ID = :G_DEFAULT_PLANT_ID',
'       AND MAP_TYPE = ''P''',
'       AND m.PLANT_ID = dr.PLANT_ID',
'       AND dr.MODEL_ID = m.MODEL_MASTER_ID',
'       AND m.INACTIVE_DATE IS NULL'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Pin Map Draft List</b></div> '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(63799114276327280)
,p_name=>'IM - IM IR'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.:RP,81:P81_HEADER_ID:#HEADER#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Click to Edit IM Draft."'
,p_owner=>'TBOWERS'
,p_internal_uid=>52507765880993296
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37712980990498515)
,p_db_column_name=>'HEADER'
,p_display_order=>10
,p_column_identifier=>'Y'
,p_column_label=>'Header ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37713778042498517)
,p_db_column_name=>'DIV'
,p_display_order=>20
,p_column_identifier=>'AA'
,p_column_label=>'Division'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37714191437498517)
,p_db_column_name=>'PLT'
,p_display_order=>30
,p_column_identifier=>'AB'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37713433926498516)
,p_db_column_name=>'BRD'
,p_display_order=>40
,p_column_identifier=>'Z'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37714639964498519)
,p_db_column_name=>'MODEL'
,p_display_order=>50
,p_column_identifier=>'AC'
,p_column_label=>'Model'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37715044299498520)
,p_db_column_name=>'GRP'
,p_display_order=>60
,p_column_identifier=>'AD'
,p_column_label=>'Grp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37715380321498520)
,p_db_column_name=>'ACC'
,p_display_order=>70
,p_column_identifier=>'AE'
,p_column_label=>'Acc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37715823916498521)
,p_db_column_name=>'STATION'
,p_display_order=>80
,p_column_identifier=>'AF'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37716152425498521)
,p_db_column_name=>'SUBSTATION'
,p_display_order=>90
,p_column_identifier=>'AG'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37716615350498522)
,p_db_column_name=>'IMAGE_NAME'
,p_display_order=>100
,p_column_identifier=>'AH'
,p_column_label=>'Image Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37716989373498523)
,p_db_column_name=>'INSPECTION_NAME'
,p_display_order=>110
,p_column_identifier=>'AI'
,p_column_label=>'Inspection Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37719415831498526)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37710174434498510)
,p_db_column_name=>'WHITE_SPACE_YN'
,p_display_order=>130
,p_column_identifier=>'R'
,p_column_label=>'White Space Yn'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37710613584498511)
,p_db_column_name=>'COLUMN_QTY'
,p_display_order=>140
,p_column_identifier=>'S'
,p_column_label=>'Column Qty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37710972580498512)
,p_db_column_name=>'ROW_QTY'
,p_display_order=>150
,p_column_identifier=>'T'
,p_column_label=>'Row Qty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37711409952498513)
,p_db_column_name=>'X_START'
,p_display_order=>160
,p_column_identifier=>'U'
,p_column_label=>'X Start'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37711784273498514)
,p_db_column_name=>'Y_START'
,p_display_order=>170
,p_column_identifier=>'V'
,p_column_label=>'Y Start'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37712191862498514)
,p_db_column_name=>'X_END'
,p_display_order=>180
,p_column_identifier=>'W'
,p_column_label=>'X End'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37712555518498515)
,p_db_column_name=>'Y_END'
,p_display_order=>190
,p_column_identifier=>'X'
,p_column_label=>'Y End'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37717439664498523)
,p_db_column_name=>'MODEL_YEAR'
,p_display_order=>200
,p_column_identifier=>'AJ'
,p_column_label=>'Model Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37717812919498524)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>210
,p_column_identifier=>'AK'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37718170540498524)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>220
,p_column_identifier=>'AL'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37718638238498525)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>230
,p_column_identifier=>'AM'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37718975498498525)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>240
,p_column_identifier=>'AN'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37784754711255389)
,p_db_column_name=>'CLONE'
,p_display_order=>250
,p_column_identifier=>'AO'
,p_column_label=>'Clone'
,p_column_link=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:RP::'
,p_column_linktext=>'<span class = "fa #CLONE#  fa-1x"</span>'
,p_column_link_attr=>'TITLE="Click to Clone an Pin Map Inspection from #MODEL_YEAR#-#MODEL# to Another Model."'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(63807511280352700)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'264284'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CLONE:BRD:DIV:MODEL_YEAR:MODEL:STATION:SUBSTATION:IMAGE_NAME:INSPECTION_NAME:INACTIVE_DATE:CREATION_DATE:CREATED_BY:LAST_UPDATE_DATE:LAST_UPDATED_BY:'
,p_sort_column_1=>'BRD'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'MODEL_YEAR'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'MODEL'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'STATION'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'SUBSTATION'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'INSPECTION_NAME'
,p_sort_direction_6=>'ASC'
,p_break_on=>'0:BRD:DIV:MODEL_YEAR:MODEL:0'
,p_break_enabled_on=>'0:BRD:DIV:MODEL_YEAR:MODEL:0'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(37871773008059819)
,p_report_id=>wwv_flow_api.id(63807511280352700)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'INACTIVE_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"INACTIVE_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73911920110505924)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708438328242439)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(90743924126242860)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90737983207242537)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37724056834512757)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(73911920110505924)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'title="Naviagate back to Template Maintenance."'
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37720596287498531)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(63799033341327280)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23269156853683540)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.:RP,201::'
,p_button_css_classes=>'title="Click to Create New Pin Map Draft."'
,p_button_cattributes=>'title="Refresh and Create Another Model."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37348801277937719)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(37724056834512757)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37348893682937720)
,p_event_id=>wwv_flow_api.id(37348801277937719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
end;
/
