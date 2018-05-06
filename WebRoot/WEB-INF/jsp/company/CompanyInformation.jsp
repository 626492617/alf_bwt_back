<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>

</title>
    <script src="${pageContext.request.contextPath }/Scripts/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/Scripts/common.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/themes/default/easyui.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/themes/icon.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/Styles/default.css" rel="stylesheet" /> 
    <link href="${pageContext.request.contextPath}/Scripts/uploadify/uploadify.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/Scripts/uploadify/jquery.uploadify-3.1.min.js"></script>
    <link href="${pageContext.request.contextPath}/layer/skin/layer.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/layer/layer.js"></script>
    <script src="${pageContext.request.contextPath}/Scripts/uploadfile.js"></script>
    
   
  	
   
    <style type="text/css">
        a {
         color:black;
         text-decoration:none;}
        
			* {margin:0;padding:0;}
		.pwenzi{
            font-size: 10px;
            color: #787878;
		}
		.tr1{
			width: 150px; 
			text-align: center; 
			font-size: 16px;
			
		}
	</style>
         
      
    </head>
<body onload="" >
    
         
        <div style="width: 820px; margin: 0 auto">
		<div id="headerPanel" class="easyui-panel">
        <form id="form_edit1" name="form_edit" enctype="multipart/form-data">
             <input type="hidden" id="companyid" name="companyid">
            <table style="text-align: content;margin: 10px;" >
                <tr style="height: 55px"  >
               		<td class="tr1" >集团名称:</td>
                    <td>
						<input id="companyname" name="companyname" class="easyui-validatebox"  style="width: 250px;height: 25px"  />	
                    </td> 
                    <td rowspan="4" colspan="2" style="text-align: center;" align="center" >
                        <span id="inputStr" style="display: none;"></span>
                        <div style="width: 100%; position: relative; text-align: center; margin-top: 10px;">
                            <img id="imgShow" style="width: 150px; height: 120px; cursor: pointer;" src="" />
                            <input type="hidden" id="companylogo" name="companylogo"  />
                            <p class="pwenzi"  > 集团logo(150*194)</p>
                        </div>
                       	
                    </td>
                </tr>
                <tr style="height: 55px" >
                    <td class="tr1" >
                    	集团简称
                    </td>
                    <td>
                       <input id="abbreviation" name="abbreviation" class="easyui-validatebox"   style="width: 250px;height: 25px"  />
                    </td>
                  
                </tr>
                <tr style="height: 55px"  >
                    <td class="tr1" >集团账号</td>
                    <td>
						<input id="companyaccount" name="companyaccount" disabled="disabled" class="easyui-validatebox"  style="width: 250px;height: 25px"  />
                           
                    </td>
                </tr>
                <tr style="height: 55px"  >
                    <td class="tr1" >集团密码</td> 
                    <td>
						<input id="companypwd" name="companypwd"  disabled="disabled"  disabled="disabled" class="easyui-validatebox"  style="width: 250px;height: 25px"  />
                           
                    </td>
                </tr>           
                <tr style="height: 55px">
					
					    <td colspan="4">
							<div style="width: 400px; margin: 0 auto;margin-left: 250px;">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="javascript:;" class="easyui-linkbutton" onclick="Submit()" style="height: 30px; width: 120px;">
								<span style="font-size: 26px; color: #F08833">保存资料</span></a>
							    <a  href="javascript:;" class="easyui-linkbutton" onclick="JumpPage()" style="height: 30px; width: 120px;">
								<span style="font-size: 26px; color: #F08833">修改密码</span> </a>
									
							</div>
						</td>
					</tr>
            </table>
        
        </form>
        <div id="dialogInfopwd" class="easyui-dialog" title="修改密码" style="width: 350px; height: 180px;" data-options="modal:true,closed:true,buttons:'#btnFightTypepwd'"   closable="false">
			<form id="formFight">
				<table style="margin: 10px;" class="ticketTable" >
	                 <tr>
	                     <td>新密码</td>
	                     <td>
	                          <input id="newpwd" name="newpwd" class="easyui-validatebox" style="width: 196px" data-options="required:'True'"/>
	                     </td>
	                 </tr>
	                 <tr>
	                     <td>确认新密码</td>
	                     <td>
	                     	<input id="newtopwd" name="newtopwd" class="easyui-validatebox" style="width: 196px"  data-options="required:'True'"  />
	                     </td>
	                 </tr>      
			     </table>
			</form>
			 <div id="btnFightTypepwd">
		         <a href="javascript:void;" class="easyui-linkbutton" onclick="addBodypwd()">提交</a>
		         <a href="javascript:void;" class="easyui-linkbutton" onclick="$('#dialogInfopwd').dialog('close'); return false;">取消</a>
		     </div>
		 </div>
     </div>
     </div>
    <script type="text/javascript">
	  
	function Submit(){
        
        var json = {}; 
        json.companyid = $("#companyid").val();
        json.companyname = $("#companyname").val();
        json.abbreviation = $("#abbreviation").val();
        json.companyaccount = $("#companyaccount").val();
        json.companypwd = $("#companypwd").val();
        json.companylogo = $("#companylogo").val();
         $.post("updataByCompanyId.do", json, function (msg) {
         	if (msg == "1") {
         	   $.messager.alert('提示', '操作成功', 'info');
         	  dataLoad();
             }else {
                 $.messager.alert('提示', '操作失败', 'error');
             }
         });
             
   
    }
	//清空数据
	function wipeData(){
		$("#companyid").val("");
        $("#companyname").val("");
        $("#abbreviation").val("");
        $("#companyaccount").val("");
        $("#companypwd").val("");
        document.getElementById("imgShow").src = "";
        $("#companylogo").val("");
	}
	function dataLoad(){
		wipeData();
		var id = ${user.companyid}
		$("#companyid").val(id);
		 $.post("selectByCompanyUpdatap.do", "companyid="+id, function (data) {
			 if (data != "0") {
				  var dataObj = eval("(" + data + ")");
                 $("#companyname").val(dataObj.companyname);
                 $("#abbreviation").val(dataObj.abbreviation);
                 $("#companyaccount").val(dataObj.companyaccount);
                 $("#companypwd").val(dataObj.companypwd);
                 document.getElementById("imgShow").src = dataObj.companylogo;
                 $("#companylogo").val(dataObj.companylogo);
             }
             else {
                 $.messager.alert('提示', '操作失败', 'error');
             }
	       });
	}
	
	//跳回跳转过来的页面
	function JumpPage() {
		$("#newpwd").val("");
		$("#newtopwd").val("");
		$("#dialogInfopwd").dialog("open");
	}
	function addBodypwd(){
		var newpwd = $("#newpwd").val();
		var newtopwd = $("#newtopwd").val();
		if (!$("#formFight").form("validate")) {
            return;
        }else{
        	if(newpwd == newtopwd){
        		var json = {};
        		json.pwd =  newtopwd;
        		$.post("updataByCompanyPwd.do", json, function (msg) {
	                if (msg == "1") {
	                 	$.messager.alert('提示', '操作成功 。。三秒后自动跳转', 'info');
	                 	setTimeout(function(){window.parent.location.href = "index.jsp"; }, 3000);
	                 	
	                }else {
	                	$.messager.alert('提示', '操作失败', 'error');
	                }
                });
        	}else{
   				$.messager.alert('提示', '密码不一致', 'error');
   			}
        }
			
		
	}
	$(function(){
		UploadFileInit();
		dataLoad();
	})
       //上传图片初始化
        function UploadFileInit() {
        
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
                        if (error == "1") {
                            document.getElementById("imgShow").src = largerUrl;
                            $("#personallogo").val(largerUrl);
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
                $("#inputStr").InitUploadFile("upload");
            });
        }
    </script>

</body>
</html>
