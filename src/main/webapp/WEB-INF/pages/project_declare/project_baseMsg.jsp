<%--
  Created by 蓝鸥科技有限公司  www.lanou3g.com.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@page errorPage="../error.jsp" %>
<html>
<head>
    <title>项目基本信息</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
    <style>
        body {
            margin: 0;
            padding: 0;
            border: 0;
            width: 100%;
        }

        #body {
            border: 1px solid #A4DCF6;
        }

        .tabl {
            border: 1px solid #A4DCF6;
            border-collapse: collapse;
        }

        .td1 {
            width: 10%;
            border: 1px solid #A4DCF6;
            background-color: #DBEEF8;
            text-align: right;
        }

        .td2 {
            width: 40%;
            border: 1px solid #A4DCF6;
            background-color: #ECF6F9;
        }

        .td3 {
            width: 90%;
            border: 1px solid #A4DCF6;
            background-color: #ECF6F9;
        }

        html body .group_add .mini-buttonedit-icon {
            background: url(../../../scripts/miniui/res/images/group_add.png) no-repeat 50% 50%;
        }
    </style>

</head>
<body>
<div id="body">

    <div id="base_msg" class="mini-panel" title="项目基本信息" iconCls="icon-pull" style="width:100%;height: auto;"
         showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
    >
        <table class="tabl" cellpadding="1" cellspacing="2"
               style="font-size: 13px;width: 100%;height: 60px;">
            <tr>
                <td class="td1">项目名称&nbsp;<img src="../../../img/project_declare/must.gif"/>&nbsp;</td>
                <td class="td2">
                    <input name="" class="mini-textbox" width="200px" required="true"/>
                </td>
            </tr>
            <tr>
                <td class="td1">项目申报单位&nbsp;<img src="../../../img/project_declare/must.gif"/>&nbsp;</td>
                <td class="td2">
                    <input id="btnEdit1" name="" allowInput="false"
                           class="mini-buttonedit group_add" onbuttonclick="onButtonEdit1" width="200px"/>
                </td>
                <td class="td1">联合申报单位&nbsp;<img src="../../../img/project_declare/must.gif"/>&nbsp;</td>
                <td class="td2">
                    <input id="btnEdit2" name="" allowInput="false"
                           class="mini-buttonedit group_add" onbuttonclick="onButtonEdit2" width="200px"/>
                </td>
            </tr>
            <tr>
                <td class="td1">目的&nbsp;<img src="../../../img/project_declare/must.gif"/>&nbsp;</td>
                <td colspan="3">
                    <input class="mini-textarea" required="true" width="100%" height="100%"/>
                </td>
            </tr>
        </table>
    </div>

    <div id="analyze" class="mini-panel" title="与核电生产运营安全性、可靠性、经济性的适应分析" iconCls="icon-pull" style="width:100%;height:auto;"
         showCollapseButton="false" collapseOnTitleClick="true"
         expanded="true"
    >
        <table class="tabl" cellpadding="1" cellspacing="2"
               style="font-size: 13px;width: 100%;height: 60px;">
            <tr>
                <td class="td1">安全性&nbsp;</td>
                <td class="td2">
                    <input name="" class="mini-textbox" width="200px"/>
                </td>
                <td class="td1">可靠性&nbsp;</td>
                <td class="td2">
                    <input name="" class="mini-textbox" width="200px"/>
                </td>
            </tr>
            <tr>
                <td class="td1">经济性&nbsp;</td>
                <td class="td2">
                    <input name="" class="mini-textbox" width="200px"/>
                </td>
                <td class="td1">其他&nbsp;</td>
                <td class="td2">
                    <input name="" class="mini-textbox" width="200px"/>
                </td>
            </tr>
        </table>
    </div>

    <div id="other_msg" class="mini-panel" title="项目其他信息" iconCls="icon-pull" style="width:100%;height:auto;"
         showCollapseButton="false" collapseOnTitleClick="true"
         expanded="true"
    >
        <table class="tabl" cellpadding="1" cellspacing="2"
               style="font-size: 13px;width: 100%;height: 60px;">
            <tr>
                <td class="td1">成果应用&nbsp;</td>
                <td class="td3">
                    <input class="mini-textarea" width="100%" height="100%"/>
                </td>
            </tr>
            <tr>
                <td class="td1">实际用户&nbsp;</td>
                <td class="td3">
                    <input class="mini-textarea" width="100%" height="100%"/>
                </td>
            </tr>
            <tr>
                <td class="td1">潜在用户&nbsp;</td>
                <td class="td3">
                    <input class="mini-textarea" width="100%" height="100%"/>
                </td>
            </tr>
            <tr>
                <td class="td1">项目完成周期&nbsp;</td>
                <td class="td2">
                    <input name="" class="mini-textbox" width="200px"/>
                </td>
            </tr>
            <tr>
                <td class="td1">
                    项目内容&nbsp;
                    <br>
                    路径简介&nbsp;
                </td>
                <td class="td3">
                    <input class="mini-textarea" width="100%" height="100%"/>
                </td>
            </tr>
        </table>
    </div>

    <div id="budget" class="mini-panel" title="预算信息" iconCls="icon-pull" style="width:100%;height:auto;"
         showCollapseButton="false" collapseOnTitleClick="true" expanded="true"
    >
        <table class="tabl" cellpadding="1" cellspacing="2"
               style="font-size: 13px;width: 100%;height: 60px;">
            <tr>
                <td class="td1">总预算&nbsp;<img src="../../../img/project_declare/must.gif"/>&nbsp;</td>
                <td class="td2">
                    <input name="" class="mini-textbox" width="200px" required="true"/>
                </td>
                <td class="td1">公司经费&nbsp;</td>
                <td class="td2">
                    <input name="" class="mini-textbox" width="200px"/>
                </td>
            </tr>
            <tr>
                <td class="td1">外部支持经费&nbsp;</td>
                <td class="td2">
                    <input name="" class="mini-textbox" width="200px"/>
                </td>
                <td class="td1">国家经费&nbsp;</td>
                <td class="td2">
                    <input name="" class="mini-textbox" width="200px"/>
                </td>
            </tr>
        </table>
    </div>

