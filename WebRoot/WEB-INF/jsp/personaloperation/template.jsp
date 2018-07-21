<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>

</title>
    <script src="${pageContext.request.contextPath }/Scripts/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/Scripts/common.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/themes/default/easyui.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/themes/icon.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/Styles/default.css" rel="stylesheet" /> 
    <style type="text/css">
        a {
         color:black;
         text-decoration:none;
        }
        .wxts{
        	font-size: 10px;
        	color: #787878;
        	text-align:left;
        	text-indent:2em;
        }
        .wxts_title{
            margin-top: 15px;
        	font-size: 12px;
        	color: #787878;
        }
    </style>
    </head>
<body class="easyui-layout" >
	<div data-options="region:'center'" style="padding:5px;">
		<input type="hidden" id="personalid" value="${user.personalid }">
	    <!--查询条件-->
	    <div id="headerSearchPanel" class="easyui-panel">
	        <form id="fromSearch" onsubmit="return false;">
            <table>
                <tr>
                    <td>模板名称:</td>
                    <td>
                     	<input id="templatetitleName" name="templatetitleName" class="easyui-validatebox" style="width: 200px;" data-options="" />
                    </td>
                    <td>
                        <a href="javascript:;" class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="Search()">查询</a>
                        <a href="javascript:;" class="easyui-linkbutton" data-options="iconCls:'icon-clear'" onclick="Clear()">清空</a>
                    </td>
                </tr>
            </table>
        </form>
	    </div>
		<!--价格模板添加-->
	    <div id="dialgTemplateAddress" class="easyui-dialog" title="添加价格区域" style="width: 670px; height: 470px; padding: 10px; " data-options="modal:true,closed:true,vcenter:true,buttons:'#btnTemplatePrice'">
		        <form id="formTemplatePrice" onsubmit="return false;">
		        <input type="hidden" id="templateprice" name="templateprice" >
		            <table style="text-align: center;  margin: 10px;"  width="100%" height="110%" >
						<tr  >
							<td>模板标题</td>
							<td >
		                     	<input id="templatetitle" name="templatetitle" class="easyui-validatebox" style="width: 200px" />
		                    </td>
		                    <td>首重</td>
		                    <td>
		                     	<input id="templategoodsykg" name="templategoodsykg" class="easyui-numberbox" style="width: 200px" 
		                     		data-options="min:0,precision:2,suffix:'kg'"  />
		                    </td>
		                    
		                </tr>
		                <tr >
		                	<td>首重价格</td>
		                    <td >
		                     	<input id="templategoodsykgprice" name="templategoodsykgprice" class="easyui-numberbox" style="width: 200px" 
		                     		data-options="min:0,precision:2,suffix:'元'" />
		                    </td>
		                    <td>超出首重价格</td>
		                    <td  >
		                     	<input id="templateoverload" name="templateoverload" class="easyui-numberbox" style="width: 200px;" placeholder="每公斤收取多少元"
		                     		data-options="min:0,precision:2,suffix:'元/kg'" />
		                    </td>
		                </tr>
		                <tr  >
		                    <td>包装说明</td>
		                    <td colspan="3"  >
		                     	<textarea id="templatepacking" name="templatepacking" style="width:500px; height:60px;"  placeholder="示例：自费，或免费，可自行说明 200字以内"></textarea>
		                    </td>
		                </tr>
		                <tr>
		                    <td>选择省份</td>
		                    <td colspan="3"   >
		                     	<table style="  margin: 10px; width:500px; height:150px;"  id="middleArea"  >
		                     		
		                     	</table>
		                    </td>
		                </tr>
		            </table>
		        </form>
		        <div id="btnTemplatePrice">
		            <a href="javascript:void;" class="easyui-linkbutton" onclick="Submit()">提交</a>
		            <a href="javascript:void;" class="easyui-linkbutton" onclick="$('#dialgTemplateAddress').dialog('close'); return false;">取消</a>
		        </div>
	    	</div>
		
	    <!--数据列表-->
	    <table id="tbPersonalRegion"></table>
	</div> 
    
   
    <link href="layer/skin/layer.css" rel="stylesheet" />
    <script src="layer/layer.js"></script>
    <script src="Scripts/uploadfile.js"></script>
    <script type="text/javascript">
    <%-- var ftpurl = '<%=res.getString("QNURL")%>'; --%>
        $(function () {
            $('#headerSearchPanel').panel({
                title: '温馨提示：',
                width:'100%',
                height:'80'
                
                
            });
            //数据列表
            PersonalRegionDataInit();
           
            
           // loadDataQueryProvince();
        });
        
       
        //数据列表
        function PersonalRegionDataInit() {
            $('#tbPersonalRegion').datagrid({
                title: '地点信息',//文本标题
                url: 'selectAllTemplatePrice.do',//访问路径
                width: '100%',//显示宽度
                height: $(parent.document).find("#mainPanel").height() - 100 > 0 ? $(parent.document).find("#mainPanel").height() - 150 : 500, //高度
                nowrap: true,//在一行显示
                striped: true,//显示虚线在外框
                collapsible: false,//可折叠的
                remoteSort: true,//从服务器对数据进行排序
                fitColumns: true,//自动展开/收缩列的大小
                columns: [[
                    { field: 'cbx', checkbox: true },
                    { title: '模板标题', field: 'templatetitle', width: 180, align: 'center' },
                    { title: '首重', field: 'templategoodsykgprice', width: 100, align: 'center' ,formatter: function (value) {
                        if(value > 0){
                        	return value+"kg";
                        }else{
                        	return "0kg";
                        }
                    }},
					{ title: '价格', field: 'templategoodsykg', width: 100, align: 'center', formatter:function (value) {
                        if(value > 0){
                        	return value+"元";
                        }else{
                        	return "0元";
                        }
                        
                    }},
					{ title: '超出首重', field: 'templateoverload', width: 100, align: 'center' ,formatter:function (value) {
                        if(value > 0){
                        	return value+"元/kg";
                        }else{
                        	return "0元/kg";
                        }
                        
                    }},
					{
                        title: '说明', field: 'templatepacking', width: 300, align: 'center', formatter: function (value) {
                            value = decodeURIComponent(value);
                            /* if (value.length % 22 == 0) {
                                value = value.substr(0, 15) + "...";
                            } */
                            if (value.length > 60) {
                                value = value.substr(0, 60) + "...";
                            }
                            if(value == 'null'){
                           	 return "";
                           }
                            var operation = '<div style="width:98%;white-space:normal;"   >'+value+'<div>';
                            return operation;
                        }
                    },
                    {
                        title: '接管地区', field: 'province', width: 670, align: 'center', height:200, formatter: function (value,rec) {
                        	/* console.log(value)
                        	console.log(value.length) */
                        	var  operation = '';
                        	var operationTable = '<table style="  margin: 10px;"  width="100%" height="100%"  >';
                        	
                        	$(value).each(function(index,list){     //第一个是系统的次数   第二个是对象middleArea
                    			if(index % 6 == 0 ){
                    				operation += '</tr><tr>';
                    			}
                    			operation += '<td>'+list+'</td>';
                    					
                        	});
                        	operation = operationTable + operation.substring(5) +"</table>";
                            return operation;
                        }
                    },
                    {
                        title: '操作', field: 'templateprice', width: 100, align: 'center', formatter: function (value, rec) {
                        	var  operation = '';
                        	
                        	operation +=  '<a class="a_edit" href="javascript:;" onclick="EditDataTemplatePage(' + value + ');$(this).parent().click();return false;">修改</a>';
                            return operation;
                        }
                    }
                ]],
                toolbar: [
                   {
                       id: 'btnadd',
                       text: '新增模板',
                       iconCls: 'icon-add',
                       handler: function () {
                           AddData();
                       }
                   },
                   {
                       id: 'btndel',
                       text: '删除',
                       iconCls: 'icon-cancel',
                       handler: function () {
                           DelData();
                       }
                   }
                ],
                queryParams : {"personalid" : $("#personalid").val()},
                pagination: true,
                pageNumber: 1,
                pageSize: 30,
                rownumbers: true
            });
        }

        //查询数据
        function Search() {
            $("#tbPersonalRegion").datagrid("options").queryParams.templatetitle = $("#templatetitleName").val();
            ReloadClearData();
        }

        //清空
        function Clear() {
        	$("#templatetitleName").val('');
            Search();
        }

        //删除数据
        function DelData() {
            var selected = "";
            $($('#tbPersonalRegion').datagrid('getSelections')).each(function () {
                selected += this.templateprice + ",";
            });
            selected = selected.substr(0, selected.length - 1);
            if (selected == "") {
                $.messager.alert('提示', '请选择要删除的数据！', 'info');
                return;
            }
            $.messager.confirm('提示', '确认删除？', function (r) {
                if (r) {
                    $.post("deleteByTemplateprice.do", "templateprice="+selected, function (msg) {
                       
                        if (msg != "0") {
                            $.messager.alert('提示', '删除成功', 'info');
                            ReloadClearData();
                        }
                        else {
                            $.messager.alert('提示', '删除失败', 'error');
                        }
                    });
                }
            });
        }

        //添加数据,先清空数据 
        function AddData() {
        	$('#templateprice').val('');
        	$('#templategoodsykgprice').numberbox('setValue', '');
        	$('#templategoodsykg').numberbox('setValue', '');
        	$('#templateoverload').numberbox('setValue', '');
            $('#templatepacking').val('');
            $('#templatetitle').val('');
            TemplateOperationProvinceData();
            $("#dialgTemplateAddress").dialog("open");
        }

        //提交数据
        function Submit() {
            if (!$("#formTemplateAddress").form("validate")) {
                return;
            }
            else {
                var json = {};
                json.templateprice = $('#templateprice').val();
                json.templategoodsykgprice = $('#templategoodsykgprice').numberbox('getValue');
                json.templategoodsykg = $('#templategoodsykg').numberbox('getValue');
                json.templateoverload = $('#templateoverload').numberbox('getValue');
                json.templatepacking = $('#templatepacking').val();
                json.templatetitle = $('#templatetitle').val();
                json.provincial = show("provinces");
                json.personalid = $("#personalid").val();
                $.post("addIsUpTemplateAddress.do",json, function(data){
                    ReloadClearData();
                    if (data == "1") {
                        $.messager.alert('提示', '操作成功', 'info');
                        $("#dialgTemplateAddress").dialog("close");
                    }else {
                        $.messager.alert('提示', '操作失败', 'error');
                        $("#dialgTemplateAddress").dialog("open");
                    }
                });
            }
        }
        //修改数据,先读取数据
        function EditDataTemplatePage(id) {
            $.post("selectByTemplateprice.do","templateprice="+id, function (data) {
                if (data != "0") {
                    var dataObj = eval("(" + data + ")");
                    $('#templateprice').val(dataObj.templateprice);
                	$('#templategoodsykgprice').numberbox('setValue', dataObj.templategoodsykgprice);
                	$('#templategoodsykg').numberbox('setValue', dataObj.templategoodsykg);
                	$('#templateoverload').numberbox('setValue', dataObj.templateoverload);
                    $('#templatepacking').val(dataObj.templatepacking);
                    $('#templatetitle').val(dataObj.templatetitle);
                    $("#middleArea").html("")
                    console.log(dataObj.listId)
                    $.post("selectAllLinkage.do","parentid=0", function(data){
		        		operation = '';
		        		operations = '';
		        		$(data).each(function(index,list){     //第一个是系统的次数   第二个是对象middleArea
		        			if(index == 0){
		        				operations += '<tr><td colspan="2" style="text-align: center; "  ><input type="button" style="width: 88px;" value="全选"   onclick="AreaSelect()" id="select" /></td>';
		        				operations += '<td colspan="2" style="text-align: center; "  ><input type="button" style="width: 88px;"  value="反选" onclick="reverseSelect()" id="reverse"  /></td></tr>';
		        			}
		        			
		        			if(index % 4 == 0 ){
		        				operation += '</tr><tr>';
		        			}
		        			 var judge = false;
		        			$(dataObj.listId).each(function(index,lists){
		        				if(lists == list.id){
		        					judge = true;
		        				}
		        			});
		        			if(judge){
	        					operation += '<td><input type="checkbox" name="provinces" checked="checked"  value="'+list.id+'" />'+list.name+'</td>';
	        				}else{
	        					operation += '<td><input type="checkbox" name="provinces" value="'+list.id+'" />'+list.name+'</td>';
	        				}
		            	});
		        		operation = operations+operation.substring(5)
		        		$("#middleArea").append(operation);
			 		});
                    $("#dialgTemplateAddress").dialog("open");
                }
                else {
                    $.messager.alert('提示', '操作失败', 'error');
                }
            });
        }
        
        //全选反选
        function AreaSelect(){ 
			$("input[name='provinces']").attr("checked","true"); 
		}
		function reverseSelect(){ 
			$("input[name='provinces']").each(function(){ 
					if($(this).attr("checked")) { 
						$(this).removeAttr("checked"); 
					}else { 
						$(this).attr("checked","true"); 
					} 
			}) 
			//$("input[name='province']").attr("checked","true"); 
		}
		//省份加载
		function TemplateOperationProvinceData(){
			$("#middleArea").html("")
        	$.post("selectAllLinkage.do","parentid=0", function(data){
        		operation = '';
        		operations = '';
        		$(data).each(function(index,list){     //第一个是系统的次数   第二个是对象middleArea
        			if(index == 0){
        				operations += '<tr><td colspan="2" style="text-align: center; "  ><input type="button" style="width: 88px;" value="全选"   onclick="AreaSelect()" id="select" /></td>';
        				operations += '<td colspan="2" style="text-align: center; "  ><input type="button" style="width: 88px;"  value="反选" onclick="reverseSelect()" id="reverse"  /></td></tr>';
        			}
        			
        			if(index % 4 == 0 ){
        				operation += '</tr><tr>';
        			}
        			
        			operation += '<td><input type="checkbox" name="provinces" value="'+list.id+'" />'+list.name+'</td>';
        					
            	});
        		operation = operations+operation.substring(5)
        		$("#middleArea").append(operation);
        		//$("#middleArea").append(operation);
        	});
		}
		//选择复选框
		function show(name){
		    obj = document.getElementsByName(name);
		    check_val = '';
		    for(k in obj){
		        if(obj[k].checked)
		        	check_val += obj[k].value+",";
		    }
		    return check_val.substring(0,check_val.length - 1);
		   // return check_val;
		}
        function ReloadClearData() {
            $("#tbPersonalRegion").datagrid("uncheckAll");
            $("#tbPersonalRegion").datagrid("unselectAll");
            $("#tbPersonalRegion").datagrid("reload");
        }
    </script>
</body>
</html>
