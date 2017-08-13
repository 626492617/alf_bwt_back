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
<body>
    <input type="hidden" id="siteid" name ="siteid" value="${site}" >
    <!--查询条件-->
    <div id="headerSearchPanel" class="easyui-panel">
        <form id="fromSearch">
            <table>
                <tr>
                    <td>姓名</td>
                    <td>
                     	<input id="cz_personalname" name="cz_personalname" class="easyui-validatebox" style="width: 200px;" data-options="" />
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
    <!--员工添加-->
    <div id="dialgCompetition" class="easyui-dialog" title="员工添加" style="width: 400px; height: 270px; padding: 10px; " data-options="modal:true,closed:true,buttons:'#btnCompetition'">
        <form id="formCompetition">
            <table style="text-align: center; margin: 10px;">
				<tr style="height: 30px" >
                    <td>生成几位员工</td>
                    <td>
                     	<input id="amount" name="amount" class="easyui-validatebox" style="width: 200px" data-options="required:'True'" />
                    </td>
                </tr>
                <tr>
                	<td colspan="2">
                		<div class="wxts_title" >温馨提示：</div>
                		<div class="wxts" >批量生成员工,详细信息可以让每位员工进行完善。(必须进行完善  )</div>
                		<!-- <div class="wxts" >2.省,市,区 填写以后 所建立的站点 位置都会归于当前选择的 省,市,区 。</div> -->
                		<!-- <div class="wxts" >3.logo统一用集团logo</div> -->
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
        <form id="formCompetitionSite">
        	<input type="hidden" id= "siteid" name="siteid"  >
            <table style="text-align: center; margin: 10px;">
            	<tr style="height: 30px" >
            		<td>姓名</td>
                    <td >
                        <input id="personalname" name="personalname" class="easyui-validatebox" style="width: 200px;" data-options="" />
                    </td>
                    <td>电话</td>
                    <td>
                        <input id="personalphone" name="personalphone" class="easyui-validatebox" style="width: 200px;" data-options="" />
                    </td>
                </tr>
            	<tr style="height: 30px" >
            		<td>个人账号</td>
                    <td>
                     	<input id="personalaccount" name="personalaccount" class="easyui-validatebox" style="width: 200px;" data-options=""/>
                    </td>
                    <td>个人密码</td>
                    <td>
                        <input id="personalpwd" name="personalpwd" class="easyui-validatebox" style="width: 200px;" data-options="" />
                    </td>
                </tr>
                
                 <tr>
                    <td>头像<br />
                        (100px*100px)</td>
                    <td>
                        <span id="inputStrSite" style="display: none;"></span>
                        <div style="width: 100%; position: relative; text-align: center; margin-top: 10px;">
                            <img id="imgShowSite" style="width: 100px; height: 100px; cursor: pointer;" src="../images/publish_01.png" />
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
            
            
           // loadDataQueryProvince();
        });
        
      /* //省
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
		} */
      
		
        //数据列表
        function CompetitionDataInit() {
            $('#tbCompetition').datagrid({
                title: '员工信息',//文本标题
                url: 'selectAllPersonalBySiteid.do',//访问路径
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
					{ title: '个人姓名', field: 'personalname', width: 200, align: 'center' },
					{
                        title: '头像', field: 'personallogo', width: 200, align: 'center', formatter: function (value) {
                        	if(value == null){
                        		value = '../images/publish_01.png';
                        	}
                            return "<img src='" + value + "' style='width:45px; height:45px;' />";
                        }
                    },
                    {
                        title: '联系电话', field: 'personalphone', width: 200, align: 'center', formatter: function (value) {
                            return value;
                        }
                    },
                    { title: '站点账号', field: 'personalaccount', width: 200, align: 'center' },
                    { title: '站点密码', field: 'personalpwd', width: 200, align: 'center' },
                    {
                        title: '操作', field: 'personalid', width: 150, align: 'center', formatter: function (value, rec) {
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
                queryParams : {"siteid" : $("#siteid").val()},
                pagination: true,
                pageNumber: 1,
                pageSize: 30,
                rownumbers: true
            });
        }

        //查询数据
        function Search() {
            $("#tbCompetition").datagrid("options").queryParams.personalname = $("#cz_personalname").val();
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
            $($('#tbCompetition').datagrid('getSelections')).each(function () {
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
                json.siteid=$('#siteid').val();
                json.amount=$('#amount').val(); 
                $("#dialgCompetition").dialog("close");
                $.post("addProportionPersonal.do",json, function(data){
                    
                    ReloadClearData();
                    if (data == "1") {
                        $.messager.alert('提示', '操作成功', 'info');
                    }
                    else if (data == "2") {
                        $.messager.alert('警告', '数据重复', 'warning');
                        $("#dialgCompetition").dialog("open");
                    }
                    else {
                        $.messager.alert('提示', '操作失败', 'error');
                        $("#dialgCompetition").dialog("open");
                    }
                });
            }
        }
		function emptydata(){
			$("#personalname").val("");
            $("#personalphone").val("");
            $("#personalaccount").val('');
            $("#personalpwd").val('');
		}
        //修改数据,先读取数据
        function EditData(id) {
        	emptydata();
            $("#dialgCompetitionSite").dialog("open");
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
      
    </script>

</body>
</html>
