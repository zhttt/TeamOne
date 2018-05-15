<%--
  Created by IntelliJ IDEA.
  User: yangjian
  Date: 2018/5/10
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/jquery-easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/jquery-easyui/themes/icon.css">

<body>
<link rel="stylesheet" href="<%=request.getContextPath()%>/js/kindeditor/themes/default/default.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/js/kindeditor/plugins/code/prettify.css" />
<script charset="utf-8" src="<%=request.getContextPath()%>/js/kindeditor/kindeditor-all-min.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/js/kindeditor/lang/zh_CN.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/js/kindeditor/plugins/code/prettify.js"></script>

<form id="addqiangge" method="post">
    <input type="hidden" name="guestbookid" value="${aa.guestbookid}">
    <input type="hidden" name="ordersid" value="${aa.ordersid}">
<table align="center"  id="axs">
    <tr>
        <td>订单编号</td>
        <td>
            <input type="text" style="width: 200px" class="easyui-textbox" name="orderscode"  id="yyorderscode" value="${aa.orderscode}" ></td>
    </tr>
    <tr>
        <td>创建时间</td>
        <td><input type="text" id="yqqs" class="easyui-datebox" data-options="required:true"  value="${aa.orderscreattime}"  name="orderscreattime"></td>
    </tr>
    <tr>
        <td>总钱数</td>
        <td><input type="text" class="easyui-textbox"  name="ordersmoney" value="${aa.ordersmoney}" ></td>
    </tr>
    <tr>
        <td>订单的产品</td>
        <td><input type="text" class="easyui-textbox"  name="ordersproduct" value="${aa.ordersproduct}" ></td>
    </tr>
    <tr>
        <td>订单中的产品的数量</td>
        <td><input type="text"  class="easyui-textbox"  name="orderspronum" value="${aa.orderspronum}" ></td>
    </tr>
    <tr>
        <td>订单状态</td>
        <td><input type="radio"   name="ordersstatus" value="1" ${aa.ordersstatus==1?"checked":""}>以发货
            <input type="radio"   name="ordersstatus" value="2" ${aa.ordersstatus==2?"checked":""}>未发货</td>
    </tr>
    <tr>
        <td>订单人id</td>
        <td><input type="text" class="easyui-textbox"  name="ordersuser"  value="${aa.ordersuser}"></td>
    </tr>
    <tr>
        <td>修改时间</td>
        <td><input type="text" class="easyui-datebox"   data-options="required:true" value="${aa.ordersupdatadata}" name="ordersupdatadata"></td>
    </tr>
    <tr>
        <td>留言</td>
        <td><textarea name="gmassage">${aa.gmassage}</textarea></td>
    </tr>
</table>
</form>
<script type="text/javascript">
    $.getScript('<%=request.getContextPath()%>/js/kindeditor/kindeditor-all-min.js', function() {
        KindEditor.basePath = '<%=request.getContextPath()%>/js/kindeditor/';
        var editor = KindEditor.create('#addqiangge textarea[name="gmassage"]', {
            cssPath : '<%=request.getContextPath()%>/js/kindeditor/plugins/code/prettify.css',
            uploadJson : 'kindeditor/jsp/upload_json.jsp',
            fileManagerJson : 'kindeditor/jsp/file_manager_json.jsp',
            allowFileManager : true,
            afterBlur:function(){this.sync();}
        });
        prettyPrint();
    });
</script>

<script type="text/javascript">
    if($("#yyorderscode").val()=="" ){
        var d = new Date();
        var str = d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate();
        $("#yqtq44").val(str);
        // 生成单号
        var number = Math.random();
        number = Math.ceil(number * 10000);
        str=str.substring(7,9);
        $("#yyorderscode").val(str+number);
    }

</script>
</body>
</html>
