<%--
  Created by IntelliJ IDEA.
  User: FinallyBlack
  Date: 2018/2/6
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>评审小组评审意见</title>
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

<div id="amendOpinion"
     class="mini-panel"
     margin-top="0px"
     title="工程师评审意见"
     iconCls="icon-add"
     style="width:100%;overflow: hidden;height: 140px"
     showToolbar="true"
     showCollapseButton="true"
     showFooter="true"
     allowResize="true"
     collapseOnTitleClick="true">
    <table style="width: 100%;height: 100%">
        <tr style="height: 70%">
            <td style="width: 15%;background-color: #ebf5f8;">评审结果</td>
            <td style="width: 85%;">
                <textarea class="mini-textarea" style="width: 95%;height: 70%"></textarea>
            </td>
        </tr>

        <tr style="height: 15%">
            <td style="width: 15%;background-color: #ebf5f8;">立项报告书</td>
            <td style="width: 85%;text-align: left">
                <a href="#">立项报告书</a>
            </td>
        </tr>
    </table>
</div>

<div id="technicalFeasibility"
     class="mini-panel"
     margin-top="0px"
     title="技术可行性分析意见"
     iconCls="icon-add"
     style="width:100%;overflow: hidden;height: 240px"
     showToolbar="true"
     showCollapseButton="true"
     showFooter="true"
     allowResize="true"
     collapseOnTitleClick="true">

    <table style="width: 100%;height: 100%">

        <tr>
            <td style="width: 15%;background-color: #ebf5f8;">
                对阳江公司科技发展规划的符合性审定
            </td>
            <td style="width: 85%;">
                <textarea class="mini-textarea" style="width: 95%;height: 70%"></textarea>
            </td>
        </tr>

        <tr>
            <td style="width: 15%;background-color: #ebf5f8;">
                对项目成果的应用领域和价值
            </td>
            <td style="width: 85%;">
                <textarea class="mini-textarea" style="width: 95%;height: 70%"></textarea>
            </td>
        </tr>

        <tr>
            <td style="width: 15%;background-color: #ebf5f8;">
                总体评价
            </td>
            <td style="width: 85%;">
                <textarea class="mini-textarea" style="width: 95%;height: 70%"></textarea>
            </td>
        </tr>

    </table>

</div>


<div style="background-color: #ededed;width: 100%;height: 26px">
    <a class="mini-button" img="../../scripts/miniui/res/images/accept.png" style="float: right;margin-right: 10px">推荐</a>
    <span style="float: right">&nbsp;&nbsp;</span>
    <a class="mini-button" img="../../scripts/miniui/res/images/cancel.png" style="float: right;">不推荐</a>
</div>


</body>
</html>
