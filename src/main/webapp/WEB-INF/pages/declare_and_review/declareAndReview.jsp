<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/5
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%--部门经理审批界面--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>部门经理审批界面</title>
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css">
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../../scripts/thirdparty/swfupload/swfupload.js" type="text/javascript"></script>
    <script src="../../../js/ajaxfileupload.js" type="text/javascript"></script>
    <style type="text/css">
        #query_location {
            height: 30px;
            background-image: url("../../../img/declare_and_review/location_color.jpg");
            width: 100%;
            border-bottom: 1px solid #A4DCF6;
        }
    </style>
</head>
<body>

<div id="query_location">
    <img src="../../../img/declare_and_review/location.png">
</div>



<script type="text/javascript">
    mini.parse();
    /////////////////////////////
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
