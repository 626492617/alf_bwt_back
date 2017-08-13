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
    
         <!-- 封装视频的url -->
         <input type="hidden" id="logourl1" >
    
        <div style="width: 820px; margin: 0 auto">
		<div id="headerPanel" class="easyui-panel">
        <form id="form_edit1" name="form_edit" enctype="multipart/form-data">
             <input type="hidden" id="siteid" name="siteid">
            <table style="text-align: content;margin: 10px;" >
                <tr style="height: 55px"  >
               		<td class="tr1" >站点名称:</td>
                    <td>
						<input id="sitename" name="sitename" class="easyui-validatebox"  style="width: 250px;height: 25px"  />	
                    </td> 
                    <td rowspan="4" colspan="2" style="text-align: center;" align="center" >
                        <span id="inputStr" style="display: none;"></span>
                        <div style="width: 100%; position: relative; text-align: center; margin-top: 10px;">
                            <img id="imgShow" style="width: 150px; height: 120px; cursor: pointer;" src="" />
                            <input type="hidden" id="sitelogo" name="sitelogo"  />
                            <p class="pwenzi"  > 封面图(150*194)</p>
                        </div>
                       	
                    </td>
                </tr>
                <tr style="height: 55px" >
                    <td class="tr1" >
                    	站点简称
                    </td>
                    <td>
                       <input id="siteabbreviation" name="siteabbreviation" class="easyui-validatebox"   style="width: 250px;height: 25px"  />
                    </td>
                  
                </tr>
                <tr style="height: 55px"  >
                    <td class="tr1" >负责人姓名</td>
                    <td>
						<input id="dutypeople" name="dutypeople" class="easyui-validatebox"  style="width: 250px;height: 25px"  />
                           
                    </td>
                </tr>
                <tr style="height: 55px"  >
                    <td class="tr1" >负责人电话</td> 
                    <td>
						<input id="dutyphone" name="dutyphone" class="easyui-validatebox"  style="width: 250px;height: 25px"  />
                           
                    </td>
                </tr>                                                           
                <tr style="height: 55px"  >
                     <td class="tr1" >站点账号</td> 
                    <td>
						<input id="count" class="easyui-validatebox" style="width: 250px;height: 25px"  disabled="disabled"  />
                           
                    </td>
                     <td class="tr1" >站点密码</td> 
                    <td>
						<input id="pwd" class="easyui-validatebox" style="width: 250px;height: 25px"  disabled="disabled"  />
                           
                    </td>
                </tr>
                
                <tr style="height: 55px" >
                     <td class="tr1" >所在省份</td> 
                    <td>
						<input id="province" name="province" class="easyui-combobox" style="width: 250px;height:27px;"  panelheight="100px" editable="editable"  />
                    </td>
                     <td class="tr1" >所在市级</td> 
                    <td>
						<input id="city" name="city" class="easyui-combobox" style="width: 250px;height:27px;" panelheight="100px" editable="editable" />
                    </td>
                </tr>
                <tr style="height: 55px" >
                     <td class="tr1" >所在地区</td> 
                    <td>
						<input id="area" name="area" class="easyui-combobox" style="width: 250px;height:27px;" panelheight="100px" editable="editable" />
                    </td>
                     <td class="tr1" >所在街道</td> 
                    <td>
						<input id="street" name="street" class="easyui-combobox" style="width: 250px;height:27px;" panelheight="100px" editable="editable" />
                    </td>
                </tr>
                <tr style="height: 110px"  >
                    
                     <td class="tr1" >详细地址</td> 
                    <td colspan="3" >
						<textarea id="address" name="address" class="easyui-validatebox" style="width: 660px;height: 85px"  >  </textarea> 
                    </td>
                </tr>
                <tr style="height: 55px">
					
					    <td colspan="4">
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
	  //修改站点省
	    function upDataQueryProvince(){
			$('#province').combobox({
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
			$('#city').combobox({
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
			$('#area').combobox({
	       	 	valueField: 'id',
	            textField: 'name',
	            url: 'selectAllLinkage.do?parentid='+id,
	            onSelect: function (record) {
	            	upDataStreet(record.id);
	            }
	       });
		}
	    //修改街道
	    function upDataStreet(id){
	    	$('#street').combobox({
	       	 	valueField: 'id',
	            textField: 'name',
	            url: 'selectAllLinkage.do?parentid='+id,
	            
	       });
	    }
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
	//清空数据
	function wipeData(){
		$("#siteid").val("");
		$("#province").combobox("getValue","");
        $("#city").combobox("getValue","");
        $("#area").combobox("getValue","");
        $("#street").combobox("getValue","");
        $("#sitename").val("");
        $("#siteabbreviation").val("");
        $("#dutypeople").val("");
        $("#dutyphone").val("");
        $("#address").val("");
        document.getElementById("imgShow").src = "";
        $("#sitelogo").val("");
        
        $('#count').val("");
        $('#pwd').val("");
	}
	function dataLoad(){
		var id = ${user.siteid}
		$("#siteid").val(id);
		 wipeData();
		 $.post("selectBySiteidUpdatap.do", "siteid="+id, function (data) {
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
                 //修改街道
                 if(dataObj.area != null)
                 upDataStreet(dataObj.area);
                 $("#province").combobox("setValue",dataObj.province);
                 $("#city").combobox("setValue",dataObj.city);
                 $("#area").combobox("setValue",dataObj.area);
                 $("#street").combobox("setValue",dataObj.street);
                 $("#sitename").val(dataObj.sitename);
                 $("#siteabbreviation").val(dataObj.siteabbreviation);
                 $("#dutypeople").val(dataObj.dutypeople);
                 $("#dutyphone").val(dataObj.dutyphone);
                 $("#address").val(dataObj.address);
                 document.getElementById("imgShow").src = dataObj.sitelogo;
                 $("#sitelogo").val(dataObj.sitelogo);
                 
                 $('#count').val(dataObj.siteaccount);
                 $('#pwd').val(dataObj.sitepwd);
             }
             else {
                 $.messager.alert('提示', '操作失败', 'error');
             }
	       });
	}
	
	//跳回跳转过来的页面
	function JumpPage() {
		history.go(-1);
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
                            $("#sitelogo").val(largerUrl);
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
