<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="${pageContext.request.contextPath }/Scripts/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/themes/default/easyui.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/Scripts/jquery-easyui-1.3.6/themes/icon.css" rel="stylesheet" /><title>
           后台管理系统 
</title>

    <style type="text/css">
        /****** DOM-标签初始化 ******/
        * {
            font-size: 12px;
            font-family: Tahoma,Verdana,微软雅黑,新宋体;
        }

        body, div, ul, ol, li, h1, h2, h3, h4, h5, h6, form, fieldset, input, p, {
            margin: 0;
            padding: 0;
        }

        body {
            font-size: 100%;
            -webkit-text-size-adjust: 100%;
            font-family: Verdana, Microsoft YaHei, Simsun;
        }

        ol, ul {
            list-style: none;
            list-style-type: none;
            vertical-align: middle;
            margin-top: 0px;
            margin-bottom: 0px;
        }

        button, input, textarea, select {
            -webkit-appearance: none;
            margin: 0;
            padding: 0;
            outline: none;
        }

        fieldset, img {
            border: none;
            vertical-align: middle;
        }

        a {
            color: #fff;
            text-decoration: none;
        }

        /* 清理浮动 */
        .fn-clear:after {
            visibility: hidden;
            display: block;
            font-size: 0;
            content: " ";
            clear: both;
            height: 0;
        }

        .fn-clear {
            zoom: 1; /* for IE6 IE7 */
        }

        .manage {
            width: 88%;
            overflow-x: hidden;
        }

        .manage-list {
            background-color: #ededed;
            padding: 5px;
            width: 100%;
        }

        .titleheader {
            text-align: center;
            background-color: #d3d3d3;
            color: #000;
            font-size: 1.3em;
            color: #fff;
        }

        .title {
            padding: 5px 0 5px 5px;
            color: #fff;
            margin-bottom: 10px;
            color: #000;
            font-size: 1.3em;
            color: #fff;
        }

        .card {
            float: left;
            margin: 5px;
            color: #ffffff;
            border-radius: 3px;
            width: 10%;
            height: 80px;
            min-width: 80px;
        }


        .manage-list li {
            background-color: #ededed;
        }

        .con {
            text-align: center;
            padding-top: 5px;
        }

            .con img {
                width: 45px;
                min-width: 45px;
            }

            .con a {
                font-size: 80%;
                color: black;
            }


        .item_a {
            vertical-align: text-bottom;
            display: block;
            background-color: #E2E2E2;
            width: 99%;
            font-size: 14px;
            height: 30px;
            text-indent: 40px;
           /*  border-left: 1px solid red;
            border-right: 1px solid red;
            border-bottom: 1px solid red; */
            line-height: 30px;
        }

        #ww a:link, #ww a:visited {
            color: #D93939;
		    /* background-color: #E2E2E2; */
		    background-color: #F2F9FF;
		    text-decoration: none;
		    vertical-align: middle;
        }

        #ww a:hover {
            /*font-size: 16px;
            color: #fff;
            background-color: #0092DC;*/
            background-color: #E2E2E2;
            text-decoration: none;
        }

        #ww a:active {
            background-color: #d3d3d3;
            text-decoration: none;
        }

        .boxcontent {
            margin-top: 10px;
            border-radius: 5px;
            padding: 2px;
            background-color: #fff;
        }

        .box {
            border-radius: 5px;
            border: 1px dashed rgba(0, 0, 0, 0.3);
        }

        .boxtitle {
            padding: 0px 5px 0px 10px;
            background-color: #808080;
            border-radius: 3px 3px 3px 0;
            color: #ffffff;
            height: 22px;
            line-height: 22px;
            font-size: 16px;
        }

        .boxdetail {
            padding: 10px;
            height: auto;
            width: 100%;
            overflow: auto;
            zoom: 1;
        }

        .boxitem {
            margin-top: 15px;
            height: 40px;
            width: 100px;
            border-radius: 5px;
            background-color: #818999;
            text-align: center;
            float: left;
            margin-left: 10px;
        }

        .boxitem_a {
            color: #ffffff;
            text-decoration: none;
            font-size: 14px;
            line-height: 40px;
            display: block;
            height: 40px;
        }

        .panelhead {
            height: 65px;
            font-size: 26px;
        }

        .manage .panel-tool {
            display: none;
        }

        .accordion-header-selected a:hover {
            background-color: #9c0202;
        }

        .layout-panel .panel-title {
            background-color: #fff;
            color: black;
            border-bottom: 1px solid #EBECF1;
        }

        #form1 > .panel > .panel-body {
            overflow: no-display !important;
        }

        .panel-header {
            width: 280px !important;
        }

        .layout-panel-center {
            left: 280px !important;
            position: relative;
            z-index: 9;
        }

        .panel-title {
            width: 1400px !important;
        }

        .item_a {
            width: 100% !important;
            padding-left: 32px;
        }
		.panel-title {
		    font-size: 14px !important;
		    font-weight: 500;
		    background-color: #9c0202;
		    font-size: 16px;
		    color: white;
		    padding: 8px 0px 8px 66px;
		}
        .panel-body-noborder {
            overflow-y: auto !important;
        }

            .panel-body-noborder .manage .panel {
                width: 100% !important;
            }

        .easyui-panel, .panel-body {
            width: 100% !important;
        }

        .tabs-wrap {
            width: 100% !important;
        }
        .tabs{
      	    height: 32px !important;
    		border-left: 1px solid #ebecf1;
        }
        .layout-split-west>.panel-header>.panel-title{
        	font-weight: bold;
        	font-size: 15px;
        }
        .headerSearchPanel{
       	    padding: 3px 0;
        }
        .datagrid-header-check input, .datagrid-cell-check input {
		    margin: 0;
		    padding: 0;
		    width: 17px;
		    height: 17px;
		}
    </style>
