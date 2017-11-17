<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<title>D3 Tutorial</title>
	<script src="https://d3js.org/d3.v4.min.js"></script>
</head>

<body>
	<p>This is a paragraph<p>
	<script>
	
	var dataArray=[20,40,50];
	
	var canvas = d3.select("body")
			.append("svg")
			.attr("width",500)
			.attr("height",500);
			
	
	var bars = canvas.selectAll("rect") //returning empty array - use empty selection with data
				.data(dataArray)
				.enter()	//enter - returns placeholder for each data element for DOM element on the page 
					.append("rect")
					.attr("width",function(d){return d * 10;})
					.attr("height", 50)
					.attr("y",function(d,i){return i * 100 } ); //d:data i: number.. index 
					
					
		
	</script>

</body>

</html>