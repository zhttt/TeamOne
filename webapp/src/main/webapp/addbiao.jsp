<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2018/5/10
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="<%=path %>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="<%=path %>/js/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/easyui/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=path %>/js/kindeditor-4.1.10/kindeditor.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path %>/js/kindeditor-4.1.10/lang/zh_CN.js" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="<%=path %>/js/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/js/easyui/themes/icon.css">
</head>
<body>
        <form id="fwb" method="post">
            <input type="hidden" name="lid" value="${label.lid}"/>
            <table>
                <tr>
                    <th width="100px"><h2>标签名称</h2></th>
                    <td><input class="easyui-textbox" style="height:30px;width:300px;" name="lname"  value="${label.lname}"></td>
                </tr>
                <tr>
                    <th width="100px"><h2>标签地址</h2></th>
                    <td><input class="easyui-textbox" name="laddress" style="height:30px;width:300px;"  value="${label.laddress}"/></td>
                </tr>
            </table>
        </form>
</body>
</html>
