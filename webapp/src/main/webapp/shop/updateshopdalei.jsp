<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--<form id="updateshop_form">
<input type="hidden" name="id" value="${shopdalei.id }">
商品大类名称：<input  name="name"  value="${shopdalei.name }"   type="text" class="easyui-textbox" style="width:200px"><br/>
备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：<input  name="notes"  value="${shopdalei.notes }"   type="text" class="easyui-textbox" style="width:200px">
</form>--%>

<form id="updateshop_form">
    <input type="hidden" id="id" name="id">
    商品大类名称：<input name="name" id="name" class="easyui-textbox" style="width:200px"><br/>
    备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：<input name="notes" id="notes" class="easyui-textbox" style="width:200px">
</form>

<script type="text/javascript">

    var pp= $("#dgbatch").datagrid("getSelected");
    $("[name='id']").val(pp.id);
    $("[name='name']").val(pp.name);
    $("[name='notes']").val(pp.notes);

</script>
</body>
</html>