<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>

<!-- 这是jquery的核心包  -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<!-- 这是easyui的核心包  -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/util-js.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/locale/easyui-lang-zh_CN.js"></script>
<!-- jqeuy默认的css样式 -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/default/easyui.css">

<!-- 上传图片 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/uploadify/jquery.uploadify.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/js/uploadify/uploadify.css"/>


<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/icon.css">
<body>

  <form id="whereForm">
	    <div>   
	      用户名:<input class="easyui-textbox" id="nameykyk"  type="text" name="name" data-options="required:true" /> <div id="btn" href="#" class="easyui-linkbutton" onclick="whereSelect()" data-options="iconCls:'icon-search'">搜索</div> 
	      <div id="btn" href="#" class="easyui-linkbutton" onclick="reset_batch()" data-options="iconCls:'icon-reload'">重置</div> 
	    </div>     
    </form>
    
    
    
    
<div id="dialog_add_batch"></div> 
<div id="dialog_update_batch"></div> 


<table  id="dgbatch">   
	<div id="tbb">
		<div  class="easyui-linkbutton" onclick="addBatch()" data-options="iconCls:'icon-add',plain:true">新增</div>
		<div  class="easyui-linkbutton" onclick="deleteBatch()" data-options="iconCls:'icon-remove',plain:true">删除</div>
		<div  class="easyui-linkbutton" onclick="updateBatch()"  data-options="iconCls:'icon-edit',plain:true">修改</div>
	</div> 
</table> 

<script type="text/javascript">
//重置表单
function reset_batch(){
	  $("#whereForm").form("reset");
	  whereSelect();
}
function whereSelect(){
	
	  var userName=$("#nameykyk").textbox('getValue');
	  $('#dgbatch').datagrid('load', {    
		    "name":userName   
		  
		}); 
	   
}



function updateBatch(){
	var ids=$("#dgbatch").datagrid("getSelections");
	// alert(ids) 
	 //alert(ids[0].id)
	
	   if(ids.length !=1){
		   $.messager.alert('警告','修改要选择一项'); 
		 
	   }else{
		 //alert(ids[0].id)
		  var id = "\""+ids[0].id+"\"";
			 $("#dialog_update_batch").dialog({
				    title: '修改用户',    
				    width: 700,    
				    height: 500,    
				    closed: false,    
				    cache: false,
				    href:"<%=request.getContextPath()%>/batchAction/toupdateBatch",
				    modal: true ,
				    toolbar:[{
						text:'保存',
						iconCls:'icon-edit',
						handler:function(){
							//alert($("#add_form").serialize());
							$.ajax({
								url:"<%=request.getContextPath()%>/batchAction/updateBatch",
								data:$("#update_form_batch").serialize(),
								type:"post",
								success:function(){
									$("#dialog_update_batch").dialog("close");
									$("#dgbatch").datagrid("reload");
									
								},error:function(){
									 $.messager.alert('警告','报错'); 
								}
							})
							
						}
					},{
						text:'取消',
						iconCls:'icon-cancel',
						handler:function(){
							$("#dialog_update_batch").dialog("close");
						}
					}]
			 })   
		   
		   
		   
	   }

}


function deleteBatch(){
	   var select_options=$("#dgbatch").datagrid("getSelections");
	   var ids = "";
	   if(select_options.length>0){
		   $.messager.confirm('确认','您确认想要删除记录吗？',function(r){    
			    if (r){
			    	for (var i = 0; i < select_options.length; i++) {
			    		 ids+=","+select_options[i].id;
					}
			    //	alert(ids)

    		ids = ids.substring(1);
    		//alert(ids)
			    	$.ajax({
			    		url:"<%=request.getContextPath()%>/batchAction/deleteBatch",
			    		data:{"ids":ids},
			    		type:"post",
			    		success:function(){
			    			$("#dgbatch").datagrid("reload");
			    		},error:function(){
			    			 $.messager.alert('警告','报错'); 
			    		}
			    		
			    			
			    	})
			    }    
			});  
	   }else{
		   $.messager.alert('警告','请大爷选择要删除的项'); 
	   }
}

function addBatch(){
	 $("#dialog_add_batch").dialog({
		    title: '新增用户',    
		    width: 540,    
		    height: 330,    
		    closed: false,    
		    cache: false,
		    href:"<%=request.getContextPath()%>/batchAction/toaddBatch",
		    modal: true ,
		    toolbar:[{
				text:'保存',
				iconCls:'icon-edit',
				handler:function(){
					//alert($("#add_form").serialize());
					$.ajax({
						url:"<%=request.getContextPath()%>/batchAction/addBatch",
						data:$("#add_form_batch").serialize(),
						type:"post",
						dataType:"text",
						success:function(){
							$("#dialog_add_batch").dialog("close");
							$("#dgbatch").datagrid("reload");
							
						},error:function(){
							 $.messager.alert('警告','报错'); 
						}
					})
					
				}
			},{
				text:'取消',
				iconCls:'icon-cancel',
				handler:function(){
					$("#dialog_add_batch").dialog("close");
				}
			}]
	 })
}

$(function(){
	$('#dgbatch').datagrid({    
	    url:'<%=request.getContextPath()%>/batchAction/selectBatch',
	    fitColumns:true,
	    striped:true,
	    ctrlSelect:true,
	    method:"post",
	    loadMsg:"数据库加载中。。。。。。。。。。。。。。。。。。",
	    pagination:true,
	    pagePosition:"bottom",
	    pageNumber:1,
	    pageSize:3,
	    pageList:[1,3,5,7,10],
	  
	    columns:[[    
	        {field:'id',title:'批次id',width:80},    
	        {field:'name',title:'批次名称',width:60},    
	           
	       
	    ]] 
	  
	});  

})

</script>
</body>
</html>