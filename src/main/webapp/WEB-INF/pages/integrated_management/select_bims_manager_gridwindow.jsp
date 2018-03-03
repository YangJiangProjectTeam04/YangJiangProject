<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/5
  Time: 17:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" isErrorPage="true"%>
<%@page errorPage="../error.jsp" %>

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

<div class="mini-fit">

    <div id="grid1" class="mini-datagrid"
         style="width:100%;height:100%;"
         idField="id" allowResize="true"
         sizeList="[2,3,5,10]" pageSize="5"
         borderStyle="border-left:0;border-right:0;"
         onrowdblclick="onRowDblClick">

        <div property="columns">
            <div field="manageStaffNo" width="120" headerAlign="center" allowSort="true">管理人员编号</div>
            <div field="manageStaffName" width="120" headerAlign="center" allowSort="true">管理人员名称</div>
        </div>
    </div>

</div>


</body>
</html>
<script type="text/javascript">
    mini.parse();

    var grid = mini.get("grid1");

    //动态设置URL
    grid.setUrl("selectSatelliteLibs");
    grid.load();

    function GetData() {
        var row = grid.getSelected();
        return row;
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
