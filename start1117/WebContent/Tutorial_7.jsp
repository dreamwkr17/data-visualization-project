<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://d3js.org/d3.v4.min.js"></script>

</head>
<body>
<script>
	var data = [10,20];
	
	var canvas = d3.select("body")
				.append("svg")
				.attr("width",500)
				.attr("height",500);
	
	var circle = canvas.append("circle")
				.attr("cx",50)
				.attr("cy",100)
				.attr("r",25);
	
	var ciecles = canvas.selectAll("circle")
				.data(data)
				.enter()
					.append("circle")
					.attr("cx",50)
					.attr("cy",50)
					.attr("r",25);

</script>
</body>
</html>