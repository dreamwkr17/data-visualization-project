<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<title>D3 Tutorial</title>
	<script src="https://d3js.org/d3.v4.min.js"></script>
</head>

<body>
	<script>
	
	var dataArray=[20,40,50, 60, 70];
	var width = 500;
	var height = 500;
	var widthScale = d3.scaleLinear()
					.domain([0,70]) //minimum and largest value		
					.range([0,width]); //resulting range - maximum value should never exist container's width 0 500 
					
	var color = d3.scaleLinear()
				.domain([0,70])
				.range(["red","blue"]);
	
	var axis = d3.axisTop()	
				.scale(widthScale);
	
					
	var canvas = d3.select("body")
			.append("svg")
			.attr("width",width)
			.attr("height", height)
			.append("g")	//모든 svg element 를 group 으로 묶음
			.attr("transform","translate(20,0)");
	
	var bars = canvas.selectAll("rect") //returning empty array - use empty selection with data
				.data(dataArray)
				.enter()	//enter - returns placeholder for each data element for DOM element on the page 
					.append("rect")
					.attr("width",function(d){return widthScale(d);})
					.attr("height", 50)
					.attr("y",function(d,i){return i * 100 } ) //d:data i: number.. index 
					.attr("fill",function(d){return color(d)});
	canvas.append("g")
		.attr("transform","translate(0,500)")
		.call(axis);
					
		
	</script>

</body>

</html>