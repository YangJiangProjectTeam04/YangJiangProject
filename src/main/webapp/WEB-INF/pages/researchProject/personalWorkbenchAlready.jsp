<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/7
  Time: 09:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true"%>
<%@page errorPage="../error.jsp" %>
<html>
<head>
    <title>个人工作平台之已办任务</title>
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
    </style>
</head>
<body>

<%--当前位置行--%>
<div id="location">
    <img src="../../../img/researchProject/alreadyLocation.png">
</div>

<%--表--%>
<div id="datagrid1" class="mini-datagrid" style="width:100%;height:280px;"
     url="" idField="id" multiSelect="true"
>
    <div property="columns">
        <div type="checkcolumn"></div>
        <div field="" width="120" headerAlign="center" allowSort="true">流程编号</div>
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
</script>


</body>
</html>
