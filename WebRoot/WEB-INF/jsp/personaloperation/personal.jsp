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
        .addressChoice{
			width:100%;
			height: 83%;
			margin: 15px 0 0 0 ;
			padding: 0;
			border-top: 1px solid #ccc;
			overflow:auto;
		}
		.addressShow{
			border-bottom: 1px solid #ccc;
		}
		.addressShow:hover{
			background-color: #e0e0e0;
			cursor: pointer;
		}
		.addressChoiceName{
			margin:6px 6px 3px 6px;
			font-size: 15px;
			color: #272727;
			font-weight: 500;
		}
		.addressChoiceData{
			margin:3px 6px 6px 8px;
			font-size: 12px;
			color: #5cadad;
		}
		.reminder{
			font-size: 10px;
			color: #ff7575;
		}
    </style>
    </head>
<body class="easyui-layout" >
	<div data-options="region:'center'" style="padding:5px;">
		<input type="hidden" id="addressid" name ="addressid" value="${addressid}" >
	    <!--查询条件-->
	    <div id="headerSearchPanel" class="easyui-panel">
	        <form id="fromSearch" onsubmit="return false;">
	            <table style="text-align: center;  margin: 10px;"  width="100%" height="100%"  >
	                <tr>
	                    <td ><h4>更好的填写信息 会让用户更好找到你！因为他们需要你</h4></td>
	                </tr>
	            </table>
	        </form>
	    </div>
		<!--员工添加-->
	    <div id="dialgPersonalAddress" class="easyui-dialog" title="添加个人地址" style="width: 690px; height: 470px; padding: 10px; " data-options="modal:true,closed:true,vcenter:true,buttons:'#btnPersonalAddress'">
	        <form id="formPersonalAddress" onsubmit="return false;">
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
	                    <!-- <td>街道</td>
	                    <td>
	                     	<input id="street" name="street" class="easyui-combobox" style="width: 200px"  />
	                    </td> -->
	                </tr>
	                <tr  >
	                    <td class="tr1" ><span style="color: red;">*</span>搜索地址<span style="color: red;">*</span></td> 
	                    <td colspan="3" >
							<input id="address" name="address" class="easyui-validatebox" style="width: 25rem;height:27px;" disabled="disabled"
								  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a class="easyui-linkbutton"  onclick="searchAddressPage()"  data-options="iconCls:'icon-search'"> 搜索地址 </a>
	                    </td>
	                </tr>
	                <tr  >
	                    <td>小区(镇,乡,村)</td>
	                    <td colspan="3" >
	                     	<textarea id="accurate" name="accurate" style="width:500px; height:80px;"  placeholder="地方与地方要用‘,(逗号)’连接起来  英文输入法下的, 示例：朝阳大悦城,幸福家园,快递家园,..."></textarea>
	                    </td>
	                </tr>
	                <tr  >
	                    <td>价格区域</td>
	                    <td>
	                     	<input id="price1" name="price1" class="easyui-numberbox" style="width: 80px" 
	                     		 data-options="required:true,missingMessage:'示例：10',validateOnBlur:true"  />-
	                     	<input id="price2" name="price2" class="easyui-numberbox" style="width: 80px" 
	                     		 data-options="required:true,missingMessage:'示例：100',validateOnBlur:true"  />
	                    </td>
	                    <td>电话号码</td>
	                    <td>
	                     	<input id="phone" name="phone" class="easyui-validatebox" style="width: 200px"  />
	                    </td>
	                </tr><!-- colspan="2" -->
	                <tr>
	                    <td>描述</td>
	                    <td colspan="3" >
	                     	<textarea id="describes" name="describes" style="width:500px; height:80px;"  placeholder="这里可以写自己的活动：比如（超出1kg赠送1kg，邮五个免费一个）"></textarea>
	                    </td>
	                </tr>
	            </table>
	        </form>
	        <div id="btnPersonalAddress">
	            <a href="javascript:void;" class="easyui-linkbutton" onclick="Submit()">提交</a>
	            <a href="javascript:void;" class="easyui-linkbutton" onclick="$('#dialgPersonalAddress').dialog('close'); return false;">取消</a>
	        </div>
	    </div>
		<div id="dialgAlonePricePage" class="easyui-dialog" title="价格区域信息" style="width: 950px; height: 520px; padding: 10px; " data-options="modal:true,closed:true,vcenter:true">
	    	<table id="tbAlonePrice"></table>
	    	<div id="dialgAlonePrice" class="easyui-dialog" title="添加价格区域" style="width: 670px; height: 470px; padding: 10px; " data-options="modal:true,closed:true,vcenter:true,buttons:'#btnAlonePrice'">
		        <form id="formAlonePrice" onsubmit="return false;">
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
		        <div id="btnAlonePrice">
		            <a href="javascript:void;" class="easyui-linkbutton" onclick="SubmitAlonePrice()">提交</a>
		            <a href="javascript:void;" class="easyui-linkbutton" onclick="$('#dialgAlonePrice').dialog('close'); return false;">取消</a>
		        </div>
	    	</div>
	    </div>
	    <div id="searchAddressPage" class="easyui-dialog" title="查询位置" style="width: 400px; height: 470px; padding: 10px; " data-options="modal:true,closed:true">
    	<!--查询条件--><span class="reminder" >温馨提示：选好省分、城市、地区 会更好的搜寻</span>
    	<input type="hidden" id="location" >
	    <div class="easyui-panel">
	        <form id="fromSearch">
	            <table>
	                <tr>
	                    <td>
	                     	<input id="addressPage" name="addressPage" placeholder="输入站点全名称即可！"  class="easyui-validatebox" style="width: 200px;height: 20px;"  editable="editable" />
	                    </td>
	                    <td>
	                        <a href="javascript:;" class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="addressSearch()">查询</a>
	                        <a href="javascript:;" class="easyui-linkbutton" data-options="iconCls:'icon-clear'" onclick="addressClear()">清空</a>
	                    </td>
	                </tr>
	            </table>
	        </form>
	    </div>
	    <div class="addressChoice" >
	    	<table id="tbAddressChoice"></table>
	    </div>
    </div>
	    <div id="dialgTemplatePage" class="easyui-dialog" title="已选模板" style="width: 950px; height: 520px; padding: 10px; " data-options="modal:true,closed:true,vcenter:true">
	    	<table id="tbAllTemplate"></table>
	    </div>
	    <div id="dialgTemplateChoicePage" class="easyui-dialog" title="所有模板" style="width: 900px; height: 480px; padding: 10px; " data-options="modal:true,closed:true,vcenter:true">
	    	<table id="tbTemplateChoice"></table>
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
                	//$('#street').combobox('setValues', '');

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
                	//$('#street').combobox('setValues', '');
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
                	//DataStreet(record.id);
                	//$('#street').combobox('setValues', '');
                }
           });
		} 
        /* function DataStreet(id){
			$('#street').combobox({
           	 	valueField: 'id',
                textField: 'name',
                url: 'selectAllLinkage.do?parentid='+id,
               
           });
		} */ 
		
        //数据列表
        function PersonalRegionDataInit() {
            $('#tbPersonalRegion').datagrid({
                title: '地点信息',//文本标题
                url: 'selectAllPersonalRegion.do',//访问路径
                width: '93%',//显示宽度
                height: $(parent.document).find("#mainPanel").height() - 100 > 0 ? $(parent.document).find("#mainPanel").height() - 150 : 500, //高度
                nowrap: true,//在一行显示
                striped: true,//显示虚线在外框
                collapsible: false,//可折叠的
                remoteSort: true,//从服务器对数据进行排序
                fitColumns: true,//自动展开/收缩列的大小
                columns: [[
                    { field: 'cbx', checkbox: true },
                    { title: '省份', field: 'provincename', width: 90, align: 'center' },
					{ title: '市区', field: 'cityname', width: 90, align: 'center' },
					{ title: '区域', field: 'areaname', width: 90, align: 'center' },
					{
                        title: '定位位置', field: 'address', width: 200, align: 'center', formatter: function (value) {
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
                        title: '接管地区', field: 'accurate', width: 200, align: 'center', formatter: function (value) {
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
                        title: '活动描述', field: 'describes', width: 220, align: 'center', formatter: function (value) {
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
                        title: '价格模板操作', field: 'istemplate', width: 90, align: 'center', formatter: function (value, rec) {
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
                        title: '操作', field: 'addressid', width: 180, align: 'center', formatter: function (value, rec) {
                        	var  operation = '';
                        	if(rec.istemplate == 1){
                        		operation =  '<a class="a_edit" href="javascript:;" onclick="templateAllDataInit(' + value + ');$(this).parent().click();return false;">选择价格模板</a>';
                        		
                        	}else{
                        		operation =  '<a class="a_edit" href="javascript:;" onclick="selectAlonePricePage(' + value + ');$(this).parent().click();return false;">填写价格</a>';
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
            $("#tbPersonalRegion").datagrid("options").queryParams.personalname = $("#cz_personalname").val();
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
            $($('#tbPersonalRegion').datagrid('getSelections')).each(function () {
                selected += this.addressid + ",";
            });
            selected = selected.substr(0, selected.length - 1);
            if (selected == "") {
                $.messager.alert('提示', '请选择要删除的数据！', 'info');
                return;
            }
            $.messager.confirm('提示', '确认删除？', function (r) {
                if (r) {
                    $.post("deleteByAddressid.do", "addressid="+selected, function (msg) {
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
        	//$('#street').combobox('setValue', '');
            $('#accurate').val('');
           // $('#price').val('');
            $('#price1').numberbox('setValue','');
            $('#price2').numberbox('setValue','');
            $('#phone').val('');
            $('#describes').val('');
            $('#address').val('');
            $("#location").val('');
            $("#dialgPersonalAddress").dialog("open");
        }

        //提交数据
        function Submit() {
            if (!$("#formPersonalAddress").form("validate")) {
                return;
            }else if(!($('#address').val().length > 0 )){
            	$.messager.alert('提示', '请先选择省区市，在点击搜索地址', 'error');
            	return;
            }else {
                var json = {};
                json.addressid = $('#addressid').val();
                json.province = $('#province').combobox('getValue',"");
                json.city = $('#city').combobox('getValue',"");
                json.area = $('#area').combobox('getValue',"");
               // json.street = $('#street').combobox('getValue',"");
                json.accurate = $('#accurate').val();
                json.price = $('#price1').numberbox('getValue')+"-"+$('#price2').numberbox('getValue');
                json.phone = $('#phone').val();
                json.describes = $('#describes').val();
                json.address = $('#address').val();
                var location = $("#location").val();
                var locations = location.split(",");
                json.lng = locations[0];
                json.lat = locations[1];
                console.log(json.price)
                $.post("addPersonalAddress.do",json, function(data){
                    ReloadClearData();
                    if (data == "1") {
                        $.messager.alert('提示', '操作成功', 'info');
                        $("#dialgPersonalAddress").dialog("close");
                    }else if(data == "2"){
                    	$.messager.alert('提示', '大王小编说不能添加太多！个人是有限的', 'info');
                        $("#dialgPersonalAddress").dialog("close");
                    }else {
                        $.messager.alert('提示', '操作失败', 'error');
                        $("#dialgPersonalAddress").dialog("open");
                    }
                });
            }
        }
        //修改数据,先读取数据
        function EditData(id) {
        	$('#addressid').val(id);
        	$('#province').combobox('setValue', '');
        	$('#city').combobox('setValue', '');
        	$('#area').combobox('setValue', '');
        	//$('#street').combobox('setValue', '');
            $('#accurate').val('');
            $('#price').val('');
            $('#phone').val('');
            $('#describes').val('');
            $('#address').val('');
            $("#location").val('');
            $.post("selectByAddressid.do","addressid="+id, function (data) {
                if (data != "0") {
                    var dataObj = eval("(" + data + ")");
                    $('#addressid').val(dataObj.addressid);
                    //省
                    DataQueryProvince();
                    $('#province').combobox('setValue', dataObj.province);
                     //市
                    DataQueryCity(dataObj.province)
                    $('#city').combobox('setValue', dataObj.city);
                    //区县
                    DataArea(dataObj.city) 
                    $('#area').combobox('setValue', dataObj.area);
                    //街道
                   // DataStreet(dataObj.area) 
                	//$('#street').combobox('setValue', dataObj.street);
                	 
                    $('#accurate').val(dataObj.accurate);
                    var price = dataObj.price;
                   /* console.log(price.substring(0,price.indexOf("-")))
                    console.log(price.substring(price.indexOf("-")+1)) */
                    //$('#price').val(dataObj.price);
                   if(price != null && price.length > 0){
                	   $('#price1').numberbox('setValue',price.substring(0,price.indexOf("-")))
                       $('#price2').numberbox('setValue',price.substring(price.indexOf("-")+1))
                   }
                    $('#phone').val(dataObj.phone);
                    $('#describes').val(dataObj.describes);
                    $('#address').val(dataObj.address);
                    $("#location").val(dataObj.location);
                    $("#dialgPersonalAddress").dialog("open");
                }
                else {
                    $.messager.alert('提示', '操作失败', 'error');
                }
            });
        }
        //模板选择
        function TemplateOperationData(istemplate,addressid){
        	$.post("addPersonalAddress.do","istemplate="+istemplate+"&addressid="+addressid, function(data){
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
            $("#tbPersonalRegion").datagrid("uncheckAll");
            $("#tbPersonalRegion").datagrid("unselectAll");
            $("#tbPersonalRegion").datagrid("reload");
        }
        /*****************价格******************/
        function selectAlonePricePage (id){
        	$('#addressid').val("");
        	$('#addressid').val(id);
        	$("#dialgAlonePricePage").dialog("open");
        	selectAlonePriceData();
        }
      //数据列表
        function selectAlonePriceData() {
        	var addressid = $('#addressid').val();
            $('#tbAlonePrice').datagrid({
                //title: '价格区域信息',//文本标题
                url: 'selectAllAlonePrice.do',//访问路径
                width: '100%',//显示宽度
                height: $(parent.document).find("#mainPanel").height() - 100 > 0 ? $(parent.document).find("#mainPanel").height() - 150 : 400, //高度
                //height:400,
                nowrap: true,//在一行显示
                striped: true,//显示虚线在外框
                collapsible: false,//可折叠的
                remoteSort: true,//从服务器对数据进行排序
                fitColumns: true,//自动展开/收缩列的大小
                columns: [[
                    { field: 'cbx', checkbox: true },
                    { title: '首重', field: 'alonegoodsykg', width: 80, align: 'center' ,formatter: function (value) {
                        if(value > 0){
                        	return value+"kg";
                        }else{
                        	return "0kg";
                        }
                    }},
					{ title: '价格', field: 'alonegoodsykgprice', width: 80, align: 'center', formatter:function (value) {
                        if(value > 0){
                        	return value+"元";
                        }else{
                        	return "0元";
                        }
                        
                    }},
					{ title: '超出首重', field: 'aloneoverload', width: 100, align: 'center' ,formatter:function (value) {
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
                        title: '操作', field: 'aloneprice', width: 100, align: 'center', formatter: function (value, rec) {
                        	var  operation = '';
                        	
                        	operation +=  '<a class="a_edit" href="javascript:;" onclick="EditDataAlonePricePage(' + value + ');$(this).parent().click();return false;">修改</a>';
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
                           AddAlonePriceData();
                       }
                   },
                   {
                       id: 'btndel',
                       text: '删除',
                       iconCls: 'icon-cancel',
                       handler: function () {
                           DelAlonePriceData();
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
      	//dialgAlonePrice
		function AddAlonePriceData(){
			$('#aloneprice').val('');
        	$('#alonegoodsykgprice').numberbox('setValue','');
        	$('#alonegoodsykg').numberbox('setValue','');
            $('#aloneoverload').numberbox('setValue','');
            $('#alonepacking').val('');
            TemplateOperationProvinceData();
            $("#dialgAlonePrice").dialog("open");
		}
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
        function SubmitAlonePrice() {
            if (!$("#formAlonePrice").form("validate")) {
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
                 $.post("addIsUpdataAlonePrice.do",json, function(data){
                	 AlonePriceData();
                    if (data == "1") {
                        $.messager.alert('提示', '操作成功', 'info');
                        $("#dialgAlonePrice").dialog("close");
                    }
                    else {
                        $.messager.alert('提示', '操作失败', 'error');
                        $("#dialgAlonePrice").dialog("open");
                    }
                }); 
            }
        }
		//修改
		 function EditDataAlonePricePage(aloneprice){
			 $.post("upDateAlonePricePage.do","aloneprice="+aloneprice, function(data){
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
			            $("#dialgAlonePrice").dialog("open");
				 }else{
					 
				 }
            }); 
		} 
		function DelAlonePriceData(){
			var selected = "";
            $($('#tbAlonePrice').datagrid('getSelections')).each(function () {
                selected += this.aloneprice + ",";
            });
            selected = selected.substr(0, selected.length - 1);
            if (selected == "") {
                $.messager.alert('提示', '请选择要删除的数据！', 'info');
                return;
            }
            $.messager.confirm('提示', '确认删除？', function (r) {
                if (r) {
                    $.post("deleteByAlonePrice.do", "aloneprice="+selected, function (msg) {
                    	AlonePriceData();
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
        function AlonePriceData() {
            $("#tbAlonePrice").datagrid("uncheckAll");
            $("#tbAlonePrice").datagrid("unselectAll");
            $("#tbAlonePrice").datagrid("reload");
        }
		/***********模板操作**************/
		
        /**************所有关联的模板模板*******************/
        
         function templateAllDataInit(id) {
        	$("#dialgTemplatePage").dialog("open");
            $('#tbAllTemplate').datagrid({
                //title: '地点信息',//文本标题
                url: 'selectTemplateAllData.do',//访问路径
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
                        title: '操作', field: 'templateprice', width: 250, align: 'center', formatter: function (value, rec) {
                        	var  operation = '';
                        	
                        	operation +=  '<a class="a_edit" href="javascript:;" onclick="delTemplateData('+id+',' + value + ');$(this).parent().click();return false;">取消模板</a>';
                            return operation;
                        }
                    }
                ]],
                toolbar: [
                   {
                       id: 'btnadd',
                       text: '选择模板',
                       iconCls: 'icon-add',
                       handler: function () {
                    	   templateChoiceDataInit(id);
                       }
                   }
                ],
                queryParams : {"addressid" : id},
                pagination: true,
                pageNumber: 1,
                pageSize: 10,
                rownumbers: true
            });
        }
        function templateAllData() {
            $("#tbAllTemplate").datagrid("uncheckAll");
            $("#tbAllTemplate").datagrid("unselectAll");
            $("#tbAllTemplate").datagrid("reload");
        }
		function delTemplateData(addressid,templateprice){
			$.messager.confirm('提示', '确认取消？', function (r) {
                if (r) {
                	$.post("delTemplateData.do", "addressid="+addressid+"&templateprice="+templateprice, function (msg) {
                    	if (msg != "0") {
                            $.messager.alert('提示', '取消成功', 'info');
                            templateAllData();
                        }
                        else {
                            $.messager.alert('提示', '取消失败', 'error');
                        }
                    });
                }
            });
			
		}
        /**************选择模板*******************/
        
        function templateChoiceDataInit(id) {
        	$("#dialgTemplateChoicePage").dialog("open");
            $('#tbTemplateChoice').datagrid({
                //title: '地点信息',//文本标题
                url: 'selectAllTemplatePrice.do',//访问路径
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
                    }
                ]],
                toolbar: [
                   {
                       id: 'btnadd',
                       text: '确定模板',
                       iconCls: 'icon-add',
                       handler: function () {
                    	   addTemplateChoiceData(id);
                       }
                   }
                ],
                queryParams : {"personalid" : ${user.personalid},"addressid":id},
                pagination: true,
                pageNumber: 1,
                pageSize: 10,
                rownumbers: true
            });
        }
        function addTemplateChoiceData(id){
			var selected = "";
            $($('#tbTemplateChoice').datagrid('getSelections')).each(function () {
                selected += this.templateprice + ",";
            });
            selected = selected.substr(0, selected.length - 1);
            if (selected == "") {
                $.messager.alert('提示', '请选择价格模板！', 'info');
                return;
            }
            $.messager.confirm('提示', '确认添加？', function (r) {
                if (r) {
                    $.post("addTemplateChoiceData.do", "addressid="+id+"&templateprice="+selected, function (msg) {
                    	
                        if (msg != "0") {
                            $.messager.alert('提示', '添加成功', 'info');
                            templateAllData();
                            $("#dialgTemplateChoicePage").dialog("close");
                        }
                        else {
                            $.messager.alert('提示', '添加失败', 'error');
                        }
                    });
                }
            });
		}
        function templateChoiceData() {
            $("#tbTemplateChoice").datagrid("uncheckAll");
            $("#tbTemplateChoice").datagrid("unselectAll");
            $("#tbTemplateChoice").datagrid("reload");
        }
        /****************************个人地点搜索调用高德api**************************************/
        function Clear(){
			$("addressPage").val("");
		}
		var searchAddress = 0;
		function searchAddressPage(){
			$(".addressChoice").html("");
			$("#addressPage").val("");
			$("#searchAddressPage").dialog("open");
	        var area = $("#area").combobox("getValue");
	        var city = $("#city").combobox("getValue");
	        var province = $("#province").combobox("getValue");
	        if(!(area == null || area === undefined || area == '')){
	        	searchAddress = area 
	        }else  if(!(city == null || city === undefined || city == '')){
	        	searchAddress = city
	        }else  if(!(province == null || province === undefined || province == '')){
	        	searchAddress = province
	        }
		}
		function addressSearch(){
			var addressPage = $("#addressPage").val();
			$(".addressChoice").html("");
			if(!(addressPage == null || addressPage === undefined || addressPage == '')){
				if(searchAddress != 0){
					$.post("addressSiteSearch.do", "addressPage="+addressPage+"&addressSearch="+searchAddress ,function (data) {
						var obj2=eval("("+data+")"); 
						$(obj2).each(function(index,list){   
							console.log(list.name)
							var operation = '<div class="addressShow" onclick="addressChoice(&#34;'+list.id+'&#34;)"  >';
								operation += '<input type="hidden" id="'+list.id+'Address" value="'+list.address+'" >';
								operation += '<input type="hidden" id="'+list.id+'Location" value="'+list.location+'" >';
								operation += '<div class="addressChoiceName" >'+list.name+'</div>';
								operation += '<div class="addressChoiceData" ><div class="dataRegion">'+list.cityname+'-'+list.adname+'-'+list.address+'</div>';
								operation += '</div></div>';
							$(".addressChoice").append(operation);
						});	
					});
				}else{
					$.messager.alert('提示', '请选择一个省分或者城市', 'error');
				}
			}else{
				$.messager.alert('提示', '请输入站点名称', 'error');
			}
		}
		function addressChoice(id){
			var address = $("#"+id+"Address").val();
			var location = $("#"+id+"Location").val();
			$("#location").val(location);
			$("#address").val(address);
			$("#searchAddressPage").dialog("close");
		}
    </script>
</body>
</html>
