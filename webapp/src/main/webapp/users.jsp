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
<div id="pp" class="easyui-layout" style="width:600px;height:400px;" data-options="fit:true">   
      
	    <div data-options="region:'center',title:'数据展示'" style="padding:5px;background:#eee;">
	    	<table  id="dg" class="dg"   data-options="fit:true"></table>
	    </div> 
</div>  
  
  		<div id="dd"></div>

<script type="text/javascript">

	$('#dg').datagrid({    
	    url:"<%=request.getContextPath()%>/UserController/queryUser",
	    pagination:true,
	    method:"post",
	    fitColumns:true,
	    loadMsg:"正在加载,请稍等....",
	    rownumbers:true,
	    pagination:true,
	    pageList:[3,5,10],
	    pageSize:3,
	    columns:[[ 
			{field:'box',checkbox:true},
	        {field:'id',title:'编号',width:100,align:'center'},
	        {field:'username',title:'登录名',width:100,align:'center'},
	        {field:'password',title:'登录密码',width:100,align:'center'},
	        {field:'realname',title:'真实姓名',width:100,align:'center'},
	        {field:'idcard',title:'身份证号',width:100,align:'center',},
	        {field:'birthday',title:'生日',width:100,align:'center',},
	        {field:'mail',title:'邮箱',width:100,align:'center'},
	        {field:'phone',title:'手机号',width:100,align:'center'},
	        {field:'sex',title:'性别',width:100,align:'center',
	        	formatter:function(value,row,index){
	        		if(value==1){
	        			return  '男';
	        		}
	        		if(value==2){
	        			return  '女';
	        		}
	
        	}},   
	        {field:'u_address',title:'地址',width:50,align:'center'},
	        {field:'shoezuo',title:'操作',width:50,align:'center',
	        	formatter:function(value,row,index){

	        		  return  '<a class="easyui-linkbutton" name="removebtn" href="javascript:removeData('+row.id+')">删除</a>&nbsp;<br><a class="easyui-linkbutton" name="editbtn" href="javascript:editData('+row.id+')">修改</a>';

	            }
	        }    
	    ]],
	    
	    onLoadSuccess:function (){
	    	$("[name='removebtn']").linkbutton({    
	    	    iconCls: 'icon-remove'   
	    	});  
	    	$("[name='editbtn']").linkbutton({    
	    	    iconCls: 'icon-edit'   
	    	});  
	    },
	  //工具栏
	    toolbar: [{
			iconCls: 'icon-add',
			handler: function(){
				$('#dd').dialog({    
				    title: '新增信息',    
				    width: 500,
				    height: 350,
				    closed: false,    
				    cache: false,    
				    modal: true,
				    href:"addUser.jsp",
				    buttons:[{
						text:'保存',
						handler:function(){
							$.ajax({
								url:"<%=request.getContextPath()%>/UserController/addUser",
								type:"post",
								data:$("#add_Form").serialize(),
								dataType:"text",
								success:function (){

										alert("新增用户成功");
										$('#dd').dialog('close');
										$('#dg').datagrid('reload');

								},
								error:function (){
									alert("新增出错");
								}
								
							})							
						}
					}]
				});
			}
		},'-',{
			iconCls: 'icon-remove',
			handler: function(){
				var users = $("#dg").datagrid("getSelections");
				 var ids="";
				$.each(users,function(){
					ids+=this.id+",";
				})
				//alert(ids);
				$.ajax({
					url:"<%=request.getContextPath()%>/UserController/deleteUsers",
					type:"post",
					data:{"ids":ids},
					dataType:"text",
					success:function (){

							$('#dg').datagrid('reload');

					},
					error:function (){
						alert("删除出错");
					}
				})
	 
			}
		}]
		
	});
  
    /*
                根据ID删除
    */
	function removeData(id){
	   // alert(id)
		$.ajax({
			url:"<%=request.getContextPath()%>/UserController/deleteUserById",
			type:"post",
			data:{"id":id},
			dataType:"text",
			success:function (){

					$('#dg').datagrid('reload');

			},
			error:function (){
				alert("删除出错");
			}
		})
	}


	
	function editData(id){
	    //alert(id);
		$('#dd').dialog({    
		    title: '修改信息',    
		    width: 800,    
		    height: 450,    
		    closed: false,    
		    cache: false,    
		    modal: true,
		    href:"<%=request.getContextPath()%>/UserController/queryUserById.action?id="+id,
		    buttons:[{
				text:'修改',
				handler:function(){
					$.ajax({
						url:"<%=request.getContextPath()%>/UserController/updateUser",
						type:"post",
						data:$("#add_Form").serialize(),
						dataType:"text",
						success:function (){

								$('#dd').dialog('close');
								$('#dg').datagrid('reload');

						},
						error:function (){
							alert("修改出错");
						}
						
					})							
				}
			}]
		});	
	}
	
	

</script>
</body>
</html>