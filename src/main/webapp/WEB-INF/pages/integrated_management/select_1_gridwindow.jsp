<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/5
  Time: 17:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title></title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="../../../scripts/boot.js" type="text/javascript"></script>

    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            border: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }
    </style>
</head>
<body>
<div class="mini-toolbar" style="text-align:center;line-height:30px;" borderStyle="border:0;">
    <label>班级名称：</label>
    <input id="key" class="mini-textbox" style="width:150px;" onenter="onKeyEnter"/>
    <a class="mini-button" style="width:60px;" onclick="search()">查询</a>
</div>
<div class="mini-fit">

    <div id="grid1" class="mini-datagrid"
         style="width:100%;height:100%;"
         idField="id" allowResize="true"
         sizeList="[2,3,5,10]" pageSize="5"
         borderStyle="border-left:0;border-right:0;"
         onrowdblclick="onRowDblClick">

        <div property="columns">
            <div field="cid" width="120"
                 headerAlign="center" allowSort="true">班级编号</div>
            <div field="cname" width="100" headerAlign="center" allowSort="true">班级名称</div>
            <div field="cinfor" width="100%" headerAlign="center" allowSort="true">班级信息</div>
        </div>
    </div>

</div>


</body>
</html>
<script type="text/javascript">
    mini.parse();

    var grid = mini.get("grid1");

    //动态设置URL
    grid.setUrl("");
    grid.load();

    function GetData() {
        var row = grid.getSelected();
        return row;
    }
    function search() {
        var key = mini.get("key").getValue();
        grid.load({x: key});
    }
    function onKeyEnter(e) {
        search();
    }
    function onRowDblClick(e) {
        onOk();
    }
    function CloseWindow(action) {
        if (window.CloseOwnerWindow) return window.CloseOwnerWindow(action);
        else window.close();
    }

    function onOk() {
        CloseWindow("ok");
    }
    function onCancel() {
        CloseWindow("cancel");
    }


</script>
