<%--
  Created by IntelliJ IDEA.
  User: HAO GONG
  Date: 2020/5/7
  Time: 16:12
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
            $('#tt').tree({
                url:'show.action'
                ,onClick: function(node){
                 if( $("#main_tabes").tabs("getTab",node.text)==null){
                    $('#main_tabes').tabs('add',{
                        title: node.text,
                        selected: true,
                        closable:true,
                        href: node.attributes.filename
                        //...
                    });
                 }else {
                     $("#main_tabes").tabs('select',node.text);
                 }
                }
            });
        })

    </script>
    <title>Title</title>
</head>s
<body class="easyui-layout">
<div data-options="region:'north',title:'North Title',split:false,collapsible:false" style="height:100px;"></div>
<div data-options="region:'south',title:'South Title',split:false,collapsible:false" style="height:100px;"></div>
<div data-options="region:'west',title:'West',split:false,collapsible:false" style="width:200px;">
    <ul id="tt"></ul>

</div>
<div data-options="region:'center',title:'center title',collapsible:'false'" style="padding:5px;background:#eee;">
    <div id="main_tabes" class="easyui-tabs" style="width:500px;height:250px;" data-options="fit:true">
        <div title="首页" style="padding:20px;display:none;">
            tab1
        </div>

    </div>
    </div>
</body>
</html>
