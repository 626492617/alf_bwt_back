(function ($) {
    $.fn.InitUploadFile = function (options, param) {
        defaults = {
            action: "../Ajax/UpLoadImageHandler.ashx",
            data: {
                "fileDirectory": 'UploadFiles/UploadStudent',
                "largeWidth": '',
                "largeHeight": '',
                "smallWidth": '',
                "smallHeight": '',
                "fileID": "imgFile",
                "iswarter": "false",
                "isoriginal": "true",
                "warterurl": "../images/watermark.png",
                "margin": "10",//水印边距
                "transparence": "0.9",//水印透明度(值越高透明度越低,范围在0.0~1.0之间)
                "position": "LeftBottom"//水印位置[左上:LeftTop ,左中:Left, :左下LeftBottom, 
                // 正上:Top,正中:Center, 正下:Bottom
                //右上:RightTop,右中:RightCenter,右下:RigthBottom]
            },
            extension: ".jpg|.png|.jpeg|.gif",
            fileID: 'imgFile',
            onComplete: function (response) {
            }
        };
        //方法
        if (typeof (options) == 'string') {
            var method = $.fn.InitUploadFile.methods[options];
            if (method) {
                return method(this, param);
            }
        }
        options = options || {};
        return this.each(function () {
            var state = $.data(this, 'uploadfile');
            if (state) {
                $.extend(state.options, options);
            }
            else {
                options = $.extend({}, defaults, options);
                $.data(this, 'uploadfile', {
                    options: options
                });
                return Init(options, this);
            }

        });
    }
    //方法
    $.fn.InitUploadFile.methods = {
        reload: function (jq, param) {
            return jq.each(function () {
                var setting = $.data(this, 'uploadfile').options;
                setting = $.extend({}, setting, param);
                Init(setting, this);
                var fileid = setting.fileID;
                $("#" + fileid).click();
            });
        },
        upload: function (jq) {

            return jq.each(function () {
                var setting = $.data(this, 'uploadfile').options;
                var fileid = setting.fileID;
                $("#" + fileid).click();
            });
        }

    }
    //初始化
    function Init(setting, ele) {
        var fileid = setting.fileID;
        var frameid = "frameFile" + fileid;
        var formid = "formFile" + fileid;
        var iframe = createIframe(frameid);
        var from = createForm(setting.data, setting.action, fileid, frameid, formid);
        $(ele).empty();
        $(ele).append(iframe).append(from);
        AddEventSubmitFile(setting);
    }

    function createFileInput(fileid) {
        var input = document.createElement("input");
        input.setAttribute('type', 'file');
        input.setAttribute('name', fileid);
        input.setAttribute('id', fileid);
        input.className = "imgFile";
        return input;
    }
    //生成form
    function createForm(data, action, fileid, iframeid, formid) {
        var form = toElement('<form method="post" enctype="multipart/form-data"></form>');
        form.setAttribute('id', formid);
        form.setAttribute('action', action);
        form.setAttribute('target', iframeid);

        for (var prop in data) {
            if (data.hasOwnProperty(prop)) {
                var el = document.createElement("input");
                el.setAttribute('type', 'hidden');
                el.setAttribute('name', prop);
                el.setAttribute('value', data[prop]);
                form.appendChild(el);
            }
        }
        var fileInput = createFileInput(fileid);
        form.appendChild(fileInput);
        return form;
    }
    //生成iframe
    function createIframe(frameid) {
        var iframe = toElement('<iframe></iframe>');
        iframe.setAttribute('id', frameid);
        iframe.setAttribute('name', frameid);
        iframe.style.display = 'none';
        return iframe;
    }

    function toElement(html) {
        var div = document.createElement('div');
        div.innerHTML = html;
        var el = div.firstChild;
        return div.removeChild(el);
    }
    //上传图片事件
    function AddEventSubmitFile(setting) {
        var fileid = setting.fileID;
        $("#" + fileid).unbind("change");
        //文件改变上传
        $("#" + fileid).change(function () {

            var defaults = setting;
            var id = this.id;
            var formid = "formFile" + id;
            var frameid = "frameFile" + fileid;
            //判断文件扩展名
            var file = document.getElementById(id).files[0];
            var fileName = file.name;
            fileName = fileName.toLocaleLowerCase();
            var file_typename = fileName.substring(fileName.lastIndexOf('.'), fileName.length);
            if (file) {

                var count = 0;
                var fileExtension = defaults.extension.split('|');
                for (var i = 0; i < fileExtension.length; i++) {
                    if (file_typename == fileExtension[i]) {
                        count += 1;
                    }
                }
                if (count == 0) {
                   
                    alert("文件扩展名应为:" + defaults.extension);
                   
                }
                if (count > 0) {
                    ShowUpLoadFile();
                    $("#" + formid).submit();
                    GetResponse(frameid, defaults);
                }
            }
            else {
                alert("文件不存在");
            }
        });
    }

    //获取返回值
    function GetResponse(frameid, defaults) {
        var iframe = document.getElementById(frameid);
        var self = this;
        iframe.onload = function () {
            var doc = iframe.contentDocument ? iframe.contentDocument : window.frames[frameid].document;
            if (doc.readyState && doc.readyState != 'complete') {
                return;
            }
            if (doc.body && doc.body.innerHTML == "false") {
                return;
            }

            var response = "";

            if (doc.XMLDocument) {
                response = doc.XMLDocument;
            }
            if (doc.body) {
                response = doc.body.innerHTML;
                if (response) {
                    response = eval("(" + response + ")");
                }
                else {
                    response = {};
                }
            }
            CloseUpLoadFile();
            //调用一个对象的一个方法，以另一个对象替换当前对象。 
            defaults.onComplete.call(self, response);
        }
    }

})(jQuery);

var $layer;
//打开滚动
function ShowUpLoadFile() {
    $layer = layer.load(3, {
        shade: [0.5, '#000']
    });

}
//关闭滚动
function CloseUpLoadFile() {
    layer.close($layer);
}
 


