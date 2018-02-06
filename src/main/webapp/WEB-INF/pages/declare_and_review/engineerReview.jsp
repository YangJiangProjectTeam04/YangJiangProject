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
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
    <link href="../../../scripts/miniui/themes/blue/skin.css" rel="stylesheet" type="text/css"/>
    <style>

        table,tr,td{

            border: 1px solid #A4DCF6;

            border-collapse: collapse;

            text-align: center

        }

        .td1 {

            width: 15%;

            background-color: #ebf5f8;

        }

        .td2{

            width: 35%;


        }

    </style>
</head>


<body>
<div style="width: 100%">
<div id="baseInformation" class="mini-panel" margin-top="0px" title="项目基本信息" iconCls="icon-add"
     style="width:100%;height: 180px"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">

    <table style="width: 100%;height: 100%">

        <tr>
            <td class="td1">项目名称</td>
            <td colspan="3" class="td2"><a href="#">业务流程管理平台</a></td>
        </tr>

        <tr>
            <td class="td1">项目申报单位</td>
            <td class="td2">阳江公司</td>
            <td class="td1">联合申报单位</td>
            <td class="td2">XXX</td>
        </tr>

        <tr>
            <td class="td1">目的</td>
            <td class="td2">建设科管理系统</td>
            <td class="td1"></td>
            <td class="td2"></td>
        </tr>

    </table>

</div>

<div id="economicAdaptability" class="mini-panel" margin-top="0px" title="与核电生产运营安全性,可靠性,经济性的适应分析" iconCls="icon-add"
     style="width:100%;height: 120px"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">

    <table style="width: 100%;height: 100%">

        <tr>
            <td class="td1">安全性</td>
            <td class="td2">系统安全</td>
            <td class="td1">可靠性</td>
            <td class="td2">三重保证</td>
        </tr>

        <tr>
            <td class="td1">经济性</td>
            <td class="td2">提高办公效率</td>
            <td class="td1">其他</td>
            <td class="td2">2016建设需要</td>
        </tr>

    </table>

</div>

<div id="exOpinion" class="mini-panel" margin-top="0px" title="与核电生产运营安全性,可靠性,经济性的适应分析" iconCls="icon-add"
     style="width:100%;height: 200px;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">

    <table style="width: 100%;height: 100%">

        <tr>
            <td class="td1">审批意见</td>
            <td class="td2">
                <textarea class="mini-textarea"
                          style="width: 90%;height: 90%"></textarea>
            </td>
            <td class="td1">常用词条</td>
            <td class="td2">
                <textarea class="mini-textarea"
                          style="width: 90%;height: 90%"
                          emptyText="同意,完成后通知我"></textarea>
            </td>
        </tr>

    </table>

</div>
</div>
</body>
</html>
