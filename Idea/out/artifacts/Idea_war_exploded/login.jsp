<%--
  Created by IntelliJ IDEA.
  User: HAO GONG
  Date: 2020/5/7
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<html>
<head>
    <script type="text/javascript">
       $(function () {
            $("#btn").click(function () {
                $('#login_from').form('submit', {
                    url:"login.action",
                    onSubmit: function(){
                        // do some check
                        // return false to prevent submit;
                    },
                    success:function(data){
                        if(data == 1){
                            $.messager.alert('系统通知','登录成功');
                            location.href="index.jsp";
                           // alert("登录成功")
                        }else{
                            //alert("错误")
                            $.messager.alert('系统通知','登录失败');
                        }
                    }
                });
            })
       })



    </script>
    <style type="text/css">

        .myicon-login{
            background:url('img/login.jpg') no-repeat center center;
        }
    </style>
    <title>Title</title>
</head>
<body>
<div style="width:600px; margin: 100px auto ">


<div id="p" class="easyui-panel" title="登录" style="width:500px;height:180px;padding:10px;background:#fafafa;" data-options="iconCls:'myicon-login',closable:false,collapsible:false,maximizable:false">
    <form id="login_from" action="${pageContext.request.contextPath}/login.action" method="post">
        <table align="center">
            <tr>
                <td>管理系统</td>
            </tr>
            <tr>
                <td>用户名</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>密码</td>
                <td> <input class="easyui-passwordbox" prompt="Password" iconWidth="28" tyle="width:100%;height:34px;padding:10px"></td>
            </tr>
            <tr>
               <td colspan="2" align="right"><a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">登录</a></td>
            </tr>
        </table>

    </form>
</div>



</div>
</body>
</html>
