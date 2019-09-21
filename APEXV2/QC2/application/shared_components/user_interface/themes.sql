prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(90738548662242611)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>75012138676745860
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(92909427627059975)
,p_default_dialog_template=>wwv_flow_api.id(90704752091242393)
,p_error_template=>wwv_flow_api.id(90702675954242391)
,p_printer_friendly_template=>wwv_flow_api.id(90706057914242396)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(90702675954242391)
,p_default_button_template=>wwv_flow_api.id(90737515645242533)
,p_default_region_template=>wwv_flow_api.id(90709650764242441)
,p_default_chart_template=>wwv_flow_api.id(90709650764242441)
,p_default_form_template=>wwv_flow_api.id(90709650764242441)
,p_default_reportr_template=>wwv_flow_api.id(90709650764242441)
,p_default_tabform_template=>wwv_flow_api.id(90709650764242441)
,p_default_wizard_template=>wwv_flow_api.id(90709650764242441)
,p_default_menur_template=>wwv_flow_api.id(90719730206242456)
,p_default_listr_template=>wwv_flow_api.id(90709650764242441)
,p_default_irr_template=>wwv_flow_api.id(90709385417242440)
,p_default_report_template=>wwv_flow_api.id(90727087126242477)
,p_default_label_template=>wwv_flow_api.id(90736939652242519)
,p_default_menu_template=>wwv_flow_api.id(90737983207242537)
,p_default_calendar_template=>wwv_flow_api.id(90738102925242551)
,p_default_list_template=>wwv_flow_api.id(90734395768242504)
,p_default_nav_list_template=>wwv_flow_api.id(90736390652242506)
,p_default_top_nav_list_temp=>wwv_flow_api.id(90736390652242506)
,p_default_side_nav_list_temp=>wwv_flow_api.id(90736099348242505)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(90708438328242439)
,p_default_dialogr_template=>wwv_flow_api.id(90708365363242438)
,p_default_option_label=>wwv_flow_api.id(90736939652242519)
,p_default_required_label=>wwv_flow_api.id(90737162602242520)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(90736248200242506)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>88
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#HAMMERJS_URL#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