</head>
<body class="easyui-layout" style="" scroll="no">
    <form method="post" action="Index.aspx" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>

        <div region="north" split="true" border="false" style="overflow: hidden; height: 80px; background: #F3F3F3; line-height: 30px; color: #fff; font-family: Verdana, 微软雅黑,黑体">
            <!-- <div style="width: 280px; height: 80px; float: left; background-image: url(http://web.slamball.asia/Scripts/jquery-easyui-1.3.6/themes/default/images/logo.png); background-size: 100%; background-color: #9c0202; background-repeat: no-repeat; background-position: center;"> -->
            <!-- </div> -->
            <div style="float: left;width: 100%;line-height: 80px;background: #3E4E67;">
                <div style="float: left;">
                    <span style="color: black"><img style="padding-left: 32px;" src="./image/fristimage/logoindex.png"></span>
                </div>
                <div style="width: auto; height: 35px; float: right; color: #fff;">
                    <img src="./image/fristimage/gongsi.png" style="width: 22px; height: 22px; margin-right: 8px;font-size: 14px;" />${name } &nbsp;&nbsp; &nbsp;&nbsp;
                    <a href="#" id="UpdateLogin" style="text-decoration: none; color: #fff;">
                        <img src="./image/fristimage/pass.png" style="width: 22px; height: 22px; margin-right: 8px;font-size: 14px;" />修改密码&nbsp;&nbsp;
                    </a>&nbsp; &nbsp;
                    <a href="#" id="loginOut" style="text-decoration: none; color: #fff;">
                        <img src="./image/fristimage/tuichu.png" style="width: 22px; height: 22px; margin-right: 8px;font-size: 14px;" />安全退出&nbsp;&nbsp;
                    </a>&nbsp; &nbsp;
                     
                    <a href="#" id="" style="text-decoration: none; color: #fff;" onclick="SelectPage()">
                        <img src="./image/fristimage/gongzhonghao.png" style="width: 22px; height: 22px; margin-right: 8px;font-size: 14px;" />公众号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    </a>&nbsp; &nbsp;
                    
                </div>
            </div>
        </div>
        
        <div region="west" split="true" title="导航菜单" style="width: 295px; overflow-y: scroll; overflow-x: hidden;" id="west">
            <div class="easyui-accordion" fit="true" border="false" id="leftaccordion" style="height: auto"></div>
        </div>
        <div id="mainPanel" region="center" style="background: #eee; overflow-y: hidden">
            <div id="tabs" class="easyui-tabs" fit="true" border="false">
                <div title="欢迎使用" style="padding: 10px; overflow-y: hidden;">
                    
                    <div class="manage" style="width:100%">
                        <img alt="" src="./image/fristimage/welcome.png" style="width:100%">
       
                            
                    </div>
                    
                </div>
            </div>
        </div>
        
        <div id="passworddialog" class="easyui-dialog" title="修改密码" style="width: 200px; height: 200px;"
            modal="true" closed="true" buttons="#editbuttons" closable="false">
            <table>
                
                <tr>
                    <td>旧密码
                    </td>
                    <td>
                        <input type="password" id="oldpassword" class="easyui-validatebox" required="true"
                            style="width: 120px;" />
                    </td>
                </tr>
                <tr>
                    <td>新密码
                    </td>
                    <td>
                        <input type="password" id="newpassword" class="easyui-validatebox" required="true"
                            style="width: 120px;" />
                    </td>
                </tr>
            </table>
            <div id="editbuttons">
                <a href="javascript:;" class="easyui-linkbutton"
                    onclick="UpdateLogin()">提交</a> <a href="javascript:;" class="easyui-linkbutton"
                        onclick="$('#passworddialog').dialog('close');return false;">关闭</a>
            </div>
        </div>
        <div id="mm" class="easyui-menu" style="width: 150px;">
            <div id="mm-tabclose">
                关闭
            </div>
            <div id="mm-tabcloseall">
                全部关闭
            </div>
            <div id="mm-tabcloseother">
                除此之外全部关闭
            </div>
            <div class="menu-sep">
            </div>
            <div id="mm-tabcloseright">
                当前页右侧全部关闭
            </div>
            <div id="mm-tabcloseleft">
                当前页左侧全部关闭
            </div>
            <div class="menu-sep">
            </div>
            <div id="mm-exit">
                退出
            </div>
        </div>
    </form>
       <div id="hotupload" class="easyui-dialog" title="系统提示"
    style="width: 350px; height: 200px;" modal="true" closed="true"
    closable="false" buttons="#imgbtn">
          由于长时间没有操作，请重新登陆
    <div id="imgbtn">
      <a href="javascript:;"class="easyui-linkbutton" onclick="out()">确定</a> 
      <a href="javascript:;" class="easyui-linkbutton"
        onclick="out()">关闭</a>
    </div>
  </div>
