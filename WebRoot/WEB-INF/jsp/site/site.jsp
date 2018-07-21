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
<body  class="easyui-layout" >
    <input type="hidden" id="companyid" name ="companyid" value="${companyid}" >
    <!--查询条件-->
    <div id="headerSearchPanel" class="easyui-panel">
        <form id="fromSearch" onsubmit="return false;">
            <table>
                <tr>
                    <td>省份</td>
                    <td>
                     	<input id="site_province" name="site_province" class="easyui-combobox" style="width: 200px"  panelheight="100px" editable="editable" />
                    </td>
                    <td>市级</td>
                    <td>
                     	<input id="site_city" name="site_city" class="easyui-combobox" style="width: 200px"  panelheight="100px" editable="editable" />
                    </td>
                    <td>区级(县)</td>
                    <td>
                     	<input id="site_area" name="site_area" class="easyui-combobox" style="width: 200px"  panelheight="100px" editable="editable" />
                    </td>
                    <td>
                        <a href="javascript:;" class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="Search()">查询</a>
                        <a href="javascript:;" class="easyui-linkbutton" data-options="iconCls:'icon-clear'" onclick="Clear()">清空</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>


    <!--数据列表-->
    <table id="tbCompetition"></table>
    <!--赛事信息-->
    <div id="dialgCompetition" class="easyui-dialog" title="赛事信息" style="width: 400px; height: 470px; padding: 10px; " data-options="modal:true,closed:true,buttons:'#btnCompetition'">
        <form id="formCompetition" onsubmit="return false;">
            <table style="text-align: center; margin: 10px;">
            	
            	<tr style="height: 30px" >
            		<td>省份</td>
                    <td>
                     	<input id="province" name="province" class="easyui-combobox" style="width: 200px"  panelheight="100px" editable="editable" />
                    </td>
                    
                </tr>
                <tr style="height: 30px" >
            		
                    <td>市级</td>
                    <td>
                     	<input id="city" name="city" class="easyui-combobox" style="width: 200px"  panelheight="100px" editable="editable" />
                    </td>
                    
                </tr>
                <tr style="height: 30px" >
                    <td>区级(县)</td>
                    <td>
                     	<input id="area" name="area" class="easyui-combobox" style="width: 200px"  panelheight="100px" editable="editable" />
                    </td>
                </tr>
				<tr style="height: 30px" >
                    <td>生成几个站点</td>
                    <td>
                     	<input id="amount" name="amount" class="easyui-validatebox" style="width: 200px" data-options="required:'True'" />
                    </td>
                </tr>
                <tr>
                    <td>公司logo<br />
                        (100px*100px)</td>
                    <td>
                        <span id="inputStr" style="display: none;"></span>
                        <div style="width: 100%; position: relative; text-align: center; margin-top: 10px;">
                            <img id="imgShow" style="width: 100px; height: 100px; cursor: pointer;" src="../images/publish_01.png" />
                            <input type="hidden" id="sitelogo" name="sitelogo" />
                        </div>
                    </td>
                </tr>
                <tr>
                
                	<td colspan="2">
                		<div class="wxts_title" >温馨提示：</div>
                		<div class="wxts" >1.批量生成站点,详细信息可以让个个站点负责人进行完善。</div>
                		<div class="wxts" >2.省,市,区 填写以后 所建立的站点 位置都会归于当前选择的 省,市,区 。</div>
                		<div class="wxts" >3.logo统一用集团logo</div>
                	</td>
                </tr>
            </table>
        </form>
        <div id="btnCompetition">
            <a href="javascript:void;" class="easyui-linkbutton" onclick="Submit()">提交</a>
            <a href="javascript:void;" class="easyui-linkbutton" onclick="$('#dialgCompetition').dialog('close'); return false;">取消</a>
        </div>
    </div>
    <div id="dialgCompetitionSite" class="easyui-dialog" title="赛事信息" style="width: 680px; height: 470px; padding: 10px; " data-options="modal:true,closed:true,buttons:'#btnCompetitionSite'">
        <form id="formCompetitionSite" onsubmit="return false;">
        	<input type="hidden" id= "siteid" name="siteid"  >
            <table style="text-align: center; margin: 10px;">
            	<tr style="height: 30px" >
            		<td>站点全称</td>
                    <td >
                        <input id="up_sitename" name="up_sitename" class="easyui-validatebox" style="width: 200px;" data-options="" />
                    </td>
                    <td>站点简称</td>
                    <td>
                        <input id="up_siteabbreviation" name="up_siteabbreviation" class="easyui-validatebox" style="width: 200px;" data-options="" />
                    </td>
                </tr>
            	<tr style="height: 30px" >
            		<td>站点负责人</td>
                    <td>
                     	<input id="up_dutypeople" name="up_dutypeople" class="easyui-validatebox" style="width: 200px;" data-options=""/>
                    </td>
                    <td>站点负责人电话</td>
                    <td>
                        <input id="up_dutyphone" name="up_dutyphone" class="easyui-validatebox" style="width: 200px;" data-options="" />
                    </td>
                </tr>
                <tr style="height: 30px" >
                    <td>省份</td>
                    <td>
                     	<input id="up_province" name="up_province" class="easyui-combobox" style="width: 200px"  panelheight="100px" editable="editable" />
                    </td>
                    <td>市级</td>
                    <td>
                     	<input id="up_city" name="up_city" class="easyui-combobox" style="width: 200px"  panelheight="100px" editable="editable" />
                    </td>
                </tr>
                <tr style="height: 30px" >
                    <td>区级(县)</td>
                    <td>
                     	<input id="up_area" name="up_area" class="easyui-combobox" style="width: 200px"  panelheight="100px" editable="editable" />
                    </td>
                </tr>
				<tr style="height: 30px" >
                    <td>详细地址</td>
                    <td colspan="3" >
                     	<input id="up_address" name="up_address" class="easyui-validatebox" style="width: 400px" data-options="" />
                    </td>
                </tr>
                 <tr>
                    <td>公司logo<br />
                        (100px*100px)</td>
                    <td>
                        <span id="inputStrSite" style="display: none;"></span>
                        <div style="width: 100%; position: relative; text-align: center; margin-top: 10px;">
                            <img id="imgShowSite" style="width: 100px; height: 100px; cursor: pointer;" src="../images/publish_01.png" />
                            <input type="hidden" id="up_sitelogo" name="up_sitelogo" />
                        </div>
                    </td>
                </tr> 
            	
            </table>
        </form>
        <div id="btnCompetitionSite">
            <a href="javascript:void;" class="easyui-linkbutton" onclick="SubmitSite()">提交</a>
            <a href="javascript:void;" class="easyui-linkbutton" onclick="$('#dialgCompetitionSite').dialog('close'); return false;">取消</a>
        </div>
    </div>
    <!--类型选择框-->
    <div id="tbFightTypeDialog" class="easyui-dialog" title="类型选择" style="width: 600px; height: 600px;" data-options="modal:true,closed:true">
        <table id="tbFightType"></table>
    </div>
    <div id="tbFightChooseEvents" class="easyui-dialog" title="类型选择" style="width: 800px; height: 650px;" data-options="modal:true,closed:true">
        <table id="tbChooseEvents"></table>
    </div>
    <link href="layer/skin/layer.css" rel="stylesheet" />
    <script src="layer/layer.js"></script>
    <script src="Scripts/uploadfile.js"></script>
    <script type="text/javascript">
    <%-- var ftpurl = '<%=res.getString("QNURL")%>'; --%>
        $(function () {
            $('#headerSearchPanel').panel({
                title: '赛事信息查询'
            });
            //数据列表
            CompetitionDataInit();
            //上传图片初始化
            UploadFileInit();
            
            loadDataQueryProvince();
        });
        //省
        function loadDataQueryProvince(){
			$('#site_province').combobox({
           	 	valueField: 'id',
                textField: 'name',
                url: 'selectAllLinkage.do?parentid=0',
                onSelect: function (record) {
                	loadDataQueryCity(record.id);
                }
           });
		}
        //市
        function loadDataQueryCity(id){
			$('#site_city').combobox({
           	 	valueField: 'id',
                textField: 'name',
                url: 'selectAllLinkage.do?parentid='+id,
                onSelect: function (record) {
                	loadDataArea(record.id);
                }
           });
		}
        //区县
        function loadDataArea(id){
			$('#site_area').combobox({
           	 	valueField: 'id',
                textField: 'name',
                url: 'selectAllLinkage.do?parentid='+id,
               
           });
		}
      //省
        function DataQueryProvince(){
			$('#province').combobox({
           	 	valueField: 'id',
                textField: 'name',
                url: 'selectAllLinkage.do?parentid=0',
                onSelect: function (record) {
                	DataQueryCity(record.id);
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
                }
           });
		}
        //区县
        function DataArea(id){
			$('#area').combobox({
           	 	valueField: 'id',
                textField: 'name',
                url: 'selectAllLinkage.do?parentid='+id,
               
           });
		}
      //修改站点省
        function upDataQueryProvince(){
			$('#up_province').combobox({
           	 	valueField: 'id',
                textField: 'name',
                url: 'selectAllLinkage.do?parentid=0',
                onSelect: function (record) {
                	upDataQueryCity(record.id);
                }
           });
		}
        //修改站点市
        function upDataQueryCity(id){
			$('#up_city').combobox({
           	 	valueField: 'id',
                textField: 'name',
                url: 'selectAllLinkage.do?parentid='+id,
                onSelect: function (record) {
                	upDataArea(record.id);
                }
           });
		}
        //修改站点区县
        function upDataArea(id){
			$('#up_area').combobox({
           	 	valueField: 'id',
                textField: 'name',
                url: 'selectAllLinkage.do?parentid='+id,
                onSelect: function (record) {
                	upDataStreet(record.id);
                }
           });
		}
       
        //上传图片初始化
        function UploadFileInit() {
        	var i = 0;
            var options = {
            	action: "nesw_UploadFile.do",
                data: {
                    "fileDirectory": 'UploadFiles/CompetitionFiles',
                    "largeWidth": '200',
                    "largeHeight": '200',
                    "smallWidth": '80',
                    "smallHeight": '80',
                    "fileID": "imgFile",
                    "iswarter": "false",
                    "isoriginal": "false"
                },
                onComplete: function (data) {
                    if (data != "") {
                        var error = data.error;
                        var largerUrl = data.largerUrl;
                        var smallUrl = data.smallUrl;
                        if(i == 0){
                            if (error == "1") {
                                document.getElementById("imgShow").src = largerUrl;
                                $("#sitelogo").val(largerUrl);
                            }
                        } else if(i == 1){
                            if (error == "1") {
                                document.getElementById("imgShowSite").src = largerUrl;
                                $("#up_sitelogo").val(largerUrl);
                            }
                        }
                        if (error == "0") {
                            alert(largerUrl);
                        }
                    }
                }
            };
            //上传图片初始化
            $("#inputStr").InitUploadFile(options);
            $("#imgShow").click(function () {
            	i = 0;
                $("#inputStr").InitUploadFile("upload");
            });
            $("#inputStrSite").InitUploadFile(options);
            $("#imgShowSite").click(function () {
            	i = 1;
                $("#inputStrSite").InitUploadFile("upload");
            });
        }
		/*****************弹窗类型 选择********************/
		function loadDataType(){
			$('#typeid').combobox({
           	 valueField: 'typeid',
                textField: 'lstypename',
                url: 'match_selectAllType.do',
                
           });
		}
        //数据列表
        function CompetitionDataInit() {
            $('#tbCompetition').datagrid({
                title: '赛事数据列表',//文本标题
                url: 'selectAllSiteByCompanyid.do',//访问路径
                width: '100%',//显示宽度
                height: $(parent.document).find("#mainPanel").height() - 100 > 0 ? $(parent.document).find("#mainPanel").height() - 150 : 500, //高度
                nowrap: true,//在一行显示
                striped: true,//显示虚线在外框
                collapsible: false,//可折叠的
                remoteSort: true,//从服务器对数据进行排序
                fitColumns: true,//自动展开/收缩列的大小
                columns: [[
                    { field: 'cbx', checkbox: true },
                    { title: '站点全称', field: 'sitename', width: 200, align: 'center' },
					{ title: '站点简称', field: 'siteabbreviation', width: 200, align: 'center' },
					{
                        title: '公司logo', field: 'sitelogo', width: 200, align: 'center', formatter: function (value) {
                        	if(value == null){
                        		value = '../images/publish_01.png';
                        	}
                            return "<img src='" + value + "' style='width:45px; height:45px;' />";
                        }
                    },
                    { title: '负责人', field: 'dutypeople', width: 100, align: 'center' },
                    {
                        title: '负责人联系电话', field: 'dutyphone', width: 200, align: 'center', formatter: function (value) {
                            return value;
                        }
                    },
                    { title: '站点账号', field: 'siteaccount', width: 200, align: 'center' },
                    { title: '站点密码', field: 'sitepwd', width: 200, align: 'center' },
                    { title: '省份', field: 'provincevo', width: 180, align: 'center' },
                    { title: '市级', field: 'cityvo', width: 180, align: 'center' },
                    { title: '区县', field: 'areavo', width: 180, align: 'center' },
                    
                    {
                        title: '操作', field: 'siteid', width: 150, align: 'center', formatter: function (value, rec) {
                            return '<a class="a_edit" href="javascript:;" onclick="EditData(' + value + ');$(this).parent().click();return false;">修改</a>';
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
                queryParams : {"companyid" : $("#companyid").val()},
                pagination: true,
                pageNumber: 1,
                pageSize: 30,
                rownumbers: true
            });
        }

        //查询数据
        function Search() {
            $("#tbCompetition").datagrid("options").queryParams.province = $("#site_province").combobox("getValue");
            $("#tbCompetition").datagrid("options").queryParams.city = $("#site_city").combobox("getValue");
            $("#tbCompetition").datagrid("options").queryParams.area = $("#site_area").combobox("getValue");
            ReloadClearData();
        }

        //清空
        function Clear() {
            $("#site_province").combobox("setValue","");
            $("#site_city").combobox("setValue","");
            $("#site_area").combobox("setValue","");
            Search();
        }

        //删除数据
        function DelData() {
            var selected = "";
            $($('#tbCompetition').datagrid('getSelections')).each(function () {
                selected += this.siteid + ",";
            });
            selected = selected.substr(0, selected.length - 1);
            if (selected == "") {
                $.messager.alert('提示', '请选择要删除的数据！', 'info');
                return;
            }
            $.messager.confirm('提示', '确认删除？', function (r) {
                if (r) {
                    $.post("deleteBysSite.do", "siteid="+selected, function (msg) {
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
        	DataQueryProvince();
        	$("#province").combobox("setValue", "");//省选择
        	$("#city").combobox("setValue", "");//市
        	$("#area").combobox("setValue", "");//区县
            $("#logo").val("");//图片
            document.getElementById("imgShow").src = "../images/publish_01.png";//默认图片
            $("#amount").val("");//生成几个站点
            $("#dialgCompetition").dialog("open");
        }

        //提交数据
        function Submit() {
            if (!$("#formCompetition").form("validate")) {
                return;
            }
            else {
                var json = {};
                json.companyid=$('#companyid').val();
                json.logo=$('#logo').val(); 
                json.amount=$('#amount').val(); 
                json.province=$("#province").combobox("getValue");
                json.city=$("#city").combobox("getValue");
                json.area=$("#area").combobox("getValue");
                $.post("addProportionSite.do",json, function(data){
                    
                    ReloadClearData();
                    if (data == "1") {
                        $.messager.alert('提示', '操作成功', 'info');
                        $("#dialgCompetition").dialog("close");
                    }
                    else if (data == "2") {
                        $.messager.alert('警告', '数据重复', 'warning');
                    }
                    else {
                        $.messager.alert('提示', '操作失败', 'error');
                    }
                });
            }
        }
		function emptydata(){
			$("#siteid").val("")
			$("#up_province").combobox("getValue","")
            $("#up_city").combobox("getValue","")
            $("#up_area").combobox("getValue","")
            $("#up_sitename").val("");
            $("#up_siteabbreviation").val("");
            $("#up_dutypeople").val("");
            $("#up_dutyphone").val("");
            $("#up_address").val("");
		}
        //修改数据,先读取数据
        function EditData(id) {
        	emptydata();
        	$("#siteid").val(id);
            $("#dialgCompetitionSite").dialog("open");
            $.post("selectBySiteidUpdatap.do","siteid="+id, function (data) {
            	
                if (data != "0") {
                    var dataObj = eval("(" + data + ")");
                    //修改站点省
                    upDataQueryProvince();
                    //修改站点市
                    if(dataObj.province != null)
                    upDataQueryCity(dataObj.province);
                    //修改站点区县
                    if(dataObj.city != null)
                    upDataArea(dataObj.city);
                    $("#up_province").combobox("setValue",dataObj.province);
                    $("#up_city").combobox("setValue",dataObj.city);
                    $("#up_area").combobox("setValue",dataObj.area);
                    $("#up_sitename").val(dataObj.sitename);
                    $("#up_siteabbreviation").val(dataObj.siteabbreviation);
                    $("#up_dutypeople").val(dataObj.dutypeople);
                    $("#up_dutyphone").val(dataObj.dutyphone);
                    $("#up_address").val(dataObj.address);
                    document.getElementById("imgShow").src = dataObj.sitelogo;
                }
                else {
                    $.messager.alert('提示', '操作失败', 'error');
                }
            });
        }
        //提交数据
        function SubmitSite() {
            if (!$("#formCompetitionSite").form("validate")) {
                return;
            }
            else {
                var json = {};
                json.siteid=$('#siteid').val();
                json.companyid=$('#companyid').val();
                json.logo=$('#up_sitelogo').val(); 
                json.sitename=$("#up_sitename").val();
                json.siteabbreviation=$('#up_siteabbreviation').val(); 
                json.dutypeople=$('#up_dutypeople').val(); 
                json.dutyphone=$('#up_dutyphone').val(); 
                json.address=$('#up_address').val(); 
                
                json.province=$("#up_province").combobox("getValue");
                json.city=$("#up_city").combobox("getValue");
                json.area=$("#up_area").combobox("getValue");
                $.post("updataBySiteId.do",json, function(data){
                    if (data == "1") {
                    	ReloadClearData();
                        $.messager.alert('提示', '操作成功', 'info');
                        $("#dialgCompetitionSite").dialog("close");
                        
                    }
                    else if (data == "2") {
                        $.messager.alert('警告', '数据重复', 'warning');
                    }
                    else {
                        $.messager.alert('提示', '操作失败', 'error');
                    }
                });
            }
        }
		
        //清空重新加载数据
        function ReloadClearData() {
            $("#tbCompetition").datagrid("uncheckAll");
            $("#tbCompetition").datagrid("unselectAll");
            $("#tbCompetition").datagrid("reload");
        }

    </script>

</body>
</html>
