<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="checkerboard.css">
<title>CheckerBoard</title>
</head>
<body>
<% 
String h = request.getParameter("height");
String w = request.getParameter("width");
int cbHeight = Integer.parseInt(h);
int cbWidth = Integer.parseInt(w);

String result = "<table><th></th><tbody>";
for(int hIndex = 0; hIndex < cbHeight; hIndex++) { 
	result += "<tr>";
	for (int wIndex = 0; wIndex < cbWidth; wIndex++) {
		if ((hIndex + wIndex) % 2 == 0) {
			result += "<td class='colorA'></td>";
		} else {
			result += "<td class='colorB'></td>";
		} 
	}
 	result += "</tr>";
}
result += "</tbody></table>";
 %>
<div><%= result %></div>
</body>
</html>