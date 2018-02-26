<%--
  Created by 蓝鸥科技有限公司  www.lanou3g.com.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>项目其他信息</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="/css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="/swfupload/swfupload.js" type="text/javascript"></script>
    <script src="/scripts/boot.js" type="text/javascript"></script>
    <script src="/js/jquery.cookie.js" type="text/javascript"></script>
    <script src="/js/ajaxfileupload.js" type="text/javascript"></script>
    <style>
        body {
            margin: 0;
            padding: 0;
            border: 0;
            width: 100%;
            height: 100%;
        }

        #body {
            border: 1px solid #A4DCF6;
        }

        .tabl {
            border: 1px solid #A4DCF6;
            border-collapse: collapse;
        }

        .td1 {
            width: 10%;
            border: 1px solid #A4DCF6;
            background-color: #DBEEF8;
            text-align: right;
        }

        .td2 {
            width: 40%;
            border: 1px solid #A4DCF6;
            background-color: #ECF6F9;
        }

        .td3 {
            width: 90%;
            border: 1px solid #A4DCF6;
            background-color: #ECF6F9;
        }

        html body .user_add .mini-buttonedit-icon {
            background: url(../../../scripts/miniui/res/images/user_add.png) no-repeat 50% 50%;
        }

    </style>

</head>
<body>
<div id="body">
    <div id="first_leader" class="mini-panel" title="技术第一负责人信息" iconCls="icon-pull" style="width:100%;height:auto;"
         showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
    >
        <table class="tabl" cellpadding="1" cellspacing="2"
               style="font-size: 13px;width: 100%;height: 60px;">
            <tr>
                <td class="td1">
                    姓名、专业经&nbsp;
                    <br>
                    历和能力简述&nbsp;
                </td>
                <td class="td3">
                    <input class="mini-textarea" width="100%" height="100%"/>
                </td>
            </tr>
        </table>
    </div>

    <div id="product" class="mini-panel" title="产品信息" iconCls="icon-pull" style="width:100%;height:auto;"
         showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
    >
        <table class="tabl" cellpadding="1" cellspacing="2"
               style="font-size: 13px;width: 100%;height: 60px;">
            <tr>
                <td class="td1">产品形式&nbsp;</td>
                <td>
                    <div id="ck1" name="product" class="mini-checkbox" readOnly="false" text="专题报告"></div>

                    <div id="ck2" name="product" class="mini-checkbox" readOnly="false" text="技术方案"></div>

                    <div id="ck3" name="product" class="mini-checkbox" readOnly="false" text="技术标准"></div>

                    <div id="ck4" name="product" class="mini-checkbox" readOnly="false" text="硬件产品"></div>

                    <div id="ck5" name="product" class="mini-checkbox" readOnly="false" text="生产性文件"></div>

                    <div id="ck6" name="product" class="mini-checkbox" readOnly="false" text="设计文件"></div>

                    <div id="ck7" name="product" class="mini-checkbox" readOnly="false" text="计算机软件"></div>

                    <div id="ck8" name="product" class="mini-checkbox" readOnly="false" text="其他"
                         onclick="selectInput()"></div>

                    <input id="inputBorder" class='inputBorder' disabled="disabled" type='text'/>
                </td>
            </tr>
            <tr>
                <td class="td1">预计产权说明&nbsp;</td>
                <td class="td3">
                    <input class="mini-textarea" width="100%" height="100%"/>
                </td>
            </tr>
            <tr>
                <td class="td1">经济效益&nbsp;</td>
                <td class="td3">
                    <input class="mini-textarea" width="100%" height="100%"/>
                </td>
            </tr>
            <tr>
                <td class="td1">固定资产&nbsp;</td>
                <td class="td3">
                    <input class="mini-textarea" width="100%" height="100%"/>
                </td>
            </tr>
            <tr>
                <td class="td1">验收标准&nbsp;</td>
                <td class="td3">
                    <input class="mini-textarea" width="100%" height="100%"/>
                </td>
            </tr>
        </table>
    </div>

    <div id="appendix" class="mini-panel" title="附件信息" iconCls="icon-pull" style="width:100%;height:auto;"
         showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
    >
        <table class="tabl" cellpadding="1" cellspacing="2"
               style="font-size: 13px;width: 100%;height: 30px;">
            <tr>
                <td class="td1">立项报告书&nbsp;<img src="../../../img/project_declare/must.gif"/>&nbsp;</td>
                <td class="td3">
                    <input id="fileupload1" class="mini-fileupload" name="Fdata" limitType="*.doc" width="200px"
                           flashUrl="swfupload/swfupload.swf"
                           <%--uploadUrl="upload.jsp"--%>
                           onuploadsuccess="onUploadSuccess"
                           onuploaderror="onUploadError"
                           onfileselect="onFileSelect"
                    />

                    <input type="hidden" name="base" id="base">

                    <input type="hidden" name="other" id="other">
                </td>
            </tr>
        </table>
    </div>

    <div id="procedure" class="mini-panel" title="流程信息" iconCls="icon-pull" style="width:100%;height:auto;"
         showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
    >
        <table class="tabl" cellpadding="1" cellspacing="2"
               style="font-size: 13px;width: 100%;height: 30px;">
            <tr>
                <td class="td1">审批(部门经理)<img src="../../../img/project_declare/must.gif"/></td>
                <td class="td3">
                    <input id="btnEdit1" name="" allowInput="false"
                           class="mini-buttonedit user_add" onbuttonclick="onButtonEdit1" width="200px"/>
                </td>
            </tr>
        </table>
    </div>

    <div style="background-color: #ededed;width: 100%;height: 26px">
        <a class="mini-button" img="../../scripts/miniui/res/images/note_go.png" style="float: right;margin-right: 10px">提交</a>
    </div>
