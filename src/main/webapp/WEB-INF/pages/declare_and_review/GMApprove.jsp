<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/6
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>总经理部审批</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
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

        html body .group_add .mini-buttonedit-icon {
            background: url(../../../scripts/miniui/res/images/group_add.png) no-repeat 50% 50%;
        }
        #location_GM {
             height: 30px;
             background-image: url("../../../img/project_declare/location_color.jpg");
             width: 100%;
             border-bottom: 1px solid #A4DCF6;
         }

    </style>
</head>
<body>

<div id="location_GM">
    <img src="../../../img/declare_and_review/location_GM.png">
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

<div id="engineer_opinion" class="mini-panel" title="工程师评审意见" iconCls="icon-pull" style="width:100%;height: auto;"
     showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
>
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
            <td colspan="3">
                <a href="">立项报告书</a>
            </td>
        </tr>
    </table>
</div>

<div id="feasibility_approval_opinion" class="mini-panel" title="技术可行性分析意见" iconCls="icon-pull" style="width:100%;height: auto;"
     showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
>
    <table class="tabl" cellpadding="1" cellspacing="2"
           style="font-size: 13px;width: 100%;height: 50px;">
        <tr>
            <td class="td1">
                对阳江公司科&nbsp;<br>
                技发展规划的&nbsp;<br>
                符合性审定&nbsp;
            </td>
            <td class="3">
                <input class="mini-textarea" width="100%" height="100%"
                       value="有利于公司发展"/>
            </td>
        </tr>
        <tr>
            <td class="td1">
                对项目成果的&nbsp;<br>
                应用领域和价值&nbsp;<br>
            </td>
            <td class="td3">
                <input class="mini-textarea" width="100%" height="100%"
                       value="对项目成果的应用领域和价值"/>
            </td>
        </tr>
        <tr>
            <td class="td1">总体评价&nbsp;</td>
            <td class="td3">
                <input class="mini-textarea" width="100%" height="100%"
                       value="很好"/>
            </td>
        </tr>
    </table>
</div>

<div id="technical_approval_opinion" class="mini-panel" title="科技办经理审批意见" iconCls="icon-pull" style="width:100%;height: auto;"
     showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
>
    <table class="tabl" cellpadding="1" cellspacing="2"
           style="font-size: 13px;width: 100%;height: 50px;">
        <tr>
            <td class="td1">要求&nbsp;</td>
            <td class="td3">
                <input class="mini-textarea" width="100%" height="100%"
                       value="按照时间点建设"/>
            </td>
        </tr>
        <tr>
            <td class="td1">建议&nbsp;</td>
            <td class="td3">
                <input class="mini-textarea" width="100%" height="100%"
                       value="做好计划"/>
            </td>
        </tr>
    </table>
</div>

<div id="approval_opinion" class="mini-panel" title="审批意见" iconCls="icon-pull" style="width:100%;height: auto;"
     showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
>
    <table class="tabl" cellpadding="1" cellspacing="2"
           style="font-size: 13px;width: 100%;height: 50px;">
        <tr>
            <td class="td1">审批意见&nbsp;</td>
            <td class="td2">
                <input class="mini-textarea" width="100%" height="100%"/>
            </td>
            <td class="td1">常用词条&nbsp;</td>
            <td class="td2">
                <div id="listbox1" class="mini-listbox" style="width:100%;height:100%;"
                     textField="text" valueField="id"
                     url="../../../data/common_language.txt">
                </div>
            </td>
        </tr>
    </table>
</div>

<div style="background-color: #ededed;width: 100%;height: 26px">
    <a class="mini-button" img="../../scripts/miniui/res/images/folder_go.png"
       style="float: right;margin-right: 10px">通过</a>
    <span style="float: right">&nbsp;&nbsp;</span>
    <a class="mini-button" img="../../scripts/miniui/res/images/delete.png" style="float: right;">不通过</a>
</div>

<script type="text/javascript">
    mini.parse();

</script>
</body>
</html>
