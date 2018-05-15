<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/5/14
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <title>Title</title>
    <!-- 这是jquery的核心包  -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <!-- 这是easyui的核心包  -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/util-js.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/locale/easyui-lang-zh_CN.js"></script>
    <!-- jqeuy默认的css样式 -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/default/easyui.css">

    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/icon.css">
</head>
<body>
<div id="tb123">
    <div>关键字查询<input type = "text" name = "notice.noticename" >         </div>
    <div class="easyui-linkbutton" onclick="addnotice()" data-options="iconCls:'icon-add',plain:true">新增</div>
    <div class="easyui-linkbutton" onclick="deletenotice()" data-options="iconCls:'icon-remove',plain:true">删除</div>
    <div class="easyui-linkbutton" onclick="updatenotice()"data-options="iconCls:'icon-edit',plain:true">修改</div>
</div>
<table id="noticetable"></table>
<div id="addnoticedialog"></div>
<div id="updatenoticedialog"></div>
</div>




<script type="text/javascript">





    $('#noticetable').datagrid({
        url:'<%=request.getContextPath()%>/cjbnoticeController/querynotice.do',

        columns:[[
            {field:'noticeid',title:'编号',width:100},
            {field:'noticename',title:'公告名称',width:100},
            {field:'noticedate',title:'发布时间',width:100},
            {field:'noticebulletin',title:'公告内容',width:100}
        ]],
        fitColumns:true,
        fit:false,
        pagination:true,
        pagePosition:"bottom",
        pageNumber:1,
        pageSize:10,
        pageList:[10,15,20],
        loadMsg:"数据库加载中。。。。。。。。。。。。。。。",
    });

    function addnotice() {
        $("#addnoticedialog").dialog({
            title: '新增新闻',
            width: 400,
            height: 200,
            closed: false,
            cache: false,
            href: "<%=request.getContextPath()%>/cjbnoticeController/addnoticetiao.do",
            modal: true,
            toolbar: [{
                text: '保存',
                iconCls: 'icon-edit',
                handler: function () {
                    $.ajax({
                        url: "<%=request.getContextPath()%>/cjbnoticeController/addnotice.do",
                        data: $("#addnoticetable").serialize(),
                        dataType: "json",
                        type: "post",
                        success: function (data) {
                            $("#addnoticedialog").dialog("close");
                            $("#noticetable").datagrid("reload");
                            $.messager.alert('恭喜', '新增成功1');
                        }, error: function () {
                            $.messager.alert('警告', '新增失败2');
                        }
                    })
                }

            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $("#addnoticedialog").dialog("close");
                }

            }]
        })
    }


    function deletenotice(){
        var ids=$("#noticetable").datagrid("getSelections");
        if(ids.length!=1){
            $.messager.alert('警告','请选择1项');
        }else{
            $.ajax({
                url:"<%=request.getContextPath()%>/cjbnoticeController/deletenotice.do?id="+ids[0].noticeid,

                type:"post",
                success:function(){

                    $("#noticetable").datagrid("reload");
                    $.messager.alert("恭喜","删除成功了");
                },
                error:function(){
                    $.messager.alert("报错","删除失败");

                }
            })
        }
    }
    function updatenotice(){
        var ids=$("#noticetable").datagrid("getSelections");

        if(ids.length!=1){
            $.messager.alert('警告','只能选择1项');
        }else{
            alert(ids[0].noticeid)
            $("#updatenoticedialog").dialog({
                title:"修改公告",
                width: 400,
                height: 200,
                closed: false,
                cache: false,
                href:"<%=request.getContextPath()%>/cjbnoticeController/updatetablequeryid.do?id="+ids[0].noticeid,
                toolbar:[{
                    text:'保存',
                    iconCls:'icon-edit',
                    handler:function(){

                        $.ajax({
                            url:"<%=request.getContextPath()%>/cjbnoticeController/updatetable.do",
                            data:$("#updatenoticetable").serialize(),
                            dataType:"json",
                            type:"post",
                            success:function(data){
                                $("#updatenoticedialog").dialog("close");
                                $("#noticetable").datagrid("reload");
                                $.messager.alert('恭喜','修改成功');
                            },error:function(){
                                $.messager.alert('警告','报错');
                            }
                        })

                    }
                },{
                    text:'取消',
                    iconCls:'icon-cancel',
                    handler:function(){
                        $("#updatenoticedialog").dialog("close");
                    }
                }]
            })
        }
    }

</script>

</body>
</html>
