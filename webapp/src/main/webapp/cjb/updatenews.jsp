<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/5/10
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="updatenewstable" method="post">
    新闻编号: <input type ="text" value = "${aa.newsid}" name = "newsid" readonly="readonly"><br>
    新闻名称：<input  type="text" name="newsname" value = "${aa.newsname}" class="easyui-textbox" style="width:200px"><br/>
    新闻内容：<input type="text"  name="newsneirun" value = "${aa.newsneirun}" class="easyui-textbox" style="width:200px">
</form>
</body>
</html>
