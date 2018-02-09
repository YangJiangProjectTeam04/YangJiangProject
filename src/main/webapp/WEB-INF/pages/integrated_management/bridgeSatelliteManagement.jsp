<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/6
  Time: 下午5:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>卫星库管理人管理的桥</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css" />
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

<div id="tabs1" class="mini-tabs" activeIndex="0" top="0px" border="solid 1px #CBD4D6" style="width:100%;height:100%;"
     url="../../../data/tabsSatellite.txt"
     onactivechanged="onActiveChanged"
>
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
</body>
</html>