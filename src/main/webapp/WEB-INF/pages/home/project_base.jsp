<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/5
  Time: 上午8:47
  To change this template use File | Settings | File Templates.
--%>
<%--个人中心的待办业务--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>待办业务</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="../../../css/demo.css">
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../../swfupload/swfupload.js" type="text/javascript"></script>
    <script src="../../../js/ajaxfileupload.js" type="text/javascript"></script>
    <style type="text/css">
        body {

        }

        table{
            width: 100%;
            height: 8%;
            background-color: #ebf5f8;
            border-collapse: collapse;
            border: 1px solid #cbe7f9;
        }
        .tdClass{
            width: 120px;
            height: 20px;
        }


        .text {
            background-image: url("../../../img/home/currentPosition.jpg");
            background-repeat: no-repeat;
            background-size: 100% 100%;
        }

        .trBorder > td {
            border-style: none;
            background-color: #dee8eb;

        }

        .inleft {
            width: 120px;
            height: 20px;
            text-align: center;
        }

    </style>
</head>
<body>

<div id="currentPosition" style="margin: 0px">
    <div id="current" class="text">
        <p><span style="font-family:'宋体';font-weight:400;;margin-left: 40px">当前位置：</span><span
                style="font-family:'宋体 Bold', '宋体 Regular', '宋体';font-weight:700;">个人工作台 &gt;&gt; 待办任务</span></p>
    </div>
</div>

<%--查询条件--%>
<div id="QueryConditions" class="mini-panel" margin-top="0px" title="查询条件"
     iconCls="icon-add"
     style="width:100%;height:100%;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="true" collapseOnTitleClick="true">
    <!--body-->
    <table border="1" style="font-size: 12px">
        <tr>
            <td class="inleft"><span>申请时间：</span></td>
            <td colspan="2" class="tdClass"><input class="mini-datepicker" width="80%" required="true"/></td>

            <td class="inleft"><span>关键字：</span></td>
            <td colspan="2" class="tdClass"><input class="mini-textbox" width="80%" required="true"/></td>
        </tr>
        <tr>

            <td class="inleft">申请人</td>
            <td class="tdClass" colspan="2">
                <input id="btnEdit1" name="" allowInput="false"
                       class="mini-buttonedit user_add" onbuttonclick="onButtonEdit1" width="80%" required="true"/>
            </td>


            <td class="inleft"><span>所属部门：</span></td>
            <td colspan="2" class="tdClass"><input id="btnEdit2" name="" allowInput="false"
                                                   class="mini-buttonedit user_add" onbuttonclick="onButtonEdit1" width="80%" required="true"/>
        </tr>
        <tr class="trBorder">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
    <%--表格选框--%>
    <div id="datagrid1"
         width="100%"
         hight="90%"
         class="mini-datagrid"
         allowResize="true"
         url=""
         idField="id"
         sizeList="[2,5,10]"
         pageSize="5"
         multiSelect="true">

        <div property="columns">

            <div field="sid" width="120" headerAlign="center" allowSort="true">
                <div  class="mini-checkbox" onclick="setValue()"></div>流程编号</div>
            <div field="sname" width="120" headerAlign="center" allowSort="true">流程名称</div>
            <div field="clazz.cname" width="100" headerAlign="center"  allowSort="true">所属部门</div>
            <div field="sname" width="120" headerAlign="center" allowSort="true">当前环节</div>
            <div field="sname" width="120" headerAlign="center" allowSort="true">提报人</div>
            <div field="sname" width="120" headerAlign="center" allowSort="true">提报时间</div>
            <div field="sname" width="120" headerAlign="center" allowSort="true">操作</div>

        </div>
    </div>




</div>

<script type="text/javascript">
    mini.parse();

    /*返回表单数据*/
    function getForm() {
        var form = new mini.Form("#form1");
        var data = form.getData();
        var s = mini.encode(data);
        return s;
    }


    /*全选/全不选*/
    function setValue() {
        var t = mini.get("ck1");
        t.setChecked(!t.getChecked());
        var t = mini.get("ck2");
        t.setChecked(!t.getChecked());
    }





</script>


</body>

</html>