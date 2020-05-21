<%--
  Created by IntelliJ IDEA.
  User: HAO GONG
  Date: 2020/5/8
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Title</title>
</head>
<body>
<script type="text/javascript">
    $(function () {
        $('#role_tab').datagrid({
            url:'showRole.action',
            columns:[[
                {field:'id',title:'id',width:100,hidden:true},
                {field:'name',title:'姓名',width:100,align:'center'},
                {field:'sort',title:'排序',width:100,align:'center'},
                {field:'remark',title:'职称',width:100,align:'center'}
            ]],
            pagination:true,
            pageList:[2,4,6],
            rownumbers:true,
            toolbar: [{
                iconCls: 'icon-edit',
                text:'添加',
                handler: function(){alert('edit')}
            },'-',{
                iconCls: 'icon-help',
                text: '删除',
                handler: function(){alert('help')}
            },'-',{
                iconCls: 'icon-help',
                text: '分配权限',
                handler: function(){alert('help')}
            },'-',{
                iconCls: 'icon-help',
                text: '查看',
                handler: function(){
                    $('#dd').dialog({
                        title: 'My Dialog',
                        width: 400,
                        height: 200,
                        closed: false,
                        cache: false,
                        href: 'get_content.php',
                        modal: true
                    });
                }
            }

            ]
        });

    })

</script>
<table id="role_tab"></table>
<div id="dd">Dialog Content.</div>
</body>
</html>
