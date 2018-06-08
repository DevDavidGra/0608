<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
	margin:0; padding:0;
}
	header{
		width:100%;height:200px;
		background:#ccc;
		text-align:center;
		font-size:30px;
	}
	footer{
		margin-top:200px;
		width:100%;height:200px;
		background:#ccc;
		text-align:center;
		font-size:30px;
	}
	section{
		width:1200px; height:100%;
		min-height:1200px;
		margin:0 auto;
	
	}
	section::after{
		content:" ";
		overflow:hidden;
		clear:both;
		display:block;		
	}
	ul > li {
		list-style:none;
		width:380px;
		margin:10px;
		float:left;
		background:pink;
		height:500px;
	}
</style>

<script src="./js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var notice=0;
	$(window).scroll(function(){
		var scrollBot =$(window).height()+$(window).scrollTop();
		var count = $("ul > li").length/9;
		
		if(scrollBot>$("ul>li:last").offset().top){
			if(count==$("ul > li").length/9){
				$.ajax({
					type:"get",
					url:"../addajax",
					data:{"count":notice},
					dataType:"json",
					success:function(data){
						
						for(var i=0; i<data.length; i++){
							console.log(data[i].name);
							$("ul").append("<li>"+data[i].name+"</li>")
						}
					}
					
				});	
			}
			
		}
		
	})
})
</script>

</head>
<body>
	<header>해더</header>
	<section>
		<ul>
			<li>1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
			<li>5</li>
			<li>6</li>
			<li>7</li>
			<li>8</li>
			<li>9</li>
						
		</ul>
	</section>
	<footer>발</footer>
</body>
</html>