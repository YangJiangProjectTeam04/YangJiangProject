<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/6
  Time: 下午5:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<%@page errorPage="../error.jsp" %>
<html>
<head>
    <title>机组管理</title>
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
            width: 8%;
            height: 20px;
            border: 1px solid #A4DCF6;
            background-color: #DBEEF8;
        }

        .td2 {
            width: 20%;
            height: 20px;
            border: 1px solid #A4DCF6;
            background-color: #ECF6F9;
        }

        html body .user_add .mini-buttonedit-icon {
            background: url(../../../scripts/miniui/res/images/user_add.png) no-repeat 50% 50%;
        }

        html body .group_add .mini-buttonedit-icon {
            background: url(../../../scripts/miniui/res/images/group_add.png) no-repeat 50% 50%;
        }

        #location {
            height: 30px;
            background-image: url("../../../img/query/head_color.jpg");
            width: 100%;
            border-bottom: 1px solid #A4DCF6;
        }
    </style>
</head>
<body>
<div id="location">
    <img src="../../../img/query/crewManagement.png">
</div>

<div id="query_condition" class="mini-panel" title="综合查询" iconCls="icon-pull" style="width:100%;height:auto;"
     showCollapseButton="true" collapseOnTitleClick="true"
     expanded="true"
>
    <table id="query_condition_table" border="0" cellpadding="1" cellspacing="2"
           style="font-size: 13px;width: 100%;height: 30px;text-align: center">
        <tr>
            <td class="td1">机组名称</td>
            <td class="td2">
                <input id="name" name="name" class="mini-textbox" width="200px"/>
            </td>
            <td class="td1">机组管理人</td>
            <td class="td2">
                <input id="manageStaffName" name="manageStaffName" class="mini-textbox" width="200px"/>
                <a class="mini-button" onclick="onButtonEdit" plain="true"
                   img="../../../scripts/miniui/res/images/user_b.png"></a>
            </td>
        </tr>
    </table>
    <%--增加删除按钮--%>
    <div style="background-color: #ededed;width: 100%;height: 26px">
        <a class="mini-button" img="../../scripts/miniui/res/images/add.png"
           style="float: right;" onclick="add()">新增</a>

        <span style="float: right">&nbsp;&nbsp;</span>

        <a class="mini-button" img="../../scripts/miniui/res/images/delete.png"
           style="float: right;margin-right: 10px" onclick="remove()">删除</a>

        <span style="float: right">&nbsp;&nbsp;</span>

        <a class="mini-button" img="../../../scripts/miniui/res/images/system_search.gif"
           style="float:right;margin-right: 10px"
           onclick="search()">查询</a>
    </div>

    <%--表格--%>
    <div id="datagrid" class="mini-datagrid" style="width:100%;height:280px;"
         url="selectMacs" idField="id" multiSelect="true" allowResize="true"
         sizeList="[2,5,10]"
         pageSize="5"
    >
        <div property="columns">
            <div type="checkcolumn"></div>
            <div field="name" width="120" headerAlign="center" allowSort="true">机组名称</div>
            <div field="manageStaffName" width="120" headerAlign="center" allowSort="true">机组管理人</div>
            <div field="createDate" width="120" headerAlign="center" allowSort="true">创建日期</div>
        </div>
    </div>
</div>

<script type="text/javascript">

    mini.parse();
    var grid = mini.get('datagrid');

    grid.load();

    // 查询管理人信息
    function onButtonEdit(e) {
        var manageStaffName = mini.get("manageStaffName");
        mini.open({
            url: "select_user_gridwindow",
            title: "人员信息",
            width: 300,
            height: 400,
            ondestroy: function (action) {
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        manageStaffName.setText(data.username);
                    }
                } else {
                    manageStaffName.setValue("");
                }
            }
        });
    }

    // 查询
    function onKeyEnter(e) {
        search();
    }

    /* 查询方法 */
    function search() {
        var name = mini.get("name").getValue();
        var manager = mini.get("manageStaffName").getText();

        grid.load({name: name, manageStaffName: manager});
    }

    /* 增加 */
    function add() {
        mini.open({
            targetWindow: window,
            url: "macInformation",
            title: "新增机组", width: 575, height: 230,
            onload: function () {
                var iframe = this.getIFrameEl();
                var data = {action: "new"};
                iframe.contentWindow.SetData(data);
            },
            ondestroy: function (action) {
                grid.reload();
            }
        });
    }

    /* 删除 */
    function remove() {

        var rows = grid.getSelecteds();

        if (rows.length > 0) {

            if (confirm("确定删除选中记录？")) {

                for (var i = 0, l = rows.length; i < l; i++) {

                    $.ajax({
                        url: "deleteMac",
                        type: "get",
                        data: {name: rows[i].name},
                        success: function (text) {
                            if (text.resultCode == 1) {

                                window.console.log(text.resultMsg);
                                grid.reload();

                            } else {
                                alert(text.resultMsg);
                            }
                        }
                    });

                }
            }
        } else {
            alert("请选中一条记录");
        }
    }
</script>
</body>
</html>
