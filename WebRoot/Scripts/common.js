
function UrlBack(UrlStr) {
    window.location.href = UrlStr;
}
// 修复ie8对trim不支持
String.prototype.trim = function () {
    return this.replace(/^\s\s*/, '').replace(/\s\s*$/, '');
}
//获取时间
function CurentTime() {
    var now = new Date();
    var year = now.getFullYear();
    var month = now.getMonth() + 1;
    var day = now.getDate();
    var clock = year + "-";
    if (month < 10)
        clock += "0";

    clock += month + "-";

    if (day < 10)
        clock += "0";
    clock += day + " ";
    return clock;
}

//获取表单数据
function GetInputData(id, cmd) {
    var postdata = "{ \"action\":\"" + cmd + "\",";
    $("#" + id + " input[type='hidden']").each(function () {
        if ($(this).attr("name") != undefined) {
            postdata += "\"" + $(this).attr("name") + "\":\"" + $(this).val() + "\",";
        }

    });
    $("#" + id + " input[type='checkbox']").each(function () {
        if ($(this).attr("name") != undefined) {
            postdata += "\"" + $(this).attr("name") + "\":\"" + this.checked + "\",";
        }
    });
    $("#" + id + " input[type='text']").each(function () {
        if ($(this).attr("name") != undefined) {
            postdata += "\"" + $(this).attr("name") + "\":\"" + $(this).val() + "\",";
        }
    });
    $("#" + id + " input[type='password']").each(function () {
        if ($(this).attr("name") != undefined) {
            postdata += "\"" + $(this).attr("name") + "\":\"" + $(this).val() + "\",";
        }
    });
    $("#" + id + " select").each(function () {
        if ($(this).attr("name") != undefined) {
            postdata += "\"" + $(this).attr("name") + "\":\"" + this.value + "\",";
        }
    });
    $("#" + id + " textarea").each(function () {
        if ($(this).attr("name") != undefined) {
            postdata += "\"" + $(this).attr("name") + "\":\"" + this.value.replace(/\r\n/g, "&lt;br&gt;").replace(/\n/g, "&lt;br&gt;").replace(/\t/g, "&nbsp;&nbsp;") + "\",";
        }
    });
    postdata = postdata.substr(0, postdata.length - 1);
    postdata += "}";
    return eval("(" + postdata + ")");
}

//替换特殊字符
function encodeSpecialWords(str) {
    str = str.replace(/\r\n/g, "&lt;br&gt;");
    str = str.replace(/\n/g, "&lt;br&gt;");
    str = str.replace(/\t/g, "&nbsp;&nbsp;");
    return str;
}

//复原特殊字符
function decodeSpecialWords(str) {
    str = str.replace(/&lt;br&gt;/g, '\n');
    str = str.replace(/&nbsp;&nbsp;/g, "\t");
    return str;
}

//url参数值
function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]); return null; //返回参数值
}

//重写方法
$.extend($.fn.combobox.methods, {
    selectedIndex: function (jq, index) {
        if (!index) {
            index = 0;
        }
        $(jq).combobox({
            onLoadSuccess: function () {
                var opt = $(jq).combobox('options');
                var data = $(jq).combobox('getData');

                for (var i = 0; i < data.length; i++) {
                    if (i == index) {
                        $(jq).combobox('setValue', eval('data[index].' + opt.valueField));
                        break;
                    }
                }
            }
        });
    }
});

function CurentAllTime() {
    var now = new Date();
    var year = now.getFullYear();
    var month = now.getMonth() + 1;
    var day = now.getDate();
    var hour = now.getHours();
    var minutes = now.getMinutes();
    var seconds = now.getSeconds();
    var clock = year + "-";
    if (month < 10)
        clock += "0";
    clock += month + "-";
    if (day < 10)
        clock += "0";
    clock += day + " ";

    if (hour < 10)
        clock += "0";
    clock += hour + ":";

    if (minutes < 10)
        clock += "0";
    clock += minutes + ":";

    if (seconds < 10)
        clock += "0";
    clock += seconds;

    return clock;
}

function ClearFormValue(formID) {
    /// <summary>
    ///  只清空input标签的value
    /// </summary>
    /// <param name="formID">表单id</param>
    $(formID + " input[type!='checkbox']").val("");

    $(formID + " textarea").val("");
}


function GetFormJson(formID, action) {
    /// <summary>
    /// 获取表单数据
    /// </summary>
    /// <param name="formID">表单ID</param>
    /// <param name="cmd">方法</param>
    var postdata = "{ \"action\":\"" + action + "\",";
    $(formID + " input[type!='checkbox']").each(function () {
        postdata += "\"" + $(this).attr("name") + "\":\"" + $(this).val() + "\",";
    });

    $(formID + " input[type='checkbox']").each(function () {
        postdata += "\"" + $(this).attr("name") + "\":\"" + this.checked + "\",";
    });

    //$(formID + " textarea").each(function () {
    //    postdata += "\"" + $(this).attr("name") + "\":\"" + $(this).val() + "\",";
    //});

    postdata = postdata.substr(0, postdata.length - 1);
    postdata += "}";
    return eval("(" + postdata + ")");
}

//当前日期
function CurentDate() {
    var now = new Date();
    var year = now.getFullYear();
    var month = now.getMonth() + 1;
    var day = now.getDate();
    var hour = now.getHours();
    var minutes = now.getMinutes();
    var seconds = now.getSeconds();
    var clock = year + "-";
    if (month < 10)
        clock += "0";
    clock += month + "-";
    if (day < 10)
        clock += "0";
    clock += day + " ";
    return clock;
}
