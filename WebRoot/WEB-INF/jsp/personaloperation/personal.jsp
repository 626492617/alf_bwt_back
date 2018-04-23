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
		<input type="hidden" id="addressid" name ="addressid" value="${addressid}" >
	    <!--查询条件-->
	    <div id="headerSearchPanel" class="easyui-panel">
	        <form id="fromSearch">
	            <table style="text-align: center;  margin: 10px;"  width="100%" height="100%"  >
	                <tr>
	                    <td ><h4>更好的填写信息 会让用户更好找到你！因为他们需要你</h4></td>
	                </tr>
	            </table>
	        </form>
	    </div>
		<!--员工添加-->
	    <div id="dialgPrsonalAddress" class="easyui-dialog" title="添加个人地址" style="width: 690px; height: 470px; padding: 10px; " data-options="modal:true,closed:true,vcenter:true,buttons:'#btnPrsonalAddress'">
	        <form id="formPrsonalAddress">
	            <table style="text-align: center;  margin: 10px;"  width="100%" height="100%" >
					<tr >
	                    <td>省份</td>
	                    <td>
	                     	<input id="province" name="province" class="easyui-combobox" style="width: 200px"   />
	                    </td>
	                    <td>市区</td>
	                    <td>
	                     	<input id="city" name="city" class="easyui-combobox" style="width: 200px"  />
	                    </td>
	                </tr>
	                <tr  >
	                    <td>区域</td>
	                    <td>
	                     	<input id="area" name="area" class="easyui-combobox" style="width: 200px"  />
	                    </td>
	                    <td>街道</td>
	                    <td>
	                     	<input id="street" name="street" class="easyui-combobox" style="width: 200px"  />
	                    </td>
	                </tr>
	                <tr  >
	                    <td>小区(镇,乡,村)</td>
	                    <td colspan="3" >
	                     	<textarea id="accurate" name="accurate" style="width:500px; height:80px;"  placeholder="示例：xxx小区，xxx小区（xxx村，xxx镇）"></textarea>
	                    </td>
	                </tr>
	                <tr  >
	                    <td>价格区域</td>
	                    <td>
	                     	<input id="price" name="price" class="easyui-validatebox" style="width: 200px" placeholder="示例：10-100"
	                     		 data-options="required:true,missingMessage:'示例：10-100',validateOnBlur:true"  />
	                    </td>
	                    <td>电话号码</td>
	                    <td>
	                     	<input id="phone" name="phone" class="easyui-validatebox" style="width: 200px"  />
	                    </td>
	                </tr><!-- colspan="2" -->
	                <tr>
	                    <td>描述</td>
	                    <td colspan="3" >
	                     	<textarea id="accurate" name="accurate" style="width:500px; height:80px;"  placeholder="这里可以写自己的活动：比如（超出1kg赠送1kg，邮五个免费一个）"></textarea>
	                    </td>
	                </tr>
	            </table>
	        </form>
	        <div id="btnPrsonalAddress">
	            <a href="javascript:void;" class="easyui-linkbutton" onclick="Submit()">提交</a>
	            <a href="javascript:void;" class="easyui-linkbutton" onclick="$('#dialgPrsonalAddress').dialog('close'); return false;">取消</a>
	        </div>
	    </div>
		<div id="dialgAlonelPricePage" class="easyui-dialog" title="价格区域信息" style="width: 1250px; height: 620px; padding: 10px; " data-options="modal:true,closed:true,vcenter:true">
	    	<table id="tbAlonelPrice"></table>
	    	<div id="dialgAlonelPrice" class="easyui-dialog" title="添加价格区域" style="width: 670px; height: 470px; padding: 10px; " data-options="modal:true,closed:true,vcenter:true,buttons:'#btnAlonelPrice'">
		        <form id="formAlonelPrice">
		        <input type="hidden" id="aloneprice" name="aloneprice" >
		            <table style="text-align: center;  margin: 10px;"  width="100%" height="110%" >
						<tr  >
		                    <td>首重</td>
		                    <td>
		                     	<input id="alonegoodsykg" name="alonegoodsykg" class="easyui-numberbox" style="width: 200px" 
		                     		data-options="min:0,precision:2,suffix:'kg'"  />
		                    </td>
		                    <td>首重价格</td>
		                    <td >
		                     	<input id="alonegoodsykgprice" name="alonegoodsykgprice" class="easyui-numberbox" style="width: 200px" 
		                     		data-options="min:0,precision:2,suffix:'元'" />
		                    </td>
		                </tr>
		                <tr >
		                    <td>超出首重价格</td>
		                    <td  >
		                     	<input id="aloneoverload" name="aloneoverload" class="easyui-numberbox" style="width: 200px;" placeholder="每公斤收取多少元"
		                     		data-options="min:0,precision:2,suffix:'元/kg'" />
		                    </td>
		                </tr>
		                <tr  >
		                    <td>包装说明</td>
		                    <td colspan="3"  >
		                     	<textarea id="alonepacking" name="alonepacking" style="width:500px; height:60px;"  placeholder="示例：自费，或免费，可自行说明 200字以内"></textarea>
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
		        <div id="btnAlonelPrice">
		            <a href="javascript:void;" class="easyui-linkbutton" onclick="SubmitAlonelPrice()">提交</a>
		            <a href="javascript:void;" class="easyui-linkbutton" onclick="$('#dialgAlonelPrice').dialog('close'); return false;">取消</a>
		        </div>
	    	</div>
	    </div>
	    <!--数据列表-->
	    <table id="tbPrsonalRegion"></table>
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
            PrsonalRegionDataInit();
            DataQueryProvince();
            
           // loadDataQueryProvince();
        });
        
       //省
        function DataQueryProvince(){
			$('#province').combobox({
           	 	valueField: 'id',
                textField: 'name',
                url: 'selectAllLinkage.do?parentid=0',
                onSelect: function (record) {
                	DataQueryCity(record.id);
                	$('#city').combobox('setValues', '');
                	$('#area').combobox('setValues', '');
                	$('#street').combobox('setValues', '');

                }
           });
		}
        //市
        function DataQueryCity(id){
			$('#city').combobox({
           	 	valueField: 'id',
                textField: 'name',
                url: 'selectAllLinkage.do?parentid='+id,
                onSelect: function (record) {
                	DataArea(record.id);
                	$('#area').combobox('setValues', '');
                	$('#street').combobox('setValues', '');
                }
           });
		}
        //区县
        function DataArea(id){
			$('#area').combobox({
           	 	valueField: 'id',
                textField: 'name',
                url: 'selectAllLinkage.do?parentid='+id,
                onSelect: function (record) {
                	DataStreet(record.id);
                	$('#street').combobox('setValues', '');
                }
           });
		} 
        function DataStreet(id){
			$('#street').combobox({
           	 	valueField: 'id',
                textField: 'name',
                url: 'selectAllLinkage.do?parentid='+id,
               
           });
		} 
		
        //数据列表
        function PrsonalRegionDataInit() {
            $('#tbPrsonalRegion').datagrid({
                title: '地点信息',//文本标题
                url: 'selectAllPrsonalRegion.do',//访问路径
                width: '100%',//显示宽度
                height: $(parent.document).find("#mainPanel").height() - 100 > 0 ? $(parent.document).find("#mainPanel").height() - 150 : 500, //高度
                nowrap: true,//在一行显示
                striped: true,//显示虚线在外框
                collapsible: false,//可折叠的
                remoteSort: true,//从服务器对数据进行排序
                fitColumns: true,//自动展开/收缩列的大小
                columns: [[
                    { field: 'cbx', checkbox: true },
                    { title: '省份', field: 'provincename', width: 100, align: 'center' },
					{ title: '市区', field: 'cityname', width: 100, align: 'center' },
					{ title: '区域', field: 'areaname', width: 100, align: 'center' },
					{ title: '街道', field: 'streetname', width: 100, align: 'center' },
					{
                        title: '接管地区', field: 'accurate', width: 220, align: 'center', formatter: function (value) {
                            value = decodeURIComponent(value);
                            if (value.length > 15) {
                                value = value.substr(0, 15) + "...";
                            }
                            if(value == 'null'){
                            	 return "";
                            }
                            return value;
                        }
                    },
                    {
                        title: '联系电话', field: 'phone', width: 100, align: 'center', formatter: function (value) {
                            return value;
                        }
                    },
                    {
                        title: '活动描述', field: 'describes', width: 250, align: 'center', formatter: function (value) {
                            value = decodeURIComponent(value);
                            if (value.length > 15) {
                                value = value.substr(0, 15) + "...";
                            }
                            if(value == 'null'){
                            	 return "";
                            }
                            return value;
                        }
                    },
                    {
                        title: '价格模板操作', field: 'istemplate', width: 150, align: 'center', formatter: function (value, rec) {
                        	var  operation = '';
                        	if(value == 1){
                        		operation = '<a class="a_edit" href="javascript:;" onclick="TemplateOperationData(2,'+rec.addressid+');$(this).parent().click();return false;">取消模板</a>';
                        	}else{
                        		operation = '<a class="a_edit" href="javascript:;" onclick="TemplateOperationData(1,'+rec.addressid+');$(this).parent().click();return false;">启用</a>';
                        	}
                            return operation;
                        }
                    },
                    {
                        title: '操作', field: 'addressid', width: 150, align: 'center', formatter: function (value, rec) {
                        	var  operation = '';
                        	if(rec.istemplate == 1){
                        		operation =  '<a class="a_edit" href="javascript:;" onclick="EditDatas(' + value + ');$(this).parent().click();return false;">选择价格模板</a>';
                        		
                        	}else{
                        		operation =  '<a class="a_edit" href="javascript:;" onclick="selectAlonelPricePage(' + value + ');$(this).parent().click();return false;">填写价格</a>';
                        	}
                        	operation +=  '<a class="a_edit" href="javascript:;" onclick="EditData(' + value + ');$(this).parent().click();return false;">修改</a>';
                            return operation;
                        }
                    }
                ]],
                toolbar: [
                   {
                       id: 'btnadd',
                       text: '新增',
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
                queryParams : {"siteid" : $("#siteid").val()},
                pagination: true,
                pageNumber: 1,
                pageSize: 30,
                rownumbers: true
            });
        }

        //查询数据
        function Search() {
            $("#tbPrsonalRegion").datagrid("options").queryParams.personalname = $("#cz_personalname").val();
            ReloadClearData();
        }

        //清空
        function Clear() {
        	$("#cz_personalname").val('');
            Search();
        }

        //删除数据
        function DelData() {
            var selected = "";
            $($('#tbPrsonalRegion').datagrid('getSelections')).each(function () {
                selected += this.personalid + ",";
            });
            selected = selected.substr(0, selected.length - 1);
            if (selected == "") {
                $.messager.alert('提示', '请选择要删除的数据！', 'info');
                return;
            }
            $.messager.confirm('提示', '确认删除？', function (r) {
                if (r) {
                    $.post("deleteByPersonalid.do", "personalid="+selected, function (msg) {
                        ReloadClearData();
                        if (msg != "0") {
                            $.messager.alert('提示', '删除成功', 'info');
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
        	$('#addressid').val('');
        	$('#province').combobox('setValue', '');
        	$('#city').combobox('setValue', '');
        	$('#area').combobox('setValue', '');
        	$('#street').combobox('setValue', '');
            $('#accurate').val('');
            $('#price').val('');
            $('#phone').val('');
            $('#describes').val('');
            $("#dialgPrsonalAddress").dialog("open");
        }

        //提交数据
        function Submit() {
            if (!$("#formPrsonalAddress").form("validate")) {
                return;
            }
            else {
                var json = {};
                json.addressid = $('#addressid').val();
                json.province = $('#province').combobox('getValue',"");
                json.city = $('#city').combobox('getValue',"");
                json.area = $('#area').combobox('getValue',"");
                json.street = $('#street').combobox('getValue',"");
                json.accurate = $('#accurate').val();
                json.price = $('#price').val();
                json.phone = $('#phone').val();
                json.describes = $('#describes').val();
                
                $.post("addPrsonalAddress.do",json, function(data){
                    ReloadClearData();
                    if (data == "1") {
                        $.messager.alert('提示', '操作成功', 'info');
                        $("#dialgPrsonalAddress").dialog("close");
                    }
                    else {
                        $.messager.alert('提示', '操作失败', 'error');
                        $("#dialgPrsonalAddress").dialog("open");
                    }
                });
            }
        }
        //修改数据,先读取数据
        function EditData(id) {
            $("#dialgPrsonalAddressSite").dialog("open");
            $.post("selectByPersonalid.do","personalid="+id, function (data) {
            	
                if (data != "0") {
                    var dataObj = eval("(" + data + ")");
                    $("#personalname").val(dataObj.personalname);
                    $("#personalphone").val(dataObj.personalphone);
                    $("#personalaccount").val(dataObj.personalaccount);
                    $("#personalpwd").val(dataObj.personalpwd);
                    document.getElementById("imgShow").src = dataObj.personallogo;
                }
                else {
                    $.messager.alert('提示', '操作失败', 'error');
                }
            });
        }
        function TemplateOperationData(istemplate,addressid){
        	$.post("addPrsonalAddress.do","istemplate="+istemplate+"&addressid="+addressid, function(data){
                ReloadClearData();
                if (data == "1") {
                    $.messager.alert('提示', '操作成功', 'info');
                }
                else {
                    $.messager.alert('提示', '操作失败', 'error');
                }
            });
        }
        function ReloadClearData() {
            $("#tbPrsonalRegion").datagrid("uncheckAll");
            $("#tbPrsonalRegion").datagrid("unselectAll");
            $("#tbPrsonalRegion").datagrid("reload");
        }
        /*****************价格******************/
        function selectAlonelPricePage (id){
        	$('#addressid').val("");
        	$('#addressid').val(id);
        	$("#dialgAlonelPricePage").dialog("open");
        	selectAlonelPriceData();
        }
      //数据列表
        function selectAlonelPriceData() {
        	var addressid = $('#addressid').val();
            $('#tbAlonelPrice').datagrid({
                //title: '价格区域信息',//文本标题
                url: 'selectAllAlonelPrice.do',//访问路径
                width: '100%',//显示宽度
                height: $(parent.document).find("#mainPanel").height() - 100 > 0 ? $(parent.document).find("#mainPanel").height() - 350 : 400, //高度
                //height:400,
                nowrap: true,//在一行显示
                striped: true,//显示虚线在外框
                collapsible: false,//可折叠的
                remoteSort: true,//从服务器对数据进行排序
                fitColumns: true,//自动展开/收缩列的大小
                columns: [[
                    { field: 'cbx', checkbox: true },
                    { title: '首重', field: 'alonegoodsykg', width: 70, align: 'center' ,formatter: function (value) {
                        if(value > 0){
                        	return value+"kg";
                        }else{
                        	return "0kg";
                        }
                    }},
					{ title: '价格', field: 'alonegoodsykgprice', width: 70, align: 'center', formatter:function (value) {
                        if(value > 0){
                        	return value+"元";
                        }else{
                        	return "0元";
                        }
                        
                    }},
					{ title: '超出首重', field: 'aloneoverload', width: 70, align: 'center' ,formatter:function (value) {
                        if(value > 0){
                        	return value+"元/kg";
                        }else{
                        	return "0元/kg";
                        }
                        
                    }},
					{
                        title: '说明', field: 'alonepacking', width: 300, align: 'center', formatter: function (value) {
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
                        title: '操作', field: 'aloneprice', width: 70, align: 'center', formatter: function (value, rec) {
                        	var  operation = '';
                        	
                        	operation +=  '<a class="a_edit" href="javascript:;" onclick="EditDataAlonelPricePage(' + value + ');$(this).parent().click();return false;">修改</a>';
                            return operation;
                        }
                    }
                ]],
                toolbar: [
                   {
                       id: 'btnadd',
                       text: '新增',
                       iconCls: 'icon-add',
                       handler: function () {
                           AddAlonelPriceData();
                       }
                   },
                   {
                       id: 'btndel',
                       text: '删除',
                       iconCls: 'icon-cancel',
                       handler: function () {
                           DelAlonelPriceData();
                       }
                   }
                ],
                queryParams : {"addressid" : addressid},
                pagination: true,
                pageNumber: 1,
                pageSize: 30,
                rownumbers: true
            });
        }
      	//dialgAlonelPrice
		function AddAlonelPriceData(){
			$('#aloneprice').val('');
        	$('#alonegoodsykgprice').numberbox('setValue','');
        	$('#alonegoodsykg').numberbox('setValue','');
            $('#aloneoverload').numberbox('setValue','');
            $('#alonepacking').val('');
            TemplateOperationData();
            $("#dialgAlonelPrice").dialog("open");
		}
		function TemplateOperationData(){
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
		//提交数据
        function SubmitAlonelPrice() {
            if (!$("#formAlonelPrice").form("validate")) {
                return;
            }
            else {
                var json = {};
                json.aloneprice = $('#aloneprice').val();
                json.alonegoodsykgprice = $('#alonegoodsykgprice').numberbox('getValue');
                json.alonegoodsykg = $('#alonegoodsykg').numberbox('getValue');
                json.aloneoverload = $('#aloneoverload').numberbox('getValue');
                json.alonepacking = $('#alonepacking').val();
                json.provincial = show("provinces");
                json.addressid =  $('#addressid').val();
                console.log(json.provincial);
                 $.post("addIsUpdataAlonelPrice.do",json, function(data){
                	 AlonelPriceData();
                    if (data == "1") {
                        $.messager.alert('提示', '操作成功', 'info');
                        $("#dialgAlonelPrice").dialog("close");
                    }
                    else {
                        $.messager.alert('提示', '操作失败', 'error');
                        $("#dialgAlonelPrice").dialog("open");
                    }
                }); 
            }
        }
		//修改
		 function EditDataAlonelPricePage(aloneprice){
			 $.post("upDateAlonelPricePage.do","aloneprice="+aloneprice, function(data){
				 if (data != "0") {
	                    var dataObj = eval("(" + data + ")");
						$('#aloneprice').val(dataObj.aloneprice);
			        	$('#alonegoodsykgprice').numberbox('setValue',dataObj.alonegoodsykgprice);
			        	$('#alonegoodsykg').numberbox('setValue',dataObj.alonegoodsykg);
			            $('#aloneoverload').numberbox('setValue',dataObj.aloneoverload);
			            $('#alonepacking').val(dataObj.alonepacking);
			            $('#addressid').val(dataObj.addressid);
			            console.log(dataObj.listDown);
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
			        			 var judge = false;
			        			$(dataObj.listDown).each(function(index,lists){
			        				if(lists.id == list.id){
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
			            $("#dialgAlonelPrice").dialog("open");
				 }else{
					 
				 }
            }); 
		} 
		function DelAlonelPriceData(){
			var selected = "";
            $($('#tbAlonelPrice').datagrid('getSelections')).each(function () {
                selected += this.aloneprice + ",";
            });
            selected = selected.substr(0, selected.length - 1);
            if (selected == "") {
                $.messager.alert('提示', '请选择要删除的数据！', 'info');
                return;
            }
            $.messager.confirm('提示', '确认删除？', function (r) {
                if (r) {
                    $.post("deleteByAlonelPrice.do", "aloneprice="+selected, function (msg) {
                    	AlonelPriceData();
                        if (msg != "0") {
                            $.messager.alert('提示', '删除成功', 'info');
                        }
                        else {
                            $.messager.alert('提示', '删除失败', 'error');
                        }
                    });
                }
            });
		}
		//刷新价钱
        function AlonelPriceData() {
            $("#tbAlonelPrice").datagrid("uncheckAll");
            $("#tbAlonelPrice").datagrid("unselectAll");
            $("#tbAlonelPrice").datagrid("reload");
        }
    </script>

</body>
</html>
