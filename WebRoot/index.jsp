<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <base href="${pageContext.request.contextPath }/">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>后台管理系统</title>
    <link href="${pageContext.request.contextPath }/Styles/login.css" rel="stylesheet" type="text/css" />
    <script src="${pageContext.request.contextPath }/Scripts/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
     <script src="${pageContext.request.contextPath }/Scripts/common.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/themes/default/easyui.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/themes/icon.css" rel="stylesheet" />
</head>
<body  id="body" >
    <form id="login"  method="post" action="login.do">
       <%--  <div class="logoTitle">
            <img src="< http://web.slamball.asia/images/logo.png " />
            <div>
                <h1>体总后台管理系统</h1>
            </div>
        </div> --%>
        <div id="inputs">
            <table id="FormId">
            	<tr>
            		<td colspan="2">
            			<!-- <img src="./image/fristimage/loginLogo.png" style="margin-left: 16%;width: 60%;"/> -->
            			<a href="#" id="logintype1" class="easyui-linkbutton" data-options="toggle:true,group:'projectiscombat',plain:true,selected:true"
	                    	onclick="logintype(1);">集团登录</a>
	                   	<a href="#" id="logintype2" class="easyui-linkbutton" data-options="toggle:true,group:'projectiscombat',plain:true"
	                   		onclick="logintype(2);">站点登录</a>
                   		<a href="#" id="logintype3" class="easyui-linkbutton" data-options="toggle:true,group:'projectiscombat',plain:true"
                   			onclick="logintype(3);">个人登录</a>
	                   		<input type="hidden" name="logintype" id="logintype"  />
            		</td>
            	</tr>
                <tr>
                    <td colspan="2">
                    	<img src="./image/fristimage/User.png" class="userImg" />
                        <input id="username" class="input" type="text" placeholder="用户名" autofocus="autofocus" required="required" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <img src="./image/fristimage/Key.png" class="keyImg" />
                    	
                        <input id="password" class="input" type="password" placeholder="密码" required="required" />
                    </td>
                </tr>
                <tr>
                    <td>
                  		<img src="./image/fristimage/yanzhengma.png" class="yanzhengImg" />
                        <input type="text" id="validatecode" class="validatecode" placeholder="验证码" />
                    </td>
                    <td>
                       <!--  <img src="http://web.slamball.asia/Ajax/ValidateCode.ashx"  alt='看不清楚，单击图片换一张。' onclick="this.src= 'http://web.slamball.asia/Ajax/ValidateCode.ashx?t=' + (new Date()).valueOf() " /> -->
                        <img id="yanzhengma" src="loginmanager/getvalidate.do"  alt='看不清楚，单击图片换一张。' onclick="this.src= 'loginmanager/getvalidate.do?t=' + (new Date()).valueOf() " style="border-radius: inherit; "  />
                    </td>
                </tr>
            </table>
        </div>
        <div id="actions">
            <input type="button" class="btn" value="登录" onclick="Login()" />
            <!-- <input type="button" class="btn" value="重置" onclick="Clear()" /> -->
        </div>
    </form>
    <script src="${pageContext.request.contextPath }/Scripts/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
        	 //$("#body").Attr("background","./image/mainimage/2.jpg");
        	// document.body.style.background="./image/mainimage/2.jpg";
        	 var simg="./image/fristimage/4.png";
        	 $("#body").css("background","url("+simg+")");
        	 $("#body").css("background-size","100% 100%"); 
        	 $("#logintype").val(1)
            $(window).keydown(function (event) {//回车键，登录
                if (event.which == "13") {
                    Login();
                }
            });
            
            
        });
        // 修复ie8对trim不支持
        String.prototype.trim = function () {
            return this.replace(/^\s\s*/, '').replace(/\s\s*$/, '');
        }
        //登陆
        function Login() {
            if ($("#username").val().trim() == "") {
                alert("用户名不能为空");
                return;
            }
            if ($("#password").val().trim() == "") {
                alert("密码不能为空");
                return;
            }
            if ($("#validatecode").val().trim() == "") {
                alert("验证码不能为空");
                return;
            }
            
            if($("#validatecode").val().trim() == ""){
            	alert("验证码不正确");
            	return;
            }
            
             $.post('login.do',
                {
                    "sysNumber": $("#username").val(),
                    "sysPwd": $("#password").val(),
                    "validatecode": $("#validatecode").val(),
                    "logintype": $("#logintype").val()
                },
                function (a) {
                    if (a == "1") {
                       
                       window.location.href="loadmain.do";
                    }
                    if (a == "0") {
                        alert("登录失败，用户名或密码不正确");
                    }
                    if (a == "-1") {
                        alert("验证码不正确");
                    }
                }
            ); 
            
            
          
           //$("#login").submit();
            
            
        }
        //清空
        function Clear() {
            $("#username").val("");
            $("#password").val("");
        }
        
       function logintype(type){
    	   $("#logintype").val(type);
       }
        
      
        
    </script>
</body>
</html>
