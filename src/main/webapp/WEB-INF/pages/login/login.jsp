<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/3
  Time: 上午10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>首页</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../../css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="../../../scripts/boot.js" type="text/javascript"></script>
    <style>
        body{
            background-image:url("../../../img/login/login2.jpg");
            background-repeat:no-repeat;
            background-size:100% 100%;
            background-attachment: fixed;

        }
        .den {
            width: 220px;
            height: 30px;
            background-color: #f2f1b1;
            color: #ae9e6f;
            border: 1px solid #ae9e6f;
        }
        .login{
            /*margin-top: 320px;*/
            /*margin-left: 920px;*/
            /*position: fixed;*/
            position: absolute;
            width: 400px;
            height: 200px;
            top:35%;
            left:62%;
        }


    </style>
</head>
<body>
<div id="form1" class="login">
    <table>
        <tr>
            <%--<td><label for="username$text">帐号：</label></td>--%>
            <td><label style="size: 12px">用户名：</label></td>
            <td>
                <input name="username" vtype="email" class="mini-textbox" required="true" requiredErrorText="帐号不能为空"/>
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><label style="size: 12px">密码：</label></td>
            <%--<td><label for="pwd$text">密码：</label></td>--%>
            <td>
                <input name="pwd" class="mini-password" vtype="minLength:5" required="true"
                       minLengthErrorText="密码不能少于5个字符"/>
            </td>
        </tr>

    </table>
    <input type="checkbox" style="margin-left: 160px;margin-top: 20px">记住密码
    <br>
    <input  style="margin-top: 30px" class="den" value="登录" type="button" onclick="submitForm()"/>
</div>


<script type="text/javascript">
    mini.parse();

    function submitForm() {

        var form = new mini.Form("#form1");

        form.validate();
        if (form.isValid() == false) return;

        //提交数据
        var data = form.getData();
        var json = mini.encode(data);
        $.ajax({
//            url: "../data/FormService.jsp?method=SaveData",
            type: "post",
            data: {submitData: json},
            success: function (text) {
                alert("提交成功，返回结果:" + text);
            }
        });
    }

</script>
</body>
</html>
