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
         text-decoration:none;
         <style type="text/css">
			* {margin:0;padding:0;}
			
		</style>
         
      
    </head>
<body>
    
         <!-- 封装视频的url -->
         <input type="hidden" id="logourl1" >
    
        <div style="width: 820px; margin: 0 auto">
		<div id="headerPanel" class="easyui-panel">
        <form id="form_edit1" name="form_edit" enctype="multipart/form-data">
             <input type="hidden" id="contentid" name="id">
            <table>
                <tr>
               		<td>站点名称:</td>
                    <td>
						<select id="ipt_categorystatus1" name="locationnum" type="text" class="easyui-combobox"  style="width: 500px" panelheight="auto" editable="editable "/>
        				</select>		
                    </td> 
                </tr>   
                
                <tr>
                    <td>
                    	站点简称
                    </td>
                    <td>
                        <input id="ipt_categoryname1" name="text" type="text"   style="width: 500px" onPropertyChange="showValue(this.value)"/>
                    </td>
                  
                </tr>
                <tr>
                    <td>负责人姓名</td>
                    <td>
						<input id="ipt_content1" name="content" type="text"    style="width: 500px" />
                           
                    </td>
                </tr>
                <tr>
                    <td>负责人电话</td> 
                    <td>
						<input id="ipt_contentid1" name="contentid" type="text"    required="true"  style="width: 500px" />
                           
                    </td>
                </tr>                                                           
                <tr>
                     <td>站点账号</td> 
                    <td>
						<input id="ipt_newsurl" name="newurl" type="text"     style="width: 500px" />
                           
                    </td>
                </tr>
                <tr>
                     <td>站点密码</td> 
                    <td>
						<input id="ipt_newsurl" name="newurl" type="text"     style="width: 500px" />
                           
                    </td>
                </tr>
                
                <tr>
                     <td>所在省份</td> 
                    <td>
						<input id="ipt_newsurl" name="newurl" type="text"     style="width: 500px" />
                           
                    </td>
                </tr>
                 <tr>
                     <td>所在市级</td> 
                    <td>
						<select id="ipt_datasources" name="datasources" type="text" class="easyui-combobox"  style="width: 500px" panelheight="auto" editable="editable "/>
        				   <option value="1">公司内部视频</option>
        				   <option value="2">其他来源视频</option>
        				</select>	
                    </td>
                </tr>
                <tr>
                     <td>所在地区</td> 
                    <td>
						<input id="ipt_newsurl" name="newurl" type="text"     style="width: 500px" />
                           
                    </td>
                </tr>
                <tr>
                     <td>所在街道</td> 
                    <td>
						<input id="ipt_newsurl" name="newurl" type="text"     style="width: 500px" />
                           
                    </td>
                </tr>
                <tr>
                     <td>所在街道</td> 
                    <td>
						<input id="ipt_newsurl" name="newurl" type="text"     style="width: 500px" />
                           
                    </td>
                </tr>
                 <tr>
                     <td>详细地址</td> 
                    <td>
						<input id="ipt_newsurl" name="newurl" type="text"     style="width: 500px" />
                           
                    </td>
                </tr>
                <tr>
					<td>站点logo</td>
					<td colspan="3" style="text-align: left;"><textarea
							id="articlecontent" name="articlecontent"></textarea>
					</td>
                </tr>
               
                <tr>
					<td></td>
					    <td colspan="3">
							<div style="width: 200px; margin: 0 auto;">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="javascript:;" class="easyui-linkbutton" onclick="Submit()" style="height: 30px; width: 60px;">
								<span style="font-size: 26px; color: #F08833">提交</span></a>
							    <a  href="javascript:;" class="easyui-linkbutton" onclick="JumpPage()" style="height: 30px; width: 60px;">
								<span style="font-size: 26px; color: #F08833">返回</span> </a>
									
							</div>
						</td>
					</tr>
            </table>
        
        </form>
     </div>
     </div>
    <script type="text/javascript">
	function Submit(){
        
        var json = {};
        
        json.locationnum=$("#ipt_categorystatus1").combobox("getValue");
        json.text=$("#ipt_categoryname1").val();
        json.content=$("#ipt_content1").val();
        json.contentid=$("#ipt_contentid1").val();
        json.newurl=$("#ipt_newsurl").val();
        json.logourl=$("#logourl1").val();
        json.datasources=$("#ipt_datasources").combobox("getValue");
         $("#contentedit").dialog("close");
           
         $.post("article_addZArticleVideo.do", json, function (msg) {
         	if (msg == "1") {
         	   $.messager.alert('提示', '操作成功', 'info');
         	    history.go(-1);
             }else {
                 $.messager.alert('提示', '操作失败', 'error');
             }
         });
             
   
    }
	
	
	//跳回跳转过来的页面
	function JumpPage() {
		history.go(-1);
	}
	
	$(function(){
		$("#contentid").val("");
        $("#ipt_categoryname1").val("");
        $("#ipt_content1").val("");
       
        $("#ipt_contentid1").val("");
        $("#ipt_newsurl").val("");
        $("#ipt_faceurl1").val("");
        //加载位置列表
        $('#ipt_categorystatus1').combobox({
            url:'hotmodule_gethotlocationlist.do',
            valueField:'status',
            textField:'localname'
            //加上当选择时候的函数
        });
        
      //给百度编辑器的视频上传添加监听事件
        ue.addListener('afterUpVideo',function(t, arg) {  
            var url=arg[0].url;
            //封装到隐藏域中
            $("#logourl1").val(url);
        });
	
	})
       
    </script>

</body>
</html>
