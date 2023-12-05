<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}

.sidebar a.active {
  background-color: #04AA6D;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
</style>
</head>
<body>

<div class="sidebar">
  <a class="active" href="#home">Home</a>
  <a href="${pageContext.request.contextPath}/jsp/welcome.jsp">Add new Test</a>
  <a href="${pageContext.request.contextPath}/jsp/runTests.jsp">Run Test</a>
  <a href="${pageContext.request.contextPath}/jsp/report.jsp">Report</a>
  <a href="${pageContext.request.contextPath}/jsp/config.jsp">Config</a>
</div>

<div class="content">
  <h2>QCharity Web</h2>
  <img src="../static/qclogo.png"  class="center" >
  <br>
  <p> QCharity is a Low Code Automation testing platform, you can test any Application here </p>
  <p> QCharity Supports , GUI - WEB, GUI- MOBILE, API and Data Base test automation </p>

</div>

</body>
</html>
