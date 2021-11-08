prompt --application/shared_components/navigation/lists/product_cards

begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(1449123942236691361)
,p_name=>'product cards'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null the_level, ',
'       label, ',
'      apex_util.prepare_url(''f?p=''||:APP_ID||'':1:''||:APP_SESSION||'':::1:P1_PRODUCT:''||id) target,',
'       ''YES'' is_current,',
'       null image,',
'       null image_attrib,',
'       null image_alt,',
'       decode(least(length_id,10),10,null,to_char(id)||'' '')||description a01,',
'       trim(to_char(open_bugs,''999G999G999G990'')) ||''/''||',
'           trim(to_char(bugs,''999G999G999G990''))||'' open (+''||',
'           trim(to_char(created_31,''999G999G999G990''))||'', -''|| ',
'           trim(to_char(closed_31,''999G999G999G990''))||'', total of ''||',
'           trim(to_char(NVL(created_31,0) - NVL(closed_31,0),''S999G999G999G990''))||'' for last 31 days)'' ca02,',
'       upper(',
'          decode(instr(label,'' ''),',
'                 0, ',
'                 substr(label,1,2),',
'                 substr(label,1,1)||substr(label,instr(label,'' '')+1,1)',
'           ))  a03',
'from',
'(',
'select',
'    length(id) length_id,',
'    ID,',
'    PRODUCT_NAME label,',
'    DESCRIPTION,',
'    decode(is_active,''Y'',''Yes'',''N'',''No'',is_active) IS_ACTIVE,',
'    --',
'    (select count(*) ',
'     from EBA_BT_SW_DEFECTS b ',
'     where b.PRODUCT_ID = p.id) bugs,',
'    --',
'    (select count(*) ',
'    from EBA_BT_SW_DEFECTS b ',
'    where b.PRODUCT_ID = p.id and',
'          status_id in (select id',
'          from eba_bt_status ',
'          where is_open = ''Y'')) open_bugs,',
'    --',
'    (select count(*) from EBA_BT_SW_DEFECTS b ',
'     where b.PRODUCT_ID = p.id and ',
'           is_active = ''Y'' and ',
'           created >= localtimestamp - 31) created_31,',
'    --',
'    (select count(*) from EBA_BT_SW_DEFECTS b ',
'     where b.PRODUCT_ID = p.id and ',
'           is_active = ''Y'' and ',
'           b.DATE_CLOSED >= localtimestamp - 31 and',
'           status_id in (select id from eba_bt_status where is_open = ''N'')',
'          ) closed_31',
'from EBA_BT_PRODUCT p',
') x',
'order by label',
''))
,p_list_status=>'PUBLIC'
);
end;
/