</body>
<script type="text/javascript">
 var clear= window.setInterval(testTime, 1000);
 var lastTime = new Date().getTime();
        var currentTime = new Date().getTime();
        var timeOut =  15*60*1000; //设置超时时间
        function testTime(){
            currentTime = new Date().getTime();
            if(currentTime - lastTime > timeOut){ 
            window.clearInterval(clear);
            $("#hotupload").dialog("open");
           
            }
        }
      
        function out()
        {
       	 $.post('out.do',function (aa) {
       		 $("#hotupload").dialog("close");
             if (aa == 'ok') {
                 location.href = "index.jsp";
             }
   });
        }
    // 修复ie8对trim不支持
    String.prototype.trim = function () {
        return this.replace(/^\s\s*/, '').replace(/\s\s*$/, '');
    };
  
    $(function () {
    $(document).mouseover(function(){
                lastTime = new Date().getTime(); //更新操作时间
            });
        tabClose();
        tabCloseEven();
        InitLeftMenus();
        $('#loginOut').click(function () {
            $.messager.confirm('系统提示', '您确定要退出本次登录吗?', function (r) {
                if (r) {
                    $.post(
                       'out.do',
                       function (aa) {
                           if (aa == 'ok') {
                               location.href = "index.jsp";
                           }
                           else {
                               $.messager.alert('提示', '退出失败', 'info');
                           }
                       });
                }
            });
        });
        //修改密码
        $("#UpdateLogin").click(function () {
            $('#reusername').val("");
            $('#oldpassword').val("");
            $('#newpassword').val("");
            $("#passworddialog").dialog("open");
        });
    });
    //初始化左侧
    function InitLeftMenus() {
        $('#leftaccordion').accordion({
            animate: false,
            fit: false,
            height: 'auto'
        });
        
        //发送请求获得json数据 ，  可以封装msg的对象
        $.post('loadleftaccordion.do',
         function (msg) {
               
             //将json转为对象
             if (msg != "") {
                
                var jsonObj = eval(msg);
                
                 
                 $.each(jsonObj, function (index, MenuInfo) {
                     
                     $("#leftaccordion").accordion('add', {
                         id: MenuInfo.id,
                         title: MenuInfo.name,
                         //content为新添加的折叠面板内容
                         content: function () {
                             var MenuItemStr = '<ul class="easyui-panel" id="ww" > ';
                             
                             $.each(MenuInfo.func, function (index, func) {
                              
                                 MenuItemStr += '<li ><a class="item_a" href="#" id="item_'
                                 + func.fid + '" onclick="BindTabInfo('
                                 + func.fid
                                 + ')" ref="' + func.pageurl
                                 + '" rel="' + func.imageurl
                                 + ' "><span class="nav">'
                                 + func.fname
                                 + '</span></a></li> ';
                                 
                                 
                                 
                             });
                             MenuItemStr +='</ul>';
                             
                             return MenuItemStr;
                         },
                         selected: false
                     });

                 }); 

             }
         });
    }
    //绑定选项卡信息
    function BindTabInfo(id) {
        
        var $id = "#item_" + id;
        var $item = $($id);
        var $tabTitle = $item.children('.nav').text();
        var $url = $item.attr("ref");
        var $icon = $item.attr("rel");
       
        addTab($tabTitle, $url, $icon);
    }
    //绑定选项卡信息
    function BindTabInfoByBoxItem(id) {
        var $id = "#box_" + id;
        var $item = $($id);
        var $tabTitle = $item.attr("title");
        var $url = $item.attr("name");
        var $icon = $item.attr("rel");
        addTab($tabTitle, $url, $icon);
    }
    //添加选项卡
    function addTab(subtitle, url, icon) {
        if (!$('#tabs').tabs('exists', subtitle)) {
            $('#tabs').tabs('add', {
                title: subtitle,
                content: createFrame(url),
                closable: true,
                //icon: icon
            });
        }
        else {
            $('#tabs').tabs('select', subtitle);
        }
        tabClose();
    }
    //增加框架
    function createFrame(url) {
        var s = '<iframe scrolling="auto" frameborder="0"  src="' + url + '" style="width:100%;height:100%;"></iframe>';
        return s;
    }
    //关闭TAB选项卡
    function tabClose() {
        /*双击关闭TAB选项卡*/
        $(".tabs-inner").dblclick(function () {
            var subtitle = $(this).children(".tabs-closable").text();
            $('#tabs').tabs('close', subtitle);
        })
        /*为选项卡绑定右键*/
        $(".tabs-inner").bind('contextmenu', function (e) {
            $('#mm').menu('show', {
                left: e.pageX,
                top: e.pageY
            });
            var subtitle = $(this).children(".tabs-closable").text();
            $('#mm').data("currtab", subtitle);
            $('#tabs').tabs('select', subtitle);
            return false;
        });
    }
    //绑定右键菜单事件
    function tabCloseEven() {
        //关闭当前
        $('#mm-tabclose').click(function () {
            var currtab_title = $('#mm').data("currtab");
            $('#tabs').tabs('close', currtab_title);
        })
        //全部关闭
        $('#mm-tabcloseall').click(function () {
            $('.tabs-inner span').each(function (i, n) {
                var t = $(n).text();
                $('#tabs').tabs('close', t);
            });
        });
        //关闭除当前之外的TAB
        $('#mm-tabcloseother').click(function () {
            var currtab_title = $('#mm').data("currtab");
            $('.tabs-inner span').each(function (i, n) {
                var t = $(n).text();
                if (t != currtab_title)
                    $('#tabs').tabs('close', t);
            });
        });
        //关闭当前右侧的TAB
        $('#mm-tabcloseright').click(function () {
            var nextall = $('.tabs-selected').nextAll();
            if (nextall.length == 0) {
                //msgShow('系统提示','后边没有啦~~','error');
                alert('后边没有啦~~');
                return false;
            }
            nextall.each(function (i, n) {
                var t = $('a:eq(0) span', $(n)).text();
                $('#tabs').tabs('close', t);
            });
            return false;
        });
        //关闭当前左侧的TAB
        $('#mm-tabcloseleft').click(function () {
            var prevall = $('.tabs-selected').prevAll();
            if (prevall.length == 0) {
                alert('到头了，前边没有啦~~');
                return false;
            }
            prevall.each(function (i, n) {
                var t = $('a:eq(0) span', $(n)).text();
                $('#tabs').tabs('close', t);
            });
            return false;
        });
        //退出
        $("#mm-exit").click(function () {
            $('#mm').menu('hide');
        })
    }
    //更新密码
    function UpdateLogin() {
        var $oldpassword = $('#oldpassword').val().trim();
        var $newpassword = $('#newpassword').val().trim();
        if ($oldpassword == '') {
            $.messager.alert("提示", "旧密码不能为空", "warning");
            return;
        }
        if ($newpassword == '') {
            $.messager.alert("提示", "新密码不能为空", "warning");
            return;
        }
        $.post('uppassword.do',
                {
                    "newpwd": $newpassword,
                    "oldpwd": $oldpassword
                },
                function (a) {
                    if (a == 'ok') {
                        $.messager.alert("提示", "密码修改成功", "info");

                        $("#passworddialog").dialog("close");
                    }
                    else {
                        $.messager.alert("提示", "密码修改失败", "warning");

                    }
                }
            );
    }
    //跳转页面
    function SelectPage() {
       /*  location.href = "http://115.159.121.164:8090/" */
    }
</script>
</html>

