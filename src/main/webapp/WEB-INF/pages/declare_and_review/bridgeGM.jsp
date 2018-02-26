<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/6
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>

<%--桥梁:点击左边个人中心之后,在右边出现tab1,tab2,
这里用的是data中的tabsManager.txt描述写左边的tab1,和tab2标题的名字--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>桥梁,点击出现分支表,总经理部审批的桥梁表</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
    <style>

        body {
            margin: 0;
            padding: 0;
            border: 0;
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>

<div id="tabs2" class="mini-tabs"
     activeIndex="0"
     style="width:100%;height:100%"
     url="../../../data/tabsGM.txt"
     onactivechanged="onActiveChanged">
</div>


<script type="text/javascript">
    mini.parse();


    function onActiveChanged(e) {
        var tabs = e.sender;
        var tab = e.tab;
        if (!tab) return;

        if (tabs.getTabIFrameEl(tab)) return;  //已经存在iframe，则返回
        var url = tab.url + "?id=" + 1; //加工url，传递更多参数
        tabs.loadTab(url, tab);
    }

</script>