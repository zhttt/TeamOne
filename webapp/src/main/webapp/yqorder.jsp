<%@ page import="javax.xml.stream.Location" %><%--
  Created by IntelliJ IDEA.
  User: yangjian
  Date: 2018/5/9
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-easyui/jquery.easyui.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/jquery-easyui/themes/default/easyui.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/jquery-easyui/themes/icon.css"/>


<body>
<link rel="stylesheet" href="<%=request.getContextPath()%>/js/kindeditor/themes/default/default.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/js/kindeditor/plugins/code/prettify.css" />
<script charset="utf-8" src="<%=request.getContextPath()%>/js/kindeditor/kindeditor-all-min.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/js/kindeditor/lang/zh_CN.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/js/kindeditor/plugins/code/prettify.js"></script>

<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
<table id="y_goods"></table>
<div id="y_ta">
    <a href="javascript:yqupdate()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">修改</a>
    <a href="javascript:shangg()" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</a>
    <a href="javascript:dely(null)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</a>
    <a href="javascript:updateordersstatus()" class="easyui-linkbutton" data-options="iconCls:'icon-timg',plain:true">提交订单</a>
    <a href="javascript:excel()" class="easyui-linkbutton" data-options="iconCls:'icon-excel',plain:true">Excel导出</a>
</div>
<div id="shangping"></div>

<script type="text/javascript">


    //查询
    $('#y_goods').datagrid({
        url:'<%=request.getContextPath()%>/yqorder/queryOrder',
        columns:[[
            {field:'',title:'',checkbox:true},
            {field:'ordersid',title:'id',width:120 },
            {field:'orderscode',title:'订单编号 ',width:120 },
            {field:'orderscreattime',title:'创建时间',width:120 },
            {field:'ordersmoney',title:' 总钱数 ',width:120 },
            {field:'ordersproduct',title:'订单的产品',width:120 },
            {field:'orderspronum',title:'订单中的产品的数量',width:167 },
            {field:'ordersstatus',title:'订单状态 ',width:120 ,formatter:function(value,row,index){
                    if(value==1){
                        aa="<font color=''>以发货</font>";
                    }else if(value==2){
                        aa="<font color='red'>未发货</font>";
                    }
                      return aa;
                     }
                 },
            {field:'ordersuser',title:'订单人id ',width:120 },
            {field:'ordersupdatadata',title:'修改时间',width:120
                }
        ]],
        fit:true,
        striped:true,
        pagination: true,
        toolbar:'#y_ta'
    });

</script>
//删除
<script type="text/javascript">
    function dely(){
        var ids="";
        //获取所有被选中的行
        var arr = $("#y_goods").datagrid("getSelections");
        for (var i = 0; i < arr.length; i++) {
            ids+=","+arr[i].ordersid;
        }
        ids = ids.substr(1);

        $.ajax({
            url:"<%=request.getContextPath()%>/yqorder/deleteOrder",
            type:"post",
            data:{"ids":ids},
            dataType:"json",
            async:false,
            success:function(data){
                alert(data)
                if(data.success){
                    $('#y_goods').datagrid('load');
                }else{
                    $.messager.alert("删除失败！");
                }
            }
        })
    }
</script>
//新增
<script type="text/javascript">
    function shangg(){

        $('#shangping').dialog({
            title: "新增信息",
            width: 800,
            height: 500,
            closed: false,
            cache: false,
            href: "<%=request.getContextPath()%>/yqaddorder.jsp",
            modal: true,
            buttons:[{
                text:'保存',
                handler:function(){
                    $("#addqiangge").form('submit',{
                        url:"<%=request.getContextPath()%>/yqorder/addOrder",
                        success:function(data){
                            var data = eval('(' + data + ')');
                            if(data.success){
                                $('#shangping').dialog('close');
                                $('#y_goods').datagrid('load');
                            }else{
                                $.messager.alert("提示",data);
                            }
                        }
                    });
                }
            }]
        });
    }
</script>
//修改
<script type="text/javascript">
    function yqupdate(){
        if($("#y_goods").datagrid("getSelections").length<1){
            alert("请选择一条数据");
        }else if($("#y_goods").datagrid("getSelections").length>1){
            alert("只能选择一条数据");
        }else{
            var ids="";
            var name="";
            var arr = $("#y_goods").datagrid("getSelections");
            for (var i = 0; i < arr.length; i++) {
                ids+=","+arr[i].ordersid;
                name+=arr[i].ordersproduct;
            }
            ids = ids.substr(1);

            $('#shangping').dialog({
                title: "修改"+name+"信息",
                width: 800,
                height: 500,
                closed: false,
                cache: false,
                href: "<%=request.getContextPath()%>/yqorder/queryUpdateOrder?ids="+ids,
                modal: true,
                buttons:[{
                    text:'保存',
                    handler:function(){
                        $("#addqiangge").form('submit',{
                            url:"<%=request.getContextPath()%>/yqorder/addOrder",
                            success:function(data){
                                var data = eval('(' + data + ')');
                                if(data.success){
                                    $('#shangping').dialog('close');
                                    $('#y_goods').datagrid('load');
                                }else{
                                    $.messager.alert("提示",data);
                                }
                            }
                        });
                    }
                }]
            });
        }


    }

</script>
<script type="text/javascript">

    function updateordersstatus(){
        if($("#y_goods").datagrid("getSelections").length<1){
            alert("请选择一条数据");
        }else if($("#y_goods").datagrid("getSelections").length>1){
            alert("只能选择一条数据");
        }else {
            var arr = $("#y_goods").datagrid("getSelections");
            var ordersid = arr[0].ordersid;
            var orderscode = arr[0].orderscode;
            var orderscreattime = arr[0].orderscreattime;
            var ordersmoney = arr[0].ordersmoney;
            var ordersproduct = arr[0].ordersproduct;
            var orderspronum = arr[0].orderspronum;
            var ordersstatus = arr[0].ordersstatus;
            var ordersuser = arr[0].ordersuser;
            var ordersupdatadata = arr[0].ordersupdatadata;
            $.ajax({
                url: "<%=request.getContextPath()%>/yqorder/updateordersstatus",
                type: "post",
                data: {
                    "ordersid": ordersid,
                    "orderscode": orderscode,
                    "orderscreattime": orderscreattime,
                    "ordersmoney": ordersmoney,
                    "ordersproduct": ordersproduct,
                    "orderspronum": orderspronum,
                    "ordersuser": ordersuser,
                    "ordersupdatadata": ordersupdatadata,
                },
                dataType: "json",
                async: false,
                success: function (data) {

                    if (data.success) {
                        $('#y_goods').datagrid('load');
                    } else {
                        $.messager.alert("删除失败！");
                    }
                }
            })
        }
    }
</script>
<script type="text/javascript" >
    function excel(){
        location.href="<%=request.getContextPath()%>/yqorder/excelOrder";
    }

</script>
</body>
</html>
