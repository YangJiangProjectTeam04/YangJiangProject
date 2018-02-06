<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/6
  Time: 下午7:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>厂房管理</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
    <link href="../../../scripts/miniui/themes/blue/skin.css" rel="stylesheet" type="text/css"/>
    <style>

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
        .text {
            background-image: url("../../../img/home/currentPosition.jpg");
            background-repeat: no-repeat;
            background-size: 100% 100%;
        }
    </style>
</head>
<div id="currentPosition" style="margin: 0px">
    <div id="current" class="text">
        <p><span style="font-family:'宋体';font-weight:400;;margin-left: 40px">当前位置：</span>
            <span style="font-family:'宋体 Bold', '宋体 Regular', '宋体';font-weight:700;">综合管理 &gt;&gt; 厂房管理</span></p>
    </div>
</div>
<div id="query_condition" class="mini-panel" title="综合查询" style="width:100%;height:auto;"
     showCollapseButton="true" collapseOnTitleClick="true"
     expanded="true"
>
    <table id="query_condition_table" border="0" cellpadding="1" cellspacing="2"
           style="font-size: 13px;width: 100%;height: 30px;text-align: center">
        <tr>
            <td class="td1">厂房名称</td>
            <td class="td2">
                <input name="" class="mini-textbox" width="200px" required="true"/>
            </td>
            <td class="td1">厂房经理</td>
            <td class="td2">
                <input id="btnEdit1" name="" allowInput="false"
                       class="mini-buttonedit user_add" onbuttonclick="onButtonEdit1" width="200px"/>
            </td>
        </tr>
        <tr>
            <td class="td1">厂房地址</td>
            <td class="td2">
                <input name="" class="mini-textbox" width="200px" required="true"/>
            </td>
            <td class="td1">机组</td>
            <td class="td2">
                <input id="combo2" class="mini-combobox" width="200px" textField="text" valueField="id"
                       url="" ondrawcell="onDrawCell"/>
            </td>
        </tr>
    </table>
    <%--拒绝删除按钮--%>
    <div style="background-color: #ededed;width: 100%;height: 26px">
        <a class="mini-button" img="../../scripts/miniui/res/images/accept.png" style="float: right;margin-right: 10px">同意</a>
        <span style="float: right">&nbsp;&nbsp;</span>
        <a class="mini-button" img="../../scripts/miniui/res/images/cancel.png" style="float: right;">拒绝</a>
        <span style="float: right">&nbsp;&nbsp;</span>
        <a class="mini-button" img="../../../scripts/miniui/res/images/system_search.gif" style="float:right;">查询</a>
    </div>

    <%----%>
    <div id="datagrid1" class="mini-datagrid" style="width:100%;height:280px;"
         url="" idField="id" multiSelect="true"
    >
        <div property="columns">
            <div type="checkcolumn"></div>
            <div field="" width="120" headerAlign="center" allowSort="true">机组名称</div>
            <div field="" width="120" headerAlign="center" allowSort="true">机组管理人</div>
            <div field="" width="120" headerAlign="center" allowSort="true">创建日期</div>
        </div>
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
