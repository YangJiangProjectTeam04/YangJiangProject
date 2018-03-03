<%--
  Created by IntelliJ IDEA.
  User: FinallyBlack
  Date: 2018/2/6
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true"%>
<%@page errorPage="../error.jsp" %>
<html>
<head>
    <title>合同推荐申报</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="/css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="/scripts/boot.js" type="text/javascript"></script>
    <link href="/scripts/miniui/themes/blue/skin.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            border: 0;
            width: 100%;
            height: 100%;
        }

        #location {
            height: 30px;
            background-image: url("../../../img/researchProject/locationColor.jpg");
            width: 100%;
            border-bottom: 1px solid #A4DCF6;
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

<%--当前位置行--%>
<div id="location">
    <img src="../../../img/researchProject/declareLocation.png">
</div>

<%--申请信息--%>
<div id="queryCondition" class="mini-panel" title="申请信息" iconCls="icon-pull" style="width:100%;height: auto;"
     showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
>
    <table class="tabl" border="0" cellpadding="1" cellspacing="2"
           style="font-size: 13px;width: 100%;height: 60px;">
        <tr>
            <td class="td1">合同名称&nbsp;<img src="../../../img/project_declare/must.gif"/>&nbsp;</td>
            <td class="td2">
                <input name="" class="mini-textbox" width="200px" required="true"/>
            </td>
            <td class="td1">合同编号&nbsp;<img src="../../../img/project_declare/must.gif"/>&nbsp;</td>
            <td class="td2">
                <input name="" class="mini-textbox" width="200px" required="true"/>
            </td>
        </tr>

        <tr>
            <td class="td1">合同对方信息&nbsp;<img src="../../../img/project_declare/must.gif"/>&nbsp;</td>
            <td class="td2">
                <input name="" class="mini-textbox" width="200px" required="true"/>
            </td>
            <td class="td1"></td>
            <td class="td2"></td>
        </tr>

        <tr>
            <td class="td1">合同起日期&nbsp;<img src="../../../img/project_declare/must.gif"/>&nbsp;</td>
            <td class="td2">
                <input name="" class="mini-datepicker" width="200px" allowInput="false" required="true"/>
            </td>
            <td class="td1">合同止日期&nbsp;<img src="../../../img/project_declare/must.gif"/>&nbsp;</td>
            <td class="td2">
                <input name="" class="mini-datepicker" width="200px" allowInput="false" required="true"/>
            </td>
        </tr>

    </table>
</div>

<%--合同经费信息--%>
<div id="expenditureCondition" class="mini-panel" title="合同经费信息" iconCls="icon-pull" style="width:100%;height: auto;"
     showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
>
    <table class="tabl" border="0" cellpadding="1" cellspacing="2"
           style="font-size: 13px;width: 100%;height: 60px;">
        <tr>
            <td class="td1">总费用&nbsp;</td>
            <td class="td2">
                <input name="" class="mini-textbox" width="200px"/>
            </td>
            <td class="td1">对方拨付&nbsp;</td>
            <td class="td2">
                <input name="" class="mini-textbox" width="200px"/>
            </td>
        </tr>

        <tr>
            <td class="td1">公司自筹&nbsp;</td>
            <td class="td2">
                <input name="" class="mini-textbox" width="200px"/>
            </td>
            <td class="td1"></td>
            <td class="td2"></td>
        </tr>

        <tr>
            <td class="td1">合同起日期&nbsp;<img src="../../../img/project_declare/must.gif"/>&nbsp;</td>
            <td class="td2">
                <input name="" class="mini-datepicker" width="200px" allowInput="false" required="true"/>
            </td>
            <td class="td1">合同止日期&nbsp;<img src="../../../img/project_declare/must.gif"/>&nbsp;</td>
            <td class="td2">
                <input name="" class="mini-datepicker" width="200px" allowInput="false" required="true"/>
            </td>
        </tr>

    </table>
</div>

<%--项目成果分配--%>
<div id="achievement" class="mini-panel" title="项目成果分配" iconCls="icon-pull" style="width:100%;height:auto;"
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
            <td class="td1">
                形成的知识产&nbsp; <br>
                权及分配方式&nbsp;
            </td>
            <td class="td3">
                <input class="mini-textarea" width="100%" height="100%"/>
            </td>
        </tr>
        <tr>
            <td class="td1">
                直接经济效益&nbsp; <br>
                及分配方式&nbsp;
            </td>
            <td class="td3">
                <input class="mini-textarea" width="100%" height="100%"/>
            </td>
        </tr>
        <tr>
            <td class="td1">
                形成的固定资&nbsp; <br>
                产及分配方式&nbsp;
            </td>
            <td class="td3">
                <input class="mini-textarea" width="100%" height="100%"/>
            </td>
        </tr>
        <tr>
            <td class="td1">
                合同运作情况&nbsp; <br>
                简介&nbsp;
            </td>
            <td class="td3">
                <input class="mini-textarea" width="100%" height="100%"/>
            </td>
        </tr>
        <tr>
            <td class="td1">运作说明&nbsp;</td>
            <td class="td3">
                <input id="fileupload1" class="mini-fileupload" name="Fdata" limitType="*.doc" width="200px"
                       flashUrl="swfupload/swfupload.swf"
                <%--uploadUrl="upload.jsp"--%>
                       onuploadsuccess="onUploadSuccess"
                       onuploaderror="onUploadError"
                       onfileselect="onFileSelect"
                />
            </td>
        </tr>
    </table>
</div>

<%--流程信息--%>
<div id="achievement" class="mini-panel" title="流程信息" iconCls="icon-pull" style="width:100%;height:auto;"
     showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
>
    <table class="tabl" cellpadding="1" cellspacing="2"
           style="font-size: 13px;width: 100%;height: 30px;">
        <tr>
            <td class="td1">技术部经理&nbsp;</td>
            <td colspan="3">
                <input id="btnEdit1" name="" allowInput="false"
                       class="mini-buttonedit user_add" onbuttonclick="onButtonEdit1" width="200px"/>
            </td>
        </tr>
    </table>
</div>

<%--提交--%>
<div style="background-color: #ededed;width: 100%;height: 26px">
    <a class="mini-button" img="../../scripts/miniui/res/images/note_go.png"
       style="float: right;margin-right: 10px">提交</a>
</div>


<script type="text/javascript">
    mini.parse();
</script>

</body>
</html>
