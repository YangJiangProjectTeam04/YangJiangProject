<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/5
  Time: 上午8:47
  To change this template use File | Settings | File Templates.
--%>
<%--个人中心的待办业务--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" isErrorPage="true"%>
<%@page errorPage="../error.jsp" %>
<html>
<head>
    <title>待办任务</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="/css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="/scripts/boot.js" type="text/javascript"></script>
    <link href="/scripts/miniui/themes/blue/skin.css" rel="stylesheet" type="text/css"/>
    <style>

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

        #query_condition_table {
            border: 1px solid white;
            border-collapse: collapse;
        }

        #query_button {
            background-image: url("../../../img/query/background.jpg");
            height: 35px;
            width: 100%;
        }

        #query_button > .mini-button {
            float: right;
            margin-right: 50px;
            margin-top: 5px;
            width: 63px;
            height: 24px;
        }

        .td1 {
            width: 10%;
            border: 1px solid #A4DCF6;
            background-color: #DBEEF8;
        }

        .td2 {
            width: 40%;
            border: 1px solid #A4DCF6;
        }

        html body .user_add .mini-buttonedit-icon {
            background: url(../../../scripts/miniui/res/images/user_add.png) no-repeat 50% 50%;
        }
        html body .group_add .mini-buttonedit-icon {
            background: url(../../../scripts/miniui/res/images/group_add.png) no-repeat 50% 50%;
        }
    </style>
</head>
<body>

<%--当前位置行--%>
<div id="location">
    <img src="../../../img/researchProject/waitLocation.png">
</div>

<%--查询条件--%>
<div id="queryondition" class="mini-panel" title="查询条件" iconCls="icon-pull" style="width:100%;height: auto;"
     showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
>
    <table id="query_condition_table" border="0" cellpadding="1" cellspacing="2"
           style="font-size: 13px;width: 100%;height: 60px;">
        <tr>
            <td class="td1" style="text-align: center">申请时间</td>
            <td class="td2">
                <input name="" class="mini-datepicker" width="200px" allowInput="false" required="true"/>
            </td>
            <td class="td1" style="text-align: center">关键字</td>
            <td class="td2">
                <input name="" class="mini-textbox" width="200px"/>
            </td>
        </tr>

        <tr>
            <td class="td1" style="text-align: center">申请人</td>
            <td class="td2">
                <input id="btnEdit1" name="" allowInput="false"
                       class="mini-buttonedit user_add" onbuttonclick="onButtonEdit1" width="200px"/>
            </td>
            <td class="td1" style="text-align: center">所属部门</td>
            <td class="td2">
                <input id="btnEdit2" name="" allowInput="false"
                       class="mini-buttonedit group_add" onbuttonclick="onButtonEdit2" width="200px"/>
            </td>
        </tr>

    </table>
</div>

<%--按钮--%>
<div id="query_button">
    <a class="mini-button" img="../../../scripts/miniui/res/images/system_search.gif">查询</a>
</div>

<%--查询--%>
<div id="datagrid1" class="mini-datagrid" style="width:100%;height:280px;"
     url="" idField="id" multiSelect="true"
>
    <div property="columns">
        <div type="checkcolumn"></div>
        <div field="" width="120" headerAlign="center" allowSort="true">
            <div  class="mini-checkbox" onclick="setValue()"></div>流程编号</div>
        <div field="" width="120" headerAlign="center" allowSort="true">流程名称</div>
        <div field="" width="120" headerAlign="center" allowSort="true">申请部门</div>
        <div field="" width="120" headerAlign="center" allowSort="true">当前环节</div>
        <div field="" width="120" headerAlign="center" allowSort="true">提报人</div>
        <div field="" width="120" headerAlign="center" allowSort="true">提报时间</div>
        <div field="" width="120" headerAlign="center" allowSort="true">操作</div>
    </div>
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


    /*全选/全不选*/
    function setValue() {
        var t = mini.get("ck1");
        t.setChecked(!t.getChecked());
        var t = mini.get("ck2");
        t.setChecked(!t.getChecked());
    }

    /* 点击申请人跳出界面 */
    function onButtonEdit1(e) {
        var btnEdit = this;
        mini.open({
            url: "/select_user_gridwindow",
            title: "选择用户列表",
            width: '60%',
            height: '60%',
            showMaxButton: true,
            ondestroy: function (action) {
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        console.log(data.userId + "--" + data.username);
                        btnEdit.setValue(data.userId);
                        btnEdit.setText(data.username);
                    }
                }
            }
        });

    }

    /* 点击所属部门跳出界面 */
    function onButtonEdit2(e) {
        var btnEdit = this;
        mini.open({
            url: "/select_department_gridwindow",
            title: "部门选择表",
            width: '60%',
            height: '60%',
            showMaxButton: true,
            ondestroy: function (action) {
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        console.log(data.depId + "--" + data.depName);
                        btnEdit.setValue(data.depId);
                        btnEdit.setText(data.depName);
                    }
                }
            }
        });

    }

</script>

</body>

</html>