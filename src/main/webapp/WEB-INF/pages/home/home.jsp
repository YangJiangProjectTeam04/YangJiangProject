<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/3
  Time: 下午2:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页呢</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="page/css/demo.css" rel="stylesheet" type="text/css"/>

    <script src="scripts/boot.js" type="text/javascript"></script>

    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            border: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        .header {
            background: url(page/img/header.gif) repeat-x 0 -1px;
        }
    </style>
</head>
<body>
<!--Layout-->
<div id="layout1" class="mini-layout" style="width:100%;height:100%;">
    <div class="header" region="north" height="70" showSplit="false" showHeader="false">
        <h1 style="margin:0;padding:15px;cursor:default;font-family:微软雅黑,黑体,宋体;">采购监管平台系统</h1>
        <div style="position:absolute;top:18px;right:10px;">
            <input type="submit" value="个人工作台">
        </div>

    </div>
    <div title="south" region="south" showSplit="false" showHeader="false" height="30">
        <div style="line-height:28px;text-align:center;cursor:default">Copyright © 版权归宋美冬所有 盗版必究</div>
    </div>
    <div title="center" region="center" style="border:0;" bodyStyle="overflow:hidden;">
        <!--Splitter-->
        <div class="mini-splitter" style="width:100%;height:100%;" borderStyle="border:0;">
            <div size="180" maxSize="250" minSize="100" showCollapseButton="true" style="border:0;">
                <!--Outlookmenu-->
                <div id="leftTree" class="mini-outlookmenu"
                     url="/page/data/outlookmenu.txt"
                     onitemselect="onItemSelect"
                     textField="text" idField="id" parentField="pid">
                </div>
            </div>
            <%----%>
            <div title="center" region="center" bodyStyle="overflow:hidden;">
                <iframe id="mainframe" frameborder="0" name="main" style="width:100%;height:100%;" border="0"></iframe>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    mini.parse();

    //init iframe src
    var iframe = document.getElementById("mainframe");
    iframe.src = "/home.jsp";

    function onItemSelect(e) {
        var item = e.item;
        iframe.src = item.url;
    }
    var tree = mini.get("leftTree");

    function onNodeSelect(e) {
        var node = e.node;
        var isLeaf = e.isLeaf;

        if (isLeaf) {
            showTab(node);
        }
    }

    function onClick(e) {
        var text = this.getText();
        alert(text);
    }
    function onQuickClick(e) {
        tree.expandPath("datagrid");
        tree.selectNode("datagrid");
    }

    function onTabsActiveChanged(e) {
        var tabs = e.sender;
        var tab = tabs.getActiveTab();
        if (tab && tab._nodeid) {

            var node = tree.getNode(tab._nodeid);
            if (node && !tree.isSelectedNode(node)) {
                tree.selectNode(node);
            }
        }
    }
</script>
</body>
</html>
