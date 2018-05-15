<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-easyui/jquery.easyui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/jquery-easyui/themes/default/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/jquery-easyui/themes/icon.css"/>

</head>
<body>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
<table id="biaoqian" align="center"></table>
    <div id="tbbiao">
        <div>
            <a href="javascript:addOrUpdate('add')" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">增加标签</a>
            <a href="javascript:addOrUpdate('edit')" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">修改标签</a>
            <a href="javascript:deletebiao()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除标签</a>
        </div>
    </div>
    <div id="xinbiao"></div>
    <script type="text/javascript">
        $("#biaoqian").datagrid({
            url:'<%=request.getContextPath()%>/LabelController/queryLabel',
            columns:[[
                {field:'x',title:'',checkbox:true},
                {field:'lid',title:'标签编号',width:300,align:'center'},
                {field:'lname',title:'标签名称',width:300,align:'center'},
                {field:'laddress',title:'标签地址',width:690,align:'center'},
            ]],
            pagination: true,
            fit:true,
            border:true,
            striped:true,
            toolbar:'#tbbiao',
        });

        function addOrUpdate(aa){
            var title = "";
            var href = "";
            if(aa=='add'){
                title="添加标签";
                href="<%=request.getContextPath()%>/LabelController/toAddbiao";
            }else if(aa=='edit'){
                title="修改标签";
                var up = $('#biaoqian').datagrid("getSelections");
                if(up.length != 1){
                    $.messager.alert("警告","请选择一条数据！");
                    return;
                }else{
                    href="<%=request.getContextPath()%>/LabelController/toAddbiao?id="+up[0].lid;
                }
            }
            $('#xinbiao').dialog({
                title: title,
                modal: false,
                autoOpen: false,
                resizable: false,
                width: 600,
                height: 500,
                closed: false,
                cache: false,
                href: href,
                modal: true,
                buttons:[{
                    text:'保存',
                    handler:function(){
                        $("#fwb").form('submit',{
                            url:"<%=request.getContextPath()%>/LabelController/addbiaoqian",
                            success:function(data){
                                var data = eval("("+data+")");
                                if(data.success){
                                    $.messager.alert("提示",data.msg);
                                    $("#xinbiao").dialog("close");
                                    $("#biaoqian").datagrid("load");
                                }else{
                                    $.messager.alert("提示",data.msg);
                                    $("#xinbiao").dialog("close");
                                    $("#biaoqian").datagrid("load");
                                }

                            }
                        })
                    }
                },{
                    text:'关闭',
                    handler:function(){

                    }
                }],
            });
        }

        function deletebiao(){
            var temp = "";
            var de = $('#biaoqian').datagrid("getSelections");
            for (var i = 0; i < de.length; i++) {
                temp+=","+de[i].lid;
            }
            temp = temp.substr(1);
            alert(temp);
            $.ajax({
                url:"<%=request.getContextPath()%>/LabelController/deletebiaoqian",
                type:"post",
                data:{"ids":temp},
                dataType:"json",
                success:function(data){
                    if(data.success){
                        $.messager.alert("提示","删除成功");
                        $("#biaoqian").datagrid("load");
                    }else{
                        $.messager.alert("提示","删除失败");
                        $("#biaoqian").datagrid("load");
                    }
                }

            });
        }

    </script>
</body>
</html>
