<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/3
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isErrorPage="true"%>
<%@page errorPage="../error.jsp" %>
<html>
<head>
    <title>综合查询</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css"/>
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

        #location {
            height: 30px;
            background-image: url("../../../img/query/head_color.jpg");
            width: 100%;
            border-bottom: 1px solid #A4DCF6;
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

        #query_condition_table {
            border: 1px solid white;
            border-collapse: collapse;
        }

        .td1 {
            width: 11%;
            border: 1px solid #A4DCF6;
            background-color: #DBEEF8;
        }

        .td2 {
            width: 22%;
            border: 1px solid #A4DCF6;
            background-color: #ECF6F9;
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

<div id="location">
    <img src="../../../img/query/head.png">
</div>

<div id="query_condition" class="mini-panel" title="综合查询" iconCls="icon-pull" style="width:100%;height:auto;"
     showCollapseButton="true" collapseOnTitleClick="true"
     expanded="true"
>
    <table id="query_condition_table" border="0" cellpadding="1" cellspacing="2"
           style="font-size: 13px;width: 100%;height: 60px;text-align: center">
        <tr>
            <td class="td1">申请时间</td>
            <td class="td2">
                <input name="" class="mini-datepicker" width="200px" allowInput="false" required="true"/>
            </td>
            <td class="td1">申请人</td>
            <td class="td2">
                <input id="btnEdit1" name="" allowInput="false"
                       class="mini-buttonedit user_add" onbuttonclick="onButtonEdit1" width="200px"/>
            </td>
            <td class="td1">关键字</td>
            <td class="td2">
                <input name="" class="mini-textbox" width="200px" required="true"/>
            </td>
        </tr>
        <tr>
            <td class="td1">流程类型</td>
            <td class="td2">
                <input id="combo1" class="mini-combobox" width="200px" textField="text" valueField="id"
                       url="" ondrawcell="onDrawCell"/>
            </td>
            <td class="td1">所属部门</td>
            <td class="td2">
                <input id="btnEdit2" name="" allowInput="false"
                       class="mini-buttonedit group_add" onbuttonclick="onButtonEdit2" width="200px"/>
            </td>
            <td class="td1">是否可以打印</td>
            <td class="td2">
                <input id="combo2" class="mini-combobox" width="200px" textField="text" valueField="id"
                       url="" ondrawcell="onDrawCell"/>
            </td>
        </tr>
    </table>
</div>

<div id="query_button">
    <a class="mini-button" img="../../../scripts/miniui/res/images/system_search.gif">查询</a>
</div>


<div id="datagrid1" class="mini-datagrid" style="width:100%;height:280px;"
     url="" idField="id" multiSelect="true"
>
    <div property="columns">
        <div type="checkcolumn"></div>
        <div field="" width="120" headerAlign="center" allowSort="true">流程编号</div>
        <div field="" width="120" headerAlign="center" allowSort="true">流程名称</div>
        <div field="" width="120" headerAlign="center" allowSort="true">所属部门</div>
        <div field="" width="120" headerAlign="center" allowSort="true">当前环节</div>
        <div field="" width="120" headerAlign="center" allowSort="true">提报人</div>
        <div field="" width="100" headerAlign="center" renderer="onMarriedRenderer">是否可以打印</div>
        <div field="" width="120" headerAlign="center" allowSort="true">操作</div>
    </div>
</div>


<script type="text/javascript">
    mini.parse();
    var grid = mini.get('datagrid1');

    //    grid.setUrl("searchClazz.action");

    // grid.load();

    function onButtonEdit1(e) {
        var btnEdit = this;
        mini.open({
            // url: "select_1_gridwindow",
            title: "选择申请人列表",
            width: '80%',
            height: '80%',
            showMaxButton: true,
            ondestroy: function (action) {
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        console.log(data.cid + "--" + data.cname);
                        btnEdit.setValue(data.cid);
                        btnEdit.setText(data.cname);
                    }
                }
            }
        });

    }
    function onButtonEdit2(e) {
        var btnEdit = this;
        mini.open({
            // url: "select_2_gridwindow",
            title: "选择所属部门列表",
            width: '80%',
            height: '80%',
            showMaxButton: true,
            ondestroy: function (action) {
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        btnEdit.setValue(data.sid);
                        btnEdit.setText(data.sname);
                    }
                }
            }
        });

    }

</script>
</body>
</html>
