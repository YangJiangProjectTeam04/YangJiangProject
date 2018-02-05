<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/3
  Time: 下午4:58
  To change this template use File | Settings | File Templates.
--%>

<%--个人中心中的代办和已办任务的框架--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>个人工作平台的代办任务和已办任务</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../../js/jquery.cookie.js"></script>
</head>
<body>
<div id="tabs1" class="mini-tabs" activeIndex="0" style="width:100%;height:100%;"
     url="../../../data/tabs.txt" onactivechanged="onActiveChanged">
</div>


<script type="text/javascript">
    mini.parse();
    //先找tab组件
    var tabs = mini.get("tabs1");
    //给tab组件加入监听事件,tab切换前的事件回调
    tabs.on("beforeactivechanged",function (e) {
        //控件加入DOM元素呈现
        tabs = e.render();
        //取第一个tab页面的iframe对象
        var iframe = tabs.getTabIFrameEl(tabs.get(0));
        //第一个tab页面中的数据保存到cookie中
        var form = iframe.contentWindow.getForm();
        //将第一个form表单中的数据保存到cookie中,cookie存储的key为form1
        $.cookie("from1",data);
        console.log("第一个表单的数据:"+data);
    })

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
