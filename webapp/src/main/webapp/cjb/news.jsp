<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/5/14
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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

<div style="width:50%;height:100%;float:left">

    <div id="newstb1">
        <div class="easyui-linkbutton" onclick="addnews()" data-options="iconCls:'icon-add',plain:true">新增</div>
        <div class="easyui-linkbutton" onclick="deletenews()" data-options="iconCls:'icon-remove',plain:true">删除</div>
        <div class="easyui-linkbutton" onclick="updatenews()"data-options="iconCls:'icon-edit',plain:true">修改</div>
    </div>
    <table id="newstable"></table>
    <div id="addnewsdialog"></div>
    <div id="updatenewsdialog"></div>
</div>
<script type="text/javascript">
    $('#newstable').datagrid({
        url:'<%=request.getContextPath()%>/cjbnewsController/querynews.do',
        columns:[[
            {field:'newsid',title:'编号',width:100},
            {field:'newsname',title:'新闻名称',width:100},
            {field:'newstime',title:'发布时间',width:100},
            {field:'newsneirun',title:'新闻内容',width:100}
        ]],
        fitColumns:true,
        fit:false,
        pagination:true,
        pagePosition:"bottom",
        fit:true,
        pageNumber:1,
        pageSize:10,
        pageList:[10,15,20],
        loadMsg:"数据库加载中。。。。。。。。。。。。。。。",
    });
    function addnews(){
        $("#addnewsdialog").dialog({
            title: '新增新闻',
            width: 400,
            height: 200,
            closed: false,
            cache: false,
            href:"<%=request.getContextPath()%>/cjbnewsController/addnewstiao.do",
            modal: true ,
            toolbar:[{
                text:'保存',
                iconCls:'icon-edit',
                handler:function(){
                    $.ajax({
                        url:"<%=request.getContextPath()%>/cjbnewsController/addnews.do",
                        data:$("#addnewstable").serialize(),
                        dataType:"text",
                        type:"post",
                        success:function(data){
                            if(data == 111){
                                $.messager.alert('恭喜','新增成功1');
                            $("#addnewsdialog").dialog("close");
                            $("#newstable").datagrid("reload");
                            }
                        },error:function(){
                            $.messager.alert('警告','新增失败2');
                        }
                    })
                }

            },{
                text:'取消',
                iconCls:'icon-cancel',
                handler:function(){
                    $("#addnewsdialog").dialog("close");
                }

            }]
        })

    }
    function deletenews(){

        var ids=$("#newstable").datagrid("getSelections");
        if(ids.length!=1){
            $.messager.alert('警告','请选择1项');
        }else{
            $.ajax({
                url:"<%=request.getContextPath()%>/cjbnewsController/deletenews.do?id="+ids[0].newsid,

                type:"post",
                success:function(data){
                    if(data == 111){



                    $("#newstable").datagrid("reload");
                    $.messager.alert("恭喜","删除成功了");
                    }
                },
                error:function(){
                    $.messager.alert("报错","删除失败");

                }
            })
        }


    }

    function updatenews(){
        var ids=$("#newstable").datagrid("getSelections");

        if(ids.length!=1){
            $.messager.alert('警告','只能选择1项');
        }else{
            var idss = ids[0].newsid;
            alert(idss);
            $("#updatenewsdialog").dialog({
                title:"修改商品大类",
                width: 400,
                height: 200,
                closed: false,
                cache: false,
                href:"<%=request.getContextPath()%>/cjbnewsController/querytableid.do?id="+idss,
                toolbar:[{
                    text:'保存',
                    iconCls:'icon-edit',
                    handler:function(){
                        $.ajax({
                            url:"<%=request.getContextPath()%>/cjbnewsController/updatetable.do",
                            data:$("#updatenewstable").serialize(),
                            dataType:"text",
                            type:"post",
                            success:function(data){
                                if(data == 111){
                                $.messager.alert('恭喜','修改成功');
                                $("#updatenewsdialog").dialog("close");
                                $("#newstable").datagrid("reload");
                                }
                            },error:function(){
                                $.messager.alert('警告','报错');
                            }
                        })

                    }
                },{
                    text:'取消',
                    iconCls:'icon-cancel',
                    handler:function(){
                        $("#updatenewsdialog").dialog("close");
                    }
                }]
            })
        }
    }
</script>
</body>
</html>
