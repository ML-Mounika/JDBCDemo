prompt --application/shared_components/user_interface/lovs/a_i_status
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(23698221007378716)
,p_lov_name=>'A_I_STATUS'
,p_lov_query=>'.'||wwv_flow_api.id(23698221007378716)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(23698544746378717)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Active'
,p_lov_return_value=>'A'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(23698916214378718)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Inactive'
,p_lov_return_value=>'I'
);
end;
/
