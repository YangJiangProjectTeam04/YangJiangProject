<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/3
  Time: 下午2:58
  To change this template use File | Settings | File Templates.
--%>

<%--主页:登录进来之后进入的页面,主要大框--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>主页呢</title>
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
            background-color: rgba(38, 84, 154, 0.91);
        }

        .header {
            height: 36px;
            background-image: url(../../../img/home/header.jpg);
            background-size: 100%;
            /*background: url(../../../img/home/header.jpg) repeat-x 0 -1px;*/
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

    </style>
</head>
<body>
<!--Layout-->
<div id="layout1" class="mini-layout" style="width:100%;height:100%;">

    <%--个人工作台按钮--%>
    <div class="header" region="north"  showSplit="false" showHeader="false" height="63px">
        <div style="position:absolute;top:20px;right:10px;">
            <input type="submit" value="个人工作台">
        </div>
    </div>

    <div title="center" region="center" style="margin-top:0px;border:0;" bodyStyle="overflow:hidden;">
        <!--Splitter-->
        <%--tab框框的设置--%>
        <div class="mini-splitter" style="width:100%;height:100%;" borderStyle="border:0;">
            <%--设置最左边个人中心框的大小--%>
            <div size="190" maxSize="250" minSize="100"
                 showCollapseButton="true" style="border:0;margin-left: 7px;background-color: #eff8ff">
                <!--Outlookmenu-->
                <div id="leftTree" class="mini-outlookmenu"

                     url="../../../data/outlookmenu.txt"
                     onitemselect="onItemSelect"
                     textField="text" idField="id" parentField="pid">
                </div>
            </div>
            <%--主框架--%>
            <div title="center" region="center" bodyStyle="overflow:hidden;">
                <iframe id="mainframe" frameborder="0" name="main"  style="width:100%;height:100%;"border="0"></iframe>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    mini.parse();

    //在homeController中声明
    //init iframe src
    var iframe = document.getElementById("mainframe");
    iframe.src = "/person";

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
