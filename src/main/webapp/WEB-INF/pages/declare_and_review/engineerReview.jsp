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

        table {
            width: 100%;
            height: 8%;
            border-collapse: collapse;
            border: 1px solid #cbe7f9;
        }

        .tdClass {
            width: 100px;
            height: 20px;
            text-align: center;
            background-color: white;
        }

        .trBorder > td {
            border-style: none;
            background-color: #dee8eb;

        }

        .inleft {
            width: 120px;
            height: 20px;
            text-align: center;
            background-color: #e8f6ff;
        }

    </style>
</head>


<body>
<div style="width: 100%">
<div id="baseInformation" class="mini-panel" margin-top="0px" title="项目基本信息" iconCls="icon-add"
     style="width:100%;height: 100px"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">

    <table border="1" style="font-size: 12px">

        <tr>
            <td class="inleft">项目名称</td>
            <td colspan="6" style="text-align: center"><a href="#">业务流程管理平台</a></td>
        </tr>

        <tr>
            <td class="inleft">项目申报单位</td>
            <td colspan="2" class="tdClass">阳江公司</td>
            <td class="inleft">联合申报单位</td>
            <td colspan="3" class="tdClass">XXX</td>
        </tr>

        <tr>
            <td class="inleft">目的</td>
            <td colspan="2" class="tdClass">建设科管理系统</td>
            <td class="inleft"></td>
            <td  colspan="3" class="tdClass"></td>
        </tr>

    </table>

</div>

<div id="economicAdaptability" class="mini-panel" margin-top="0px" title="与核电生产运营安全性,可靠性,经济性的适应分析" iconCls="icon-add"
     style="width:100%;height: 120px"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">

    <table border="1" style="font-size: 12px">

        <tr>
            <td class="inleft">安全性</td>
            <td colspan="2" class="tdClass">系统安全</td>
            <td class="inleft">可靠性</td>
            <td colspan="3" class="tdClass">三重保证</td>
        </tr>

        <tr>
            <td class="inleft">经济性</td>
            <td colspan="2" class="tdClass">提高办公效率</td>
            <td class="inleft">其他</td>
            <td colspan="3" class="tdClass">2016建设需要</td>
        </tr>

    </table>

</div>

<div id="exOpinion" class="mini-panel" margin-top="0px" title="评审信息" iconCls="icon-add"
     style="width:100%;height:150px;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">

    <table border="1" style="font-size: 12px">

        <tr>
            <td class="inleft">审批结果</td>
            <td>
                <textarea class="mini-textarea"
                          style="width: 95%;height: 95%"></textarea>
            </td>

        </tr>

        <tr>
            <td class="inleft">立项报告书<span style="color: red">&nbsp;*&nbsp;</span></td>
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
    <div style="background-color: #ededed;width: 100%;height: 26px">
        <a class="mini-button" img="../../scripts/miniui/res/images/accept.png" style="float: right;margin-right: 10px">同意</a>
        <span style="float: right">&nbsp;&nbsp;</span>
        <a class="mini-button" img="../../scripts/miniui/res/images/cancel.png" style="float: right;">拒绝</a>
    </div>
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
