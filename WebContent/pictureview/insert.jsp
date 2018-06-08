<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("form").submit(function(){
		var str = $("#filepath").val();
		console.log(str.length)
		if(str.length<1){
			
			return false;	
		}
	})
	
	$("#filepath").change(function(){
		var msg = $("#filepath").val();
		
		var patt=/(.jpg$|.gif$|.png$)/g;
		var result=str.match(patt);
		if(!result){
			alert("사진으로 올려라");
			return false;
		}
		
		
		
		var reader = new FileReader();
		if(this.files[0].size>1000000){
			alert("1메가 이하로 올려라..");
			return false;
		}
		reader.readAsDataURL(this.files[0]);
		
		reader.onload=function(e){
			$("img").attr("src", e.target.result);
			
		}
	})
})
</script>
</head>
<body>
<%--
	multipart(form) - post(form) - file(input) 은 한몸
 --%>
<form action="insertMain" method="post" name="frm" enctype="multipart/form-data">
	<p><img width="100" height="100" /></p>
	<p><span>파일</span><input type="file" name="filepath" id="filepath" /></p>
	<input type="submit" value="commit" />
</form>
</body>
</html>