</div>
<script type="text/javascript">
    mini.parse();

    /*返回表单数据*/
    //    function getForm() {
    //        var form = new mini.Form("#form1");
    //        var data = form.getData();
    //        var s = mini.encode(data);
    //        return s;
    //    }


    //    function onButtonEdit(e) {
    //        var btnEdit = this;
    //        mini.open({
    //            url: "/page/select_clazz_gridwindow.jsp",
    //            title: "选择班级列表",
    //            width: '80%',
    //            height: '80%',
    //            showMaxButton: true,
    //            ondestroy: function (action) {
    //                if (action == "ok") {
    //                    var iframe = this.getIFrameEl();
    //                    var data = iframe.contentWindow.GetData();
    //                    data = mini.clone(data);    //必须
    //                    if (data) {
    //                        console.log(data.cid + "--" + data.cname);
    //                        btnEdit.setValue(data.cid);
    //                        btnEdit.setText(data.cname);
    //                    }
    //                }
    //            }
    //        });
    //
    //    }
    //    function onStudentButtonEdit(e) {
    //        var btnEdit = this;
    //        mini.open({
    //            url: "/page/select_student_gridwindow.jsp",
    //            title: "选择学生列表",
    //            width: '80%',
    //            height: '80%',
    //            showMaxButton: true,
    //            ondestroy: function (action) {
    //                if (action == "ok") {
    //                    var iframe = this.getIFrameEl();
    //                    var data = iframe.contentWindow.GetData();
    //                    data = mini.clone(data);    //必须
    //                    if (data) {
    //                        btnEdit.setValue(data.sid);
    //                        btnEdit.setText(data.sname);
    //                    }
    //                }
    //            }
    //        });
    //
    //    }

</script>


</body>

</html>