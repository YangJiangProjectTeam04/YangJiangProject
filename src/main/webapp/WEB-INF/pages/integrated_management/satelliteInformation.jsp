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
                <input name="satelliteName" class="mini-textbox" required="true"/>
            </td>
        </tr>

        <tr>
            <td>管理人员编号</td>
            <td>
                <input name="manageStaffNo" class="mini-textbox" required="true"/>
            </td>
            <td>管理人员名称</td>
            <td>
                <input name="manageStaffName" class="mini-textbox" required="true"/>
            </td>
            <td>
                <button>管理人员</button>
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
            <td>创建人</td>
            <td>
                <input name="createStaffNo" class="mini-textbox" required="true"/>
            </td>
            <td>创建人姓名</td>
            <td>
                <input name="createStaffName" class="mini-textbox" required="true"/>
            </td>
            <td>
                <button>创建人</button>
            </td>
        </tr>

        <tr>
            <td>创建时间：</td>
            <td>
                <input name="createDate" class="mini-datepicker" required="true" emptyText="请选择日期"/>
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

        var json = mini.encode([o]);
        $.ajax({
            url: "",
            type: 'post',
            data: {data: json},
            cache: false,
            success: function (text) {
                CloseWindow("save");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert(jqXHR.responseText);
                CloseWindow();
            }
        });
    }

    ////////////////////
    //标准方法接口定义
    function SetData(data) {
        if (data.action == "edit") {
            //跨页面传递的数据对象，克隆后才可以安全使用
            data = mini.clone(data);

            $.ajax({
                //                url: "../data/AjaxService.jsp?method=GetEmployee&id=" + data.id,
                cache: false,
                success: function (text) {
                    var o = mini.decode(text);
                    form.setData(o);
                    form.setChanged(false);

                    onDeptChanged();
                    mini.getbyName("position").setValue(o.position);
                }
            });
        }
    }

    function GetData() {
        var o = form.getData();
        return o;
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
    //////////////////////////////////
    function onDeptChanged(e) {
        var deptCombo = mini.getbyName("dept_id");
        var positionCombo = mini.getbyName("position");
        var dept_id = deptCombo.getValue();

        positionCombo.load("../data/AjaxService.jsp?method=GetPositionsByDepartmenId&id=" + dept_id);
        positionCombo.setValue("");
    }


</script>
</body>
</html>
