<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/5
  Time: 上午8:47
  To change this template use File | Settings | File Templates.
--%>
<%--个人中心的已办业务--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="../../../css/demo.css">
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../../swfupload/swfupload.js" type="text/javascript"></script>
    <script src="../../../js/ajaxfileupload.js" type="text/javascript"></script>
    <style type="text/css">
        table, td {
            background-color: #e6e9f3;
            border: 3px solid white;
            border-collapse: collapse;
        }

    </style>
</head>
<body>
<table border="0" cellpadding="1" cellspacing="2">

</table>
<script type="text/javascript">
    mini.parse();

    /*返回表单数据*/
    function getForm() {
        var form = new mini.Form("#form1");
        var data = form.getData();
        var s = mini.encode(data);
        return s;
    }

</script>


</body>

</html>