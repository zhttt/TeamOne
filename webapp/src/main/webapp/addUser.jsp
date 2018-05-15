<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
    <!-- 上传下载图片 -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/uploadify/jquery.uploadify.min.js"></script>
    <link  rel="stylesheet"  href="<%=request.getContextPath()%>/js/uploadify/uploadify.css"/>
    <!-- 富文本编辑器 -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/js/kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/js/kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="<%=request.getContextPath()%>/js/kindeditor/kindeditor-all-min.js"></script>
	<script charset="utf-8" src="<%=request.getContextPath()%>/js/kindeditor/lang/zh-CN.js"></script>
	<script charset="utf-8" src="<%=request.getContextPath()%>/js/kindeditor/plugins/code/prettify.js"></script>

    
    <center>
      <form id="add_Form">
         <input type="hidden" value="${user.id}" name="id"/>
		  <table>
			  <tr>
				  <td>登录名:</td>
				  <td><input class="easyui-textbox"  value="${user.username}" name="username" style="width:300px"> </td>
			  </tr>
			  <tr>
				  <td>登录密码:</td>
				  <td><input class="easyui-textbox"   value="${user.password}" name="password" style="width:300px"> </td>
			  </tr>
			  <tr>
				  <td>真实姓名:</td>
				  <td><input class="easyui-textbox" value="${user.realname}" name="realname" style="width:300px"> </td>
			  </tr>
			  <tr>
				  <td>身份证号:</td>
				  <td>
					  <input class="easyui-textbox" value="${user.idcard}" name="idcard" style="width:300px"> <br>
				  </td>
			  </tr>
			  <tr>
				  <td>生日:</td>
				  <td><input class="easyui-datebox" value="${user.birthday}" name="birthday" style="width:300px"> <br></td>
			  </tr>
			  <tr>
				  <td>邮箱:</td>
				  <td><input class="easyui-textbox" value="${user.mail}" name="mail" style="width:300px"> <br></td>
			  </tr>
			  <tr>
				  <td>手机号:</td>
				  <td><input class="easyui-textbox" value="${user.phone}" name="phone" style="width:300px"> <br></td>
			  </tr>
			  <tr>
				  <td>性别:</td>
				  <td><input type="radio" value="1" name="sex"  ${user.sex=='1'?'checked':'' }>男
					  <input type="radio" value="2" name="sex"  ${user.sex=='2'?'checked':'' }>女<br>
				  </td>
			  </tr>
			  <tr>
				  <td>地址:</td>
				  <td><input class="easyui-textbox" value="${user.u_address}" name="u_address" style="width:300px"> <br></td>
			  </tr>
		  </table>
	</form>
</center>

</body>
</html>