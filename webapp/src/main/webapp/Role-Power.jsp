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
	    	<table  id="dg2" class="dg"   data-options="fit:true"></table>
	    </div> 
</div>  
  
  		<div id="dd2"></div>

<script type="text/javascript">

	$('#dg2').datagrid({
	    url:"<%=request.getContextPath()%>/UserController/queryAllRole",
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
	        {field:'r_id',title:'编号',width:100,align:'center'},
	        {field:'r_name',title:'角色名称',width:100,align:'center'},
	        {field:'shoezuo',title:'操作',width:50,align:'center',
	        	formatter:function(value,row,index){

	        		  return  '<a class="easyui-linkbutton" name="editbtn" href="javascript:editData('+row.r_id+')">分配权限</a>';

	            }
	        }    
	    ]],
	    
	    onLoadSuccess:function (){
	    	/*$("[name='removebtn']").linkbutton({
	    	    iconCls: 'icon-remove'
	    	});  */
	    	$("[name='editbtn']").linkbutton({    
	    	    iconCls: 'icon-edit'   
	    	});  
	    },

	});




	
	function editData(id){
	    //alert(id);
		$('#dd2').dialog({
		    title: '修改信息',    
		    width: 800,    
		    height: 650,
		    closed: false,    
		    cache: false,    
		    modal: true,
		    href:"<%=request.getContextPath()%>/UserController/queryPower?id="+id,
		    buttons:[{
				text:'修改',
				handler:function(){
                    var nodes = $('#trees').tree('getChecked');
                    var ids ="";
                    for (var i = 0; i < nodes.length; i++) {
                        ids+=","+nodes[i].id;
                    }
                    ids=ids.substring(1);
					$.ajax({
						url:"<%=request.getContextPath()%>/UserController/updatePower?ids="+ids+"&idd="+id,
						type:"post",
                        //data:$("#ur").serialize(),
                        contentType:'application/x-www-form-urlencoded',
						success:function (data){
                              if(data == "success") {
                                  $('#dd2').dialog('close');
                                  $('#dg2').datagrid('reload');
                              }
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