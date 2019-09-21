prompt --application/pages/page_00068
begin
wwv_flow_api.create_page(
 p_id=>68
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'GS Inspections'
,p_step_title=>'GS Inspections'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(15904210384314369)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'function Print(){document.body.offsetHeight;window.print()}',
'</script>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-buttons {  ',
'    margin-left: 8px;  ',
'}  ',
'.a-IRR-buttons, .a-IRR-controls {  ',
'    display: block;  ',
'    float: left;  ',
'}'))
,p_step_template=>wwv_flow_api.id(92909427627059975)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190918194204'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19723425771262793)
,p_plug_name=>'Gig Sheet Inspection List'
,p_region_name=>'IL'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   apex_item.checkbox (1,detail_id) id_chkbx,',
'   DETAIL_ID, ',
'   SEQUENCE_NUMBER, ',
'   INSPECTION_TASK, ',
'   ACCESSORY_GROUP, ',
'   ACCESSORY, ',
'   MANDATORY_YN, ',
'   HELP_LINK, ',
'   STATUS, ',
'   NA_YN',
'FROM ',
'   bg_qcis.QCIS_GS_DETAIL',
'WHERE HEADER_ID = :P68_HEADER_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P68_HEADER_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P68_HEADER_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>Gig Sheet Inspection List</b></div> ',
'<br></br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(13786967220045002)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Inspection Detail Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP::'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Click to Edit Inspection Details."'
,p_owner=>'DGRUGINS'
,p_internal_uid=>2495618824711018
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13787084185045003)
,p_db_column_name=>'ID_CHKBX'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'<input type="checkbox" id="selectunselectall">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'IL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13787243796045004)
,p_db_column_name=>'DETAIL_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Detail Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13787274820045005)
,p_db_column_name=>'SEQUENCE_NUMBER'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sequence Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13787366840045006)
,p_db_column_name=>'INSPECTION_TASK'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Inspection Task'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13787490841045007)
,p_db_column_name=>'ACCESSORY_GROUP'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Accessory Group'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13787614322045008)
,p_db_column_name=>'ACCESSORY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Accessory'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13787651007045009)
,p_db_column_name=>'MANDATORY_YN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Mandatory'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(15976633719645764)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13787847166045010)
,p_db_column_name=>'HELP_LINK'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Help Link'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13787929423045011)
,p_db_column_name=>'STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(14145662564783579)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13787994805045012)
,p_db_column_name=>'NA_YN'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'N/A'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(15976633719645764)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(14039747213062691)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'27484'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CHKBX:SEQUENCE_NUMBER:STATUS:INSPECTION_TASK:MANDATORY_YN:NA_YN:HELP_LINK:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19732734502263105)
,p_plug_name=>'Inspection Details'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 16px; color: steelblue"><b>Inspection Details</b></div>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20105832218690810)
,p_plug_name=>'Audit Info'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90715316556242450)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(178860848267800891)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708438328242439)
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14043996420250689)
,p_button_sequence=>5
,p_button_plug_id=>wwv_flow_api.id(178860848267800891)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'Back'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:&G_CALLING_PAGE.:&SESSION.::&DEBUG.:::'
,p_button_cattributes=>'title="Back Inspection List Page"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13973246966896998)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(178860848267800891)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23242337267915426)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13971955177896996)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(178860848267800891)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(23268169427683534)
,p_button_image_alt=>'Save'
,p_button_position=>'BOTTOM'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13974448225896998)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(178860848267800891)
,p_button_name=>'PRINT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_image_alt=>'Print'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:Print();'
,p_button_condition=>'P68_HEADER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-print'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13968454983896993)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(19723425771262793)
,p_button_name=>'REOPEN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_image_alt=>'Re-Open'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13968934943896993)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(19723425771262793)
,p_button_name=>'GOOD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_image_alt=>'Good'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_condition=>'P68_STATUS'
,p_button_condition2=>'C'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-thumbs-o-up'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13969334047896993)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(19723425771262793)
,p_button_name=>'REPAIRED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_image_alt=>'Repaired'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_condition=>'P68_STATUS'
,p_button_condition2=>'C'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-clipboard-check'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13969715273896993)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(19723425771262793)
,p_button_name=>'SHORT_STOCK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_image_alt=>'Short Stock'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_condition=>'P68_STATUS'
,p_button_condition2=>'C'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-range-chart-area'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13970085710896994)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(19723425771262793)
,p_button_name=>'SS_TO_GOOD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_image_alt=>'SS > Good'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_condition=>'P68_STATUS'
,p_button_condition2=>'C'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-clipboard-check-alt'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13970525628896994)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(19723425771262793)
,p_button_name=>'N_A'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_image_alt=>'N/A'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_condition=>'P68_STATUS'
,p_button_condition2=>'C'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-clipboard-clock'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13967662798896992)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_api.id(19723425771262793)
,p_button_name=>'OK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'OK-All Complete'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_condition=>'(:P0_ALL_COMPLETE_YN = ''Y'') and (:P68_STATUS != ''C'')'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_icon_css_classes=>'fa-check'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(13991877216897018)
,p_branch_name=>'Go To Page 22'
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(13973246966896998)
,p_branch_sequence=>30
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(13992344471897018)
,p_branch_name=>'Go To Page 68'
,p_branch_action=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(17475575576074364)
,p_branch_sequence=>40
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13975102075896999)
,p_name=>'P68_BRAND_ID'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Brand'
,p_source=>'BRAND_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BRAND'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT BRAND_CODE||'' - ''||BRAND_NAME display_value, QCIS_BRAND_MASTER_ID return_value ',
'from QCIS_BRAND_MASTER',
'where INACTIVE_DATE IS NULL order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13975486671897000)
,p_name=>'P68_PLANT_ID'
,p_item_sequence=>41
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_source=>'PLANT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13975903106897000)
,p_name=>'P68_SEQUENCE_NBR'
,p_item_sequence=>81
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Seq #:'
,p_source=>'SEQUENCE_NBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>5
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13976270976897000)
,p_name=>'P68_MODEL_ID'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Model'
,p_source=>'MODEL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MODEL_YEAR || '' - ''||  MODEL_NAME d, MODEL_MASTER_ID r',
'FROM bg_qcis.QCIS_MODEL_MASTER'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13976670076897001)
,p_name=>'P68_HULL_NUMBER'
,p_item_sequence=>101
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hull'
,p_source=>'HULL_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13977144532897001)
,p_name=>'P68_HIN'
,p_item_sequence=>111
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'HIN'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BM.HIN HIN ',
'from QCIS_BOAT_MASTER BM, qcis_inspection_header ih',
'where BM.ORDER_NUMBER = ih.order_number and',
':P68_HEADER_ID = ih.header_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13977534745897002)
,p_name=>'P68_ORDER_NUMBER'
,p_item_sequence=>121
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Number'
,p_source=>'ORDER_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13977923475897002)
,p_name=>'P68_ACC_GROUP'
,p_item_sequence=>131
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_source=>'ACC_GROUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13978254238897003)
,p_name=>'P68_ACCESSORY'
,p_item_sequence=>141
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_source=>'ACCESSORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13978695575897003)
,p_name=>'P68_STATION_ID'
,p_item_sequence=>151
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Station'
,p_source=>'STATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STATION_CODE || '' - '' || STATION_NAME d,',
'     STATION_MASTER_ID  r',
'FROM bg_qcis.QCIS_STATION_MASTER '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13979115760897003)
,p_name=>'P68_SUBSTATION_ID'
,p_item_sequence=>161
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Substation'
,p_source=>'SUBSTATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTATION_CODE || '' - '' || SUBSTATION_NAME d,',
'     SUBSTATION_ID  r',
'FROM bg_qcis.QCIS_SUBSTATION ',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13979510616897004)
,p_name=>'P68_INSPECT_NAME_ID'
,p_item_sequence=>171
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inspection'
,p_post_element_text=>'&nbsp;&nbsp;'
,p_source=>'INSPECT_NAME_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INSPECTION_NAME, INSPECT_NAME_ID',
'FROM bg_qcis.QCIS_INSPECTION_NAMES '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13979939012897004)
,p_name=>'P68_INSPECTOR_ID'
,p_item_sequence=>181
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inspector'
,p_source=>'INSPECTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13980273631897004)
,p_name=>'P68_STATUS'
,p_item_sequence=>91
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS_INSPECTIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select keyword_value d, keyword_code r',
'from   qcis_keywords',
'where keyword_type=''Status_Inspections''',
'order by 1'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13980652465897004)
,p_name=>'P68_DEFECT_HEADER_ID'
,p_item_sequence=>211
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_source=>'DEFECT_HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13981071509897005)
,p_name=>'P68_MANDATORY_YN'
,p_item_sequence=>201
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mandatory'
,p_source=>'MANDATORY_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15976633719645764)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13981496644897005)
,p_name=>'P68_EMAIL_ALERT_GROUP'
,p_item_sequence=>221
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_source=>'EMAIL_ALERT_GROUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13981860265897005)
,p_name=>'P68_RESPONSIBLE_AREA'
,p_item_sequence=>191
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Responsible Area'
,p_post_element_text=>'&nbsp;&nbsp;'
,p_source=>'RESPONSIBLE_AREA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13983026192897007)
,p_name=>'P68_LAST_UPDATE_DATE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(20105832218690810)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Update Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13983379100897007)
,p_name=>'P68_LAST_UPDATED_BY'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(20105832218690810)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13983830658897008)
,p_name=>'P68_CREATION_DATE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(20105832218690810)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Create Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13984208687897008)
,p_name=>'P68_CREATED_BY'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(20105832218690810)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13984581277897008)
,p_name=>'P68_HEADER_ID'
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_api.id(19732734502263105)
,p_use_cache_before_default=>'NO'
,p_source=>'HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13985897713897010)
,p_computation_sequence=>1
,p_computation_item=>'P18_DETAIL_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14075010988290289)
,p_name=>'SELECT_UNSELECT Inspect Check Box'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#IL'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14075425948290290)
,p_event_id=>wwv_flow_api.id(14075010988290289)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#IL #selectunselectall'' ).is('':checked'') ) {',
'  $(''#IL  input[type=checkbox][name=f01]'').prop(''checked'',true);',
'} else {',
'  $(''#IL  input[type=checkbox][name=f01]'').prop(''checked'',false);',
'}'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13986219865897010)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_INSPECTION_HEADER'
,p_attribute_02=>'QCIS_INSPECTION_HEADER'
,p_attribute_03=>'P68_HEADER_ID'
,p_attribute_04=>'HEADER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13986556880897012)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select QCIS_INSPECT_HDR_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P68_HEADER_ID := get_pk; ',
'end; '))
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13987006622897013)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of QCIS_INSPECTION_HEADER'
,p_attribute_02=>'QCIS_INSPECTION_HEADER'
,p_attribute_03=>'P68_HEADER_ID'
,p_attribute_04=>'HEADER_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table QCIS_INSPECTION_HEADER.'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13988224159897014)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'All Complete Button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    UPDATE QCIS_GS_DETAIL',
'    SET STATUS = ''C'', ',
'    GOOD_DATE = SYSDATE, GOOD_USERNAME = :APP_USER, ',
'    LAST_UPDATE_DATE = SYSDATE, LAST_UPDATED_BY = :APP_USER',
'    WHERE HEADER_ID = :P68_HEADER_ID and',
'    STATUS = ''I'' and NA_YN = ''N'' and MANDATORY_YN = ''Y'' ;'))
,p_process_when_button_id=>wwv_flow_api.id(17475575576074364)
,p_process_success_message=>'All tasks for this inspection not marked No Good, SS, N/A were marked Complete.'
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13990630090897016)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Good Button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  FOR I in 1..APEX_APPLICATION.G_f01.COUNT LOOP',
'    UPDATE QCIS_GS_DETAIL',
'       SET STATUS = ''C'', ',
'           GOOD_DATE = SYSDATE, ',
'           GOOD_USERNAME = :APP_USER, ',
'           LAST_UPDATE_DATE = SYSDATE, ',
'           LAST_UPDATED_BY = :APP_USER',
'     WHERE DETAIL_ID = TO_NUMBER(Apex_Application.g_f01(i)) ',
'       and (STATUS in (''I'',''O'') and NA_YN = ''N'') ;      ',
'  END LOOP;'))
,p_process_when_button_id=>wwv_flow_api.id(21349161154205105)
,p_process_success_message=>'Selected Rows Marked Complete.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13988605599897014)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Repaired Button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  FOR I in 1..APEX_APPLICATION.G_f01.COUNT LOOP',
'    UPDATE QCIS_GS_DETAIL',
'    SET STATUS = ''R'', REPAIR_DATE = SYSDATE, REPAIR_USERNAME = :APP_USER, LAST_UPDATE_DATE = SYSDATE, LAST_UPDATED_BY = :APP_USER',
'    WHERE DETAIL_ID = TO_NUMBER(Apex_Application.g_f01(i)) and STATUS = ''O'' ;      ',
'  END LOOP;'))
,p_process_when_button_id=>wwv_flow_api.id(17475164017061519)
,p_process_success_message=>'Selected Rows Marked Complete.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13989002775897015)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Short Stock Button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  FOR I in 1..APEX_APPLICATION.G_f01.COUNT LOOP',
'    UPDATE QCIS_GS_DETAIL',
'    SET STATUS = ''S'', SS_DATE = SYSDATE, SS_USERNAME = :APP_USER, LAST_UPDATE_DATE = SYSDATE, LAST_UPDATED_BY = :APP_USER',
'    WHERE DETAIL_ID = TO_NUMBER(Apex_Application.g_f01(i)) and (STATUS != ''S'') ;      ',
'  END LOOP;'))
,p_process_when_button_id=>wwv_flow_api.id(13969715273896993)
,p_process_success_message=>'Selected Rows Marked Complete.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13990230555897016)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SS to Good Button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  FOR I in 1..APEX_APPLICATION.G_f01.COUNT LOOP',
'    UPDATE QCIS_GS_DETAIL',
'    SET STATUS = ''I'', SS_DATE = SYSDATE, SS_USERNAME = :APP_USER, LAST_UPDATE_DATE = SYSDATE, LAST_UPDATED_BY = :APP_USER',
'    WHERE DETAIL_ID = TO_NUMBER(Apex_Application.g_f01(i)) and (STATUS = ''S'') ;      ',
'  END LOOP;'))
,p_process_when_button_id=>wwv_flow_api.id(13970085710896994)
,p_process_success_message=>'Selected Rows Marked Complete.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13991400982897017)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ReOpen Button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  FOR I in 1..APEX_APPLICATION.G_f01.COUNT LOOP',
'    UPDATE QCIS_GS_DETAIL',
'       SET STATUS = ''I'', ',
'       GOOD_DATE = NULL, ',
'       GOOD_USERNAME = NULL, ',
'       NA_YN = ''N'',',
'       NA_DATE = NULL,',
'       NA_USERNAME = NULL,',
'       LAST_UPDATE_DATE = SYSDATE, ',
'       LAST_UPDATED_BY = :APP_USER',
'      WHERE DETAIL_ID = TO_NUMBER(Apex_Application.g_f01(i)) ',
'       and (STATUS = ''C'') ;      ',
'  END LOOP;'))
,p_process_when_button_id=>wwv_flow_api.id(22739362010281553)
,p_process_success_message=>'Selected Rows Marked Complete.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13989395224897015)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'N/A Button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  FOR I in 1..APEX_APPLICATION.G_f01.COUNT LOOP',
'    UPDATE QCIS_GS_DETAIL',
'    SET STATUS = ''C'', NA_YN = ''Y'', NA_DATE = SYSDATE, NA_USERNAME = :APP_USER, LAST_UPDATE_DATE = SYSDATE, LAST_UPDATED_BY = :APP_USER',
'    WHERE DETAIL_ID = TO_NUMBER(Apex_Application.g_f01(i)) and (STATUS = ''I'') ;      ',
'  END LOOP;'))
,p_process_when_button_id=>wwv_flow_api.id(13970525628896994)
,p_process_success_message=>'Selected Rows Marked Complete.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13989832616897015)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Inspection Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'',
'BEGIN',
'',
'  inspection_utilities.update_inspection_status (:P68_HEADER_ID);',
'',
'END;'))
);
end;
/
