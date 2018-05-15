<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- jQuery -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-easyui/jquery.easyui.min.js"></script>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/js/jquery-easyui/themes/default/easyui.css"/>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/js/jquery-easyui/themes/icon.css"/>
</head>
<body>
   	   <div id="aa" class="easyui-accordion" data-options="fit:true" style="width:300px;height:200px;"> 
		       <ul id="trees" class="easyui-tree"></ul>
		  </div>
		  <form id="updateForm">
       <input type="hidden" value="${roleId}" name="u_id">
     </form>
    <script type="text/javascript">

    	  $("#trees").tree({
	             url:"<%=request.getContextPath()%>/UserController/queryTree",
	             method: "post",
	             checkbox:true,
	            
		  }); 
    	  
    	  setTimeout('xuan(${roleId})',1000);
    	  
    	  function xuan(roleId){
  			$.ajax({
  				url:"<%=request.getContextPath()%>/UserController/queryTreeByIds",
  				type:"post",
  				data:{"roleId":roleId},
  				dataType:"json",
  				success:function (data){
  				//树循环ID回显
  				$.each(data,function(){
  		
  					var node = $('#trees').tree('find',this.id);
  					$('#trees').tree('check',node.target);
  				})
  				},
  				error:function (){
  					alert("回显出错！！");
  				}
  			})
  			
  			
  		}

	</script>
</body>
</html>