<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/3
  Time: 下午2:58
  To change this template use File | Settings | File Templates.
--%>

<%--主页:登录进来之后进入的页面,主要大框--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
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
            background-image: url(../../../img/home/background.jpg)
        }

        .header {
            background-image: url(../../../img/home/background.jpg);
            background-size: 100%;
        }

        #left {
            margin-top: 7px;
            border: 0;
            float: left;
        }

        #right {
            border: 0;
            float: right;
        }

        .layout {
            padding-left: 220px;
            height: 100%;
            position: relative;
        }

        .layout-left {
            width: 100%;
            height: 100%;
            background: #eff8ff;
            position: absolute;
            left: 0;
            top: 0;
            border:0;
            margin-left: 7px;
        }

        .layout-splitter {
            width: 7px;
            height: 100%;
            overflow: hidden;
            background-image: url(../../../img/home/background.jpg);
            position: absolute;
            left: 213px;
            top: 0;
        }

        .layout-handler {
            position: absolute;
            width: 7px;
            height: 100%;
            cursor: pointer;
        }

        .layout-center {
            width: auto;
            height: 100%;
            background: #efefef;
            position: relative;
        }

        /*折叠*/
        .layout-collapse {
            padding-left: 7px;
        }

        .layout-collapse .layout-left {
            display: none;
        }

        .layout-collapse .layout-splitter {
            left: 0px;
        }
    </style>
</head>
<body>
<!--Layout-->
<div id="layout1" class="mini-layout" style="width:100%;height:100%;" showSplitIcon="true">

    <%--1个人工作台按钮--%>
    <div class="header" region="north" showSplit="false" showHeader="false" height="63px" showSplitIcon="true">
        <div id="left">
            <img src="../../../img/home/left.png">
        </div>
        <div id="right">
            <img src="../../../img/home/right.png">
        </div>
        <div style="position:absolute;top:24px;right:15px;">
            <input type="submit" value="个人工作台">
        </div>
    </div>


    <div title="center" region="center" style="margin-top:0px;border:0;" bodyStyle="overflow:hidden;">
        <!--Splitter-->
        <%--tab框框的设置--%>
        <%--mini-splitter是分割器--%>
        <%--<div class="mini-splitter" style="width:100%;height:100%;" borderStyle="border:0;">--%>
            <%--&lt;%&ndash;设置最左边个人中心框的大小&ndash;%&gt;--%>
            <%--<div size="200" maxSize="250" minSize="100"--%>
                 <%--showCollapseButton="true" style="border:0;margin-left: 7px;background-color: #eff8ff">--%>
                <%----%>
            <%--</div>--%>
            <%--&lt;%&ndash;主框架&ndash;%&gt;--%>
            <%--<div title="center" region="center" bodyStyle="overflow:hidden;"--%>
                 <%--style="margin-left: 7px;padding: 0;background-color: white;">--%>
                <%----%>
            <%--</div>--%>
        <%--</div>--%>

        <div id="layout" class="layout">

            <div class="layout-left">
                <!--Outlookmenu-->
                <div id="leftTree" class="mini-outlookmenu"
                     url="../../../data/outlookmenu.txt"
                     onitemselect="onItemSelect"
                     textField="text" idField="id" parentField="pid">
                </div>

            </div>

            <div class="layout-splitter">

                <img class="layout-handler" src="../../../img/home/button.gif" alt="" onclick="toggleLayout()">

            </div>

            <div class="layout-center">

                <div id="center" class="layout2-center">

                    <iframe id="mainframe" frameborder="0" name="main" style="width:100%;height:100%;" border="0"></iframe>

                </div>

            </div>

        </div>

    </div>

    <div title="south" region="south" showSplit="false" showHeader="false" height="10">
        <div style="line-height:28px;text-align:center;cursor:default">

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

//    折叠
    function toggleLayout() {
        var el = document.getElementById("layout");
        if (el.className.indexOf("layout-collapse") == -1) {
            el.className = 'layout layout-collapse';
        } else {
            el.className = 'layout';
        }
    }

    autoheight("center");

</script>
</body>
</html>
