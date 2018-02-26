<%--
  Created by IntelliJ IDEA.
  User: FinallyBlack
  Date: 2018/2/6
  Time: 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>工程师处理</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="../../../swfupload/swfupload.js" type="text/javascript"></script>
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
    <link href="../../../scripts/miniui/themes/blue/skin.css" rel="stylesheet" type="text/css"/>
    <style>
        body {
            margin: 0;
            padding: 0;
            border: 0;
            width: 100%;
            height: 100%;
        }

        .tabl {
            border: 1px solid #A4DCF6;
            padding: 0;
            margin: 0;
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
            text-align: center;
        }

        .td3 {
            width: 90%;
            border: 1px solid #A4DCF6;
        }

        #location {
            height: 30px;
            background-image: url("../../../img/project_declare/location_color.jpg");
            width: 100%;
            border-bottom: 1px solid #A4DCF6;
        }

        html body .user_add .mini-buttonedit-icon {
            background: url(../../../scripts/miniui/res/images/user_add.png) no-repeat 50% 50%;
        }
    </style>
</head>


<body>


<div id="location">
    <img src="../../../img/declare_and_review/engineer.png">
</div>
<div id="base_info" class="mini-panel" title="项目基本信息" iconCls="icon-pull" style="width:100%;height: auto;"
     showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
>

    <table class="tabl" cellpadding="1" cellspacing="2"
           style="font-size: 13px;width: 100%;height: 50px;">
        <tr>
            <td class="td1">项目名称&nbsp;</td>
            <td colspan="3" style="text-align: center">
                <a href="">业务流程管理平台</a>
            </td>
        </tr>
        <tr>
            <td class="td1">项目申报单位&nbsp;</td>
            <td class="td2">
                <span>阳江公司</span>
            </td>
            <td class="td1">联合申报单位&nbsp;</td>
            <td class="td2">
                <span>XXX</span>
            </td>
        </tr>
        <tr>
            <td class="td1">目的&nbsp;</td>
            <td class="td2">
                <span>建设科管理系统</span>
            </td>
            <td class="td1"></td>
            <td class="td2"></td>
        </tr>
    </table>

</div>

<div id="adaptability_analysis" class="mini-panel" title="与核电生产运营安全性、可靠性、经济的适应性分析" iconCls="icon-pull" style="width:100%;height: auto;"
     showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
>
    <table class="tabl" cellpadding="1" cellspacing="2"
           style="font-size: 13px;width: 100%;height: 50px;">
        <tr>
            <td class="td1">安全性&nbsp;</td>
            <td class="td2">
                <span>系统安全</span>
            </td>
            <td class="td1">可靠性&nbsp;</td>
            <td class="td2">
                <span>三全保障</span>
            </td>
        </tr>
        <tr>
            <td class="td1">经济性&nbsp;</td>
            <td class="td2">
                <span>提高办公效率</span>
            </td>
            <td class="td1">其他&nbsp;</td>
            <td class="td2">
                <span>2016建设需要</span>
            </td>
        </tr>
    </table>
</div>

<div id="exOpinion" class="mini-panel" margin-top="0px" title="评审信息" iconCls="icon-pull" style="width:100%;height: auto;"
     showCollapseButton="false" collapseOnTitleClick="true" expanded="true">

    <table class="tabl" cellpadding="1" cellspacing="2"
           style="font-size: 13px;width: 100%;height: 50px;">
        <tr>
            <td class="td1">评审结果&nbsp;</td>
            <td class="td3">
                <input class="mini-textarea" width="100%" height="100%"
                       value="评审通过，按照计划执行"/>
            </td>
        </tr>

        <tr>
            <td class="td1">立项报告书&nbsp;</td>
            <td>
                <input id="fileupload1"
                       class="mini-fileupload"
                       name="Fdata" limitType="*.doc"
                       flashUrl="../../../swfupload/swfupload.swf"
                       onuploadsuccess="onUploadSuccess"
                       onuploaderror="onUploadError"
                       onfileselect="onFileSelect"
                       style="width: 50%"
                />

                <input type="button" value="Browse" onclick="startUpload()"/>
            </td>
        </tr>

    </table>

</div>

<div id="proInformation" class="mini-panel" margin-top="0px" title="流程信息" iconCls="icon-pull" style="width:100%;height: auto;"
     showCollapseButton="false" collapseOnTitleClick="true" expanded="true">

    <table class="tabl" cellpadding="1" cellspacing="2"
           style="font-size: 13px;width: 100%;">
        <tr>
            <td class="td1">审批组长&nbsp;</td>
            <td>
                <input id="btnEdit1" name="" allowInput="false"
                       class="mini-buttonedit user_add" onbuttonclick="onButtonEdit1" width="200px"/>
            </td>
        </tr>
    </table>
</div>

<div style="background-color: #ededed;width: 100%;height: 26px">
    <a class="mini-button" img="../../scripts/miniui/res/images/folder_go.png"
       style="float: right;margin-right: 10px">提交</a>
    <span style="float: right">&nbsp;&nbsp;</span>
    <a class="mini-button" img="../../scripts/miniui/res/images/delete.png" style="float: right;">驳回</a>
</div>

</body>
<script type="text/javascript">
    mini.parse();

    //动态设置url
    //    var fileupload = mini.get("fileupload1");
    //    fileupload.setUploadUrl("upload.jsp");

    function onFileSelect(e) {
        //alert("选择文件");
    }
    function onUploadSuccess(e) {

        alert("上传成功：" + e.serverData);

        this.setText("");
    }
    function onUploadError(e) {

    }

    function startUpload() {
        var fileupload = mini.get("fileupload1");

        fileupload.startUpload();
    }


</script>
</html>
