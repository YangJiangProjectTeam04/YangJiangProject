<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/5
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%--部门经理审批界面--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>部门经理审批界面</title>
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

        #location {
            height: 30px;
            background-image: url("../../../img/project_declare/location_color.jpg");
            width: 100%;
            border-bottom: 1px solid #A4DCF6;
        }
    </style>
</head>
<body>

<div id="location">
    <img src="../../../img/declare_and_review/declare.png">
</div>

<div id="QueryConditions1" class="mini-panel" title="项目基本信息" style="width:100%;height: auto;"
     showCollapseButton="false" collapseOnTitleClick="true" expanded="true">
    <!--body-->
    <table class="tabl" cellpadding="1" cellspacing="2"
           style="font-size: 13px;width: 100%;height: 50px;">
        <tr>
            <td class="td1">项目名称&nbsp;&nbsp;</td>
            <td colspan="3" style="text-align: center">
                <a href="">业务流程管理平台</a>
            </td>
        </tr>
        <tr>
            <td class="td1">项目申报单位&nbsp;&nbsp;</td>
            <td class="td2">
                <span>阳江公司</span>
            </td>
            <td class="td1">联合申报单位&nbsp;&nbsp;</td>
            <td class="td2">
                <span>XXX</span>
            </td>
        </tr>
        <tr>
            <td class="td1">目的&nbsp;&nbsp;</td>
            <td class="td2">
                <span>建设科管理系统</span>
            </td>
            <td class="td1"></td>
            <td class="td2"></td>
        </tr>
    </table>
</div>
<%----%>
<div id="adaptability_analysis" class="mini-panel" title="与核电生产运营安全性、可靠性、经济的适应性分析" style="width:100%;height: auto;"
     showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
>
    <table class="tabl" cellpadding="1" cellspacing="2"
           style="font-size: 13px;width: 100%;height: 50px;">
        <tr>
            <td class="td1">安全性&nbsp;&nbsp;</td>
            <td class="td2">
                <span>系统安全</span>
            </td>
            <td class="td1">可靠性&nbsp;&nbsp;</td>
            <td class="td2">
                <span>三全保障</span>
            </td>
        </tr>
        <tr>
            <td class="td1">经济性&nbsp;&nbsp;</td>
            <td class="td2">
                <span>提高办公效率</span>
            </td>
            <td class="td1">其他&nbsp;&nbsp;</td>
            <td class="td2">
                <span>2016建设需要</span>
            </td>
        </tr>
    </table>
</div>
<%----%>
<div id="approval_opinion" class="mini-panel" title="审批意见" style="width:100%;height: auto;"
     showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
>
    <table class="tabl" cellpadding="1" cellspacing="2"
           style="font-size: 13px;width: 100%;height: 50px;">
        <tr>
            <td class="td1">审批意见&nbsp;&nbsp;</td>
            <td class="td2">
                <input class="mini-textarea" width="100%" height="100%"/>
            </td>
            <td class="td1">常用词条&nbsp;&nbsp;</td>
            <td class="td2">
                <div id="listbox1" class="mini-listbox" style="width:100%;height:100%;"
                     textField="text" valueField="id"
                     url="../../../data/common_language.txt">
                </div>
            </td>
        </tr>
    </table>
</div>

<%--拒绝删除按钮--%>
<div style="background-color: #ededed;width: 100%;height: 26px">
    <a class="mini-button" img="../../scripts/miniui/res/images/accept.png" style="float: right;margin-right: 10px">同意</a>
    <span style="float: right">&nbsp;&nbsp;</span>
    <a class="mini-button" img="../../scripts/miniui/res/images/cancel.png" style="float: right;">拒绝</a>
</div>

<script type="text/javascript">
    mini.parse();

    /*返回表单数据*/
    function getForm() {
        var form = new mini.Form("#form1");
        var data = form.getData();
        var s = mini.encode(data);
        return s;
    }

</script>


</body>

</html>

