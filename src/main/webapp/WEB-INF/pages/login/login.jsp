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
    <script src="../../../BS/js/jquery-3.2.1.js" type="text/javascript"></script>
    <link href="../../../w2ui-1.5.rc1/w2ui-1.5.rc1.css" rel="stylesheet" type="text/css">
    <script src="../../../w2ui-1.5.rc1/w2ui-1.5.rc1.js" type="text/javascript"></script>
    <style>
        body {
            background-image: url("../../../img/login/login2.jpg");
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-attachment: fixed;

        }

        .den {
            width: 220px;
            height: 30px;
            background-color: #f2f1b1;
            color: #ae9e6f;
            border: 1px solid #ae9e6f;
        }

        .login {
            /*margin-top: 320px;*/
            /*margin-left: 920px;*/
            /*position: fixed;*/
            position: absolute;
            width: 250px;
            height: 200px;
            top: 35%;
            left: 63%;
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
                <input name="loginName" id="loginName" placeholder="用户名或邮箱"
                       class="mini-textbox" required="true"/><span id="userMsg"></span>
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
                <input name="password" class="mini-password" vtype="minLength:4" required="true"/>
            </td>
        </tr>

    </table>
    <span id="msgMain"></span>
    <br>

    <%--手机登录图标 和 邮箱登录图标--%>

    <div id="phoneLogin" style="margin-top: 25px">
        <img src="../../../img/login/phone.png"
             class="w2ui-btn" onclick="popupPhone()"
             style="width: 20px;height: 20px;margin-left: 30px;float: left">
    </div>

    <div id="emailLogin" style="margin-top: 20px">
        <img src="../../../img/login/email.png"
             class="w2ui-btn" onclick="popupEmail()"
             style="width: 25px;height: 25px;margin-left: 30px;float: left">
    </div>


    <input type="checkbox" style="margin-left: 54px;margin-top: 10px;">记住密码
    <br>
    <input style="margin-top: 30px" class="den" value="登录" type="button" onclick="submitForm()"/>
</div>


<script type="text/javascript">

    mini.parse();

    $("#loginName").change(function () {

        var form = new mini.Form("#form1");

        //提交数据
        var data = form.getData();
        var json = mini.encode(data);

        $.ajax({

            url: "/userPass",

            type: "post",

            //发起ajax -> controller接收必须加入的响应头
            contentType: 'application/json',

            data: json,

            success: function (text) {

                if (text.resultCode == 0) {

                    $("#userMsg").empty();

                    $("#userMsg").append("<span style='color: green;font-size: small'>" + text.resultMsg + "</span>");

                } else {

                    $("#userMsg").empty();

                    $("#userMsg").append("<span style='color: red;font-size: small;'>" + text.resultMsg + "</span>");

                }

            }
        });


    });

    function submitForm() {

        var form = new mini.Form("#form1");

        form.validate();
        if (form.isValid() == false) return;

        //提交数据
        var data = form.getData();
        var json = mini.encode(data);

        $.ajax({

            url: "/loginHome",

            type: "post",

            //发起ajax -> controller接收必须加入的响应头
            contentType: 'application/json',

            data: json,

            success: function (text) {

                if (text.resultCode == 0) {

                    window.location.href = "/home";

                } else {

                    $("#msgMain").empty();

                    $("#msgMain").append("<span style='color: red;margin-left: 70px'>" + text.resultMsg + "</span>");

                }

            }
        });
    }

//w2ui手机号
    function popupPhone() {
        w2popup.open({
            title     : '手机登录',
            body      : '<div class="w2ui-centered">请输入手机号 <input name="first_name" type="text" maxlength="100" style="width: 200px"/></div>',
            buttons   : '<button class="w2ui-btn" onclick="w2popup.close();">关闭</button> '+
            '<button id="phone" class="w2ui-btn" onclick="w2popup.lock(\'Loading\', true); '+
            '        setTimeout(function () { w2popup.unlock(); }, 2000);">下一步</button>',
            width     : 400,
            height    : 250,
            overflow  : 'hidden',
            color     : '#333',
            speed     : '0.3',
            opacity   : '0.8',
            modal     : true,
            showClose : true,
            showMax   : true,
            onOpen    : function (event) { console.log('open'); },
            onClose   : function (event) { console.log('close'); },
            onMax     : function (event) { console.log('max'); },
            onMin     : function (event) { console.log('min'); },
            onKeydown : function (event) { console.log('keydown'); }
        });
    }

//w2ui邮箱
    function popupEmail() {
        w2popup.open({
            title     : '邮箱登录',
            body      : '<div class="w2ui-centered">请输入邮箱 <input id="emailName" name="first_name" type="text" maxlength="100" style="width: 200px"/></div>',
            buttons   : '<button class="w2ui-btn" onclick="w2popup.close();">关闭</button> '+
            '<span id="emailSpan"><button id="email" class="w2ui-btn" onclick="w2popup.lock(\'Loading\', true); '+
            '        setTimeout(function () {buttonEmail(); w2popup.unlock(); }, 2000);">下一步</button></span>',
            width     : 400,
            height    : 250,
            overflow  : 'hidden',
            color     : '#333',
            speed     : '0.3',
            opacity   : '0.8',
            modal     : true,
            showClose : true,
            showMax   : true,
            onOpen    : function (event) { console.log('open'); },
            onClose   : function (event) { console.log('close'); },
            onMax     : function (event) { console.log('max'); },
            onMin     : function (event) { console.log('min'); },
            onKeydown : function (event) { console.log('keydown'); }
        });
    }
//邮箱登录点击下一步
var tempCode;
    function buttonEmail() {
        var data = {email:$("#emailName").val()};
        var json = mini.encode(data);

//        alert(json);
        $.ajax({

            url: "/emailPass",

            type: "post",

            //发起ajax -> controller接收必须加入的响应头
            contentType: 'application/json',

            data: json,

            success: function (text) {

                if (text.resultCode == 0) {
                   popEmail();

//                    window.location.href = "/home";
                    tempCode = code;
                    return tempCode;

                } else {

                    $("#msgMain").empty();

                    $("#msgMain").append("<span style='color: red;margin-left: 70px'>" + text.resultMsg + "</span>");

                }

            }
        });
    }

//邮件发送验证码
    function popEmail() {
        w2popup.open({
            title     : '邮件发送成功',
            body      : '<div class="w2ui-centered">请输入验证码 <input id="CodeSureName" name="first_name" type="text" maxlength="100" style="width: 200px"/></div>',
            buttons   :
            '<span id="emailSpan"><button id="email" class="w2ui-btn" onclick="w2popup.lock(\'Loading\', true); '+
            '        setTimeout(function () {sureEmail();w2popup.unlock(); }, 2000);">确认</button></span>',
            width     : 400,
            height    : 250,
            overflow  : 'hidden',
            color     : '#333',
            speed     : '0.3',
            opacity   : '0.8',
            modal     : true,
            showClose : true,
            showMax   : true,
            onOpen    : function (event) { console.log('open'); },
            onClose   : function (event) { console.log('close'); },
            onMax     : function (event) { console.log('max'); },
            onMin     : function (event) { console.log('min'); },
            onKeydown : function (event) { console.log('keydown'); }
        });
    }
//    邮件确认按钮
    function sureEmail() {
        <%--var dataCode = $("#CodeSureName").val();--%>
       <%--var emailCode = "${emailCode}";--%>
//        alert(emailCode);

//        var dataCode = {email:$("#CodeSureName").val()};
//        var json = mini.encode(dataCode);
//     if (tempCode == $("#CodeSureName").val()){
//
//         window.location.href="/home";
//     }





    }
</script>
</body>
</html>
