<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/5/11
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="updatenoticetable" method="post">
    新闻编号: <input type ="text" value = "${bb.noticeid}" name = "noticeid" readonly="readonly"><br>
    新闻名称：<input  type="text" name="noticename" value = "${bb.noticename}" class="easyui-textbox" style="width:200px"><br/>
    新闻内容：<input type="text"  name="noticebulletin" value = "${bb.noticebulletin}" class="easyui-textbox" style="width:200px">
</form>
</body>
</html>
