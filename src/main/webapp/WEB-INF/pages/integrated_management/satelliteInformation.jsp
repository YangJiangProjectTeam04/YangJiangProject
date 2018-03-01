<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/27
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据库信息</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>

    <script src="/scripts/boot.js" type="text/javascript"></script>


    <style type="text/css">
        html, body {
            font-size: 12px;
            padding: 0;
            margin: 0;
            border: 0;
            height: 100%;
            overflow: hidden;
        }

        form {
            padding: 5px;
        }

        table {
            font-size: 12px;
        }
    </style>
</head>
<body>

<form id="form1" method="post">
    <input name="id" class="mini-hidden"/>
    <table>
        <tr>
            <td>卫星库名称</td>
            <td>
                <input name="storeName" class="mini-textbox" required="true"/>
            </td>
        </tr>

        <tr>
            <td>管理人员编号</td>
            <td>
                <input id="manageStaffNo" name="manageStaffNo" class="mini-textbox" allowInput="false" required="true"/>
            </td>
            <td>管理人员名称</td>
            <td>
                <input id="manageStaffName" name="manageStaffName" class="mini-textbox" allowInput="false"
                       required="true"/>
            </td>
            <td>
                <a class="mini-button" onclick="onButtonEdit1" plain="true"
                   img="../../../scripts/miniui/res/images/user_red.png"></a>
            </td>
        </tr>

        <tr>
            <td>是否有效</td>
            <td>
                <select name="effectFlag" class="mini-radiobuttonlist">
                    <option value="1">Y</option>
                    <option value="2">N</option>
                </select>
            </td>
        </tr>

        <tr>
            <td>创建人编号</td>
            <td>
                <input id="createStaffNo" name="createStaffNo" class="mini-textbox" allowInput="false" required="true"/>
            </td>
            <td>创建人姓名</td>
            <td>
                <input id="createStaffName" name="createStaffName" class="mini-textbox" allowInput="false"
                       required="true"/>
            </td>
            <td>
                <a class="mini-button" onclick="onButtonEdit2"  plain="true"
                   img="../../../scripts/miniui/res/images/user_b.png"></a>
            </td>
        </tr>

        <tr>
            <td>创建时间：</td>
            <td>
                <input id="createDate" name="createDate" class="mini-datepicker" required="true" emptyText="请选择日期"/>
            </td>
        </tr>

    </table>

    <div style="text-align:center;padding:10px;">
        <a class="mini-button" onclick="onOk" style="width:60px;margin-right:20px;">确定</a>
        <a class="mini-button" onclick="onCancel" style="width:60px;">取消</a>
    </div>

</form>


<script type="text/javascript">
    mini.parse();

    var form = new mini.Form("form1");

    function SaveData() {
        var o = form.getData();

        form.validate();
        if (form.isValid() == false) return;

        var json = mini.encode(o);

        var time = mini.get("createDate").getValue();
        var date = null;
        if (time != null && time != '') {
            date = formatDate(time);
        }

        $.ajax({
            url: "insert",
            type: 'post',
            data: {data: json, date: date},

            success: function (text) {
                if (text.resultCode == 0) {
                    alert(text.resultMsg);
                    CloseWindow();

                } else {
                    alert(text.resultMsg);
                }

            }

        });

    }

    function CloseWindow(action) {
        if (action == "close" && form.isChanged()) {
            if (confirm("数据被修改了，是否先保存？")) {
                return false;
            }
        }
        if (window.CloseOwnerWindow) return window.CloseOwnerWindow(action);
        else window.close();
    }

    function onOk(e) {
        SaveData();
    }

    function onCancel(e) {
        CloseWindow("cancel");
    }

    function onButtonEdit1(e) {
        var manageStaffNo = mini.get("manageStaffNo");
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
                        manageStaffNo.setValue(data.userId);
                        manageStaffName.setValue(data.username);
                    }
                } else {
                    manageStaffNo.setValue("");
                    manageStaffName.setValue("");
                }
            }
        });

    }

    function onButtonEdit2(e) {
        var createStaffNo = mini.get("createStaffNo");
        var createStaffName = mini.get("createStaffName");
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
                        createStaffNo.setValue(data.userId);
                        createStaffName.setValue(data.username);
                    }
                } else {
                    createStaffNo.setValue("");
                    createStaffName.setValue("");
                }
            }
        });

    }

    /*将中国标准时间更改为年-月-日*/
    function formatTen(num) {
        return num > 9 ? (num + "") : ("0" + num);
    }
    function formatDate(date) {
        var year = date.getFullYear();
        var month = date.getMonth() + 1;
        var day = date.getDate();
        var hour = date.getHours();
        var minute = date.getMinutes();
        var second = date.getSeconds();
        return year + "-" + formatTen(month) + "-" + formatTen(day);
    }

</script>
</body>
</html>
