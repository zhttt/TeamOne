<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 这是jquery的核心包  -->
<!-- 这是easyui的核心包  -->
<!-- jqeuy默认的css样式 -->

<script src="js/echarts/highcharts.js"></script>
<script src="js/echarts/exporting.js"></script>
<div style="width: 100%;height: 100%;background: url('../img/timg.jpg');">
	<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto;"></div>
</div>


<script type="text/javascript">
function ech(a){
Highcharts.chart('container', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: '当天订单的产量'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                style: {
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                }
            }
        }
    },
    series: [{
        name: 'Brands',
        colorByPoint: true,
        data: a
    }]
});
}
</script>
<script type="text/javascript">
$(function(){
	 $.ajax({
		   url:"<%=request.getContextPath()%>/LxController/echarts",
		   type:"post",
		   dataType:"json",
		   success:function(data){
			   ech(data);
			   
		   },error:function(){
			   alert("报错");
		   }
		   
	   })
	
	
})


</script>


</body>
</html>