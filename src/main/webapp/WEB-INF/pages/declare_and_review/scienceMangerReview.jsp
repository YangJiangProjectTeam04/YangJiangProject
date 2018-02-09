<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/6
  Time: 上午9:07
  To change this template use File | Settings | File Templates.
--%>
<%--科技办经理审批页面--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>科技办经理审批页面</title>
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css">
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../../scripts/thirdparty/swfupload/swfupload.js" type="text/javascript"></script>
    <script src="../../../js/ajaxfileupload.js" type="text/javascript"></script>
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            border: 0;
            width: 100%;
            height: 100%;
        }
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
<%--1--%>
<div id="QueryConditions1" class="mini-panel" margin-top="0px" title="项目基本信息" iconCls="icon-add"
     style="width:100%;height:100px;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <!--body-->
    <table border="1" style="font-size: 12px">
        <tr>
            <td class="inleft"><span>项目名称</span></td>
            <td colspan="6" style="text-align: center"><span style="color: #4452d2">业务流程管理平台</span></td>
        </tr>

        <tr>
            <td class="inleft"><span>项目申报单位</span></td>
            <td colspan="2" class="tdClass">阳江公司</td>
            <td class="inleft"><span>联合申报单位</span></td>
            <td colspan="3" class="tdClass">xxx</td>
        </tr>

        <tr>
            <td class="inleft"><span>目的</span></td>
            <td colspan="2" class="tdClass">建设科管理系统</td>
            <td class="inleft"><span></span></td>
            <td colspan="3" class="tdClass"></td>
        </tr>

        <tr class="trBorder">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
</div>
<%--2--%>
<div id="QueryConditions2" class="mini-panel" margin-top="0px"
     title="与核电生产运营安全性,可靠性,经济的适应性分析" iconCls="icon-add"
     style="width:100%;height:100px;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <!--body-->
    <table border="1" style="font-size: 12px">
        <tr>
            <td class="inleft"><span>安全性</span></td>
            <td colspan="2" class="tdClass">系统安全</td>
            <td class="inleft"><span>可靠性</span></td>
            <td colspan="3" class="tdClass">三重保障</td>
        </tr>

        <tr>
            <td class="inleft"><span>经济性</span></td>
            <td colspan="2" class="tdClass">提高办公效率</td>
            <td class="inleft"><span>其他</span></td>
            <td colspan="3" class="tdClass">2018年建设需要</td>
        </tr>

        <tr class="trBorder">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
</div>
<%--3--%>
<div id="QueryConditions3" class="mini-panel" margin-top="0px"
     title="工程师评审意见" iconCls="icon-add"
     style="width:100%;height:150px;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <!--body-->
    <table border="1" style="font-size: 12px">
        <tr>
            <td class="inleft" style="height: 60px"><span>审批结果</span></td>
            <td>
                <input class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr>
            <td class="inleft" style="height: 60px"><span style="color: #6260cf">立项报告书</span></td>
            <td>
                <input class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr class="trBorder">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>

</div>
<%--4--%>
<div id="QueryConditions4" class="mini-panel" margin-top="0px"
     title="技术可行性分析意见" iconCls="icon-add"
     style="width:100%;height:150px;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <!--body-->
    <table border="1" style="font-size: 12px">
        <tr>
            <td class="inleft" style="height: 60px"><span>对江阳公司科技发展规划的复合性审定</span></td>
            <td>
                <input class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr>
            <td class="inleft" style="height: 60px"><span>对项目成果的应用领域</span></td>
            <td>
                <input class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr>
            <td class="inleft" style="height: 60px"><span>总体评价</span></td>
            <td>
                <input class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr class="trBorder">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>

</div>
<%--5--%>
<div id="QueryConditions4" class="mini-panel" margin-top="0px"
     title="技术可行性分析意见" iconCls="icon-add"
     style="width:100%;height:150px;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <!--body-->
    <table border="1" style="font-size: 12px">
        <tr>
            <td class="inleft" style="height: 60px"><span>要求</span></td>
            <td>
                <input class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr>
            <td class="inleft" style="height: 60px"><span>建议</span></td>
            <td>
                <input class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr>
            <td class="inleft" style="height: 60px"><span>总体评价</span></td>
            <td>
                <input class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr class="trBorder">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>

</div>
<%--拒绝删除按钮--%>
<div style="background-color: #ededed;width: 100%;height: 26px">
    <a class="mini-button" img="../../scripts/miniui/res/images/accept.png" style="float: right;margin-right: 10px">同意</a>
    <span style="float: right">&nbsp;&nbsp;</span>
    <a class="mini-button" img="../../scripts/miniui/res/images/cancel.png" style="float: right;">拒绝</a>
</div>
</body>
</html>