</div>

<script type="text/javascript">
    mini.parse();

    function selectInput() {

        var check = mini.get("ck8");

        if (check.getValue() == "true") {

            $("#inputBorder").removeAttr("disabled");

        } else {

            $("#inputBorder").attr("disabled", "disabled");

        }

    }

    function selectCheckbox() {

        var str = "";

        if (mini.get("ck1").getValue() == "true") {

            str += "专题报告";

        }

        if (mini.get("ck2").getValue() == "true") {

            str += " 技术方案";

        }

        if (mini.get("ck3").getValue() == "true") {

            str += " 技术标准";

        }

        if (mini.get("ck4").getValue() == "true") {

            str += " 硬件产品";

        }

        if (mini.get("ck5").getValue() == "true") {

            str += " 生产性文件";

        }

        if (mini.get("ck6").getValue() == "true") {

            str += " 设计文件";

        }

        if (mini.get("ck7").getValue() == "true") {

            str += " 计算机软件";

        }

        if (mini.get("ck8").getValue() == "true") {

            str += " " + $("#inputBorder").val();

        }

        return str;

    }

    //    function getForm() {
    //        var form = new mini.Form("#form2");
    //        var data = form.getData();
    //        var s = mini.encode(data);
    //        return s;
    //    }

    /*点击提交按钮触发的事件*/
    //    function submitForm() {
    //        /*1.获得基本信息tab表单中的数据 cookies取*/
    //        var baseData = $.cookie("form1");
    //
    //        /*2.获得当前其他信息tab表单中的数据 直接获取当前表单*/
    //        var otherData = getForm();
    //
    //        console.log(baseData + "--" + otherData);
    //
    //        /*3.将数据传递给后台*/
    //        /*3.1 给两个隐藏input设置数据*/
    //        $("#base").val(baseData);
    //        $("#other").val(otherData);
    //
    //        /*3.2 通过ajax上传文件、数据*/
    //        $.ajaxFileUpload({
    //            // 文件上传的controller
    //            url: "",
    //            fileElementId: $("#upload"), // 文件上传的id域
    //            success: function (data) {
    //                console.log(data);
    //            }
    //        })
    //
    //    }

    //    function onClazzButtonEdit(e) {
    //        var btnEdit = this;
    //        mini.open({
    //            url: "/page/select_clazz_gridwindow.jsp",
    //            title: "选择班级列表",
    //            width: '80%',
    //            height: '80%',
    //            showMaxButton: true,
    //            ondestroy: function (action) {
    //                if (action == "ok") {
    //                    var iframe = this.getIFrameEl();
    //                    var data = iframe.contentWindow.GetData();
    //                    data = mini.clone(data);    //必须
    //                    if (data) {
    //                        console.log(data.cid + "--" + data.cname);
    //                        btnEdit.setValue(data.cid);
    //                        btnEdit.setText(data.cname);
    //                    }
    //                }
    //            }
    //        });
    //
    //    }
    //    function onStudentButtonEdit(e) {
    //        var btnEdit = this;
    //        mini.open({
    //            url: "/page/select_student_gridwindow.jsp",
    //            title: "选择学生列表",
    //            width: '80%',
    //            height: '80%',
    //            showMaxButton: true,
    //            ondestroy: function (action) {
    //                if (action == "ok") {
    //                    var iframe = this.getIFrameEl();
    //                    var data = iframe.contentWindow.GetData();
    //                    data = mini.clone(data);    //必须
    //                    if (data) {
    //                        console.log(data.sid + "--" + data.sname);
    //                        btnEdit.setValue(data.sid);
    //                        btnEdit.setText(data.sname);
    //                    }
    //                }
    //            }
    //        });
    //
    //    }

</script>


</body>

</html>