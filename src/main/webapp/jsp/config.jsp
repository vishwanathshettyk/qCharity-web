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
  <a  href="${pageContext.request.contextPath}/jsp/homepage.jsp">Home</a>
  <a href="${pageContext.request.contextPath}/jsp/welcome.jsp">Add new Test</a>
  <a href="${pageContext.request.contextPath}/jsp/runTests.jsp">Run Test</a>
  <a href="${pageContext.request.contextPath}/jsp/report.jsp">Report</a>
  <a class="active"  href="${pageContext.request.contextPath}/jsp/config.jsp">Config</a>
</div>

<div class="content">
<form id="add" action="/addSteps" method="post"/>
    <div>
     <p>Browser:
    <select name="browserName">
    <option value="Chrome" name="action">Chrome</option>
    <option value="FireFox" name="action">FireFox</option>
    <option value="WebKit"name="action" >WebKit</option>
    <option value="Safari" name="action">Safari</option>
    <option value="Edge" name="action">Edge</option>
  </select> default (chrome)</p>
  </div>
  <div>
  <p>Environment:
  <input type="text" id="element" name="elementName" style="width: 200px;"> default (dev)</p>
  </div>
  <div>
  <p>ScreenShot:
  <input type="radio" id="yes" name="yes">
  <label for="yes">YES</label><br>
  <input type="radio" id="no" name="no" style="width: 198px;">
  <label for="no" style="width: 0px;" >NO</label> default (no)</p>
  </div>
   <div>
   <p>Parallel Execution:
   <input type="text" id="element" name="elementName" style="width: 200px;">  default (1) </p>
   </div>
   <br>
  </div>
  <br>
<input type="submit" value="Save">
</form>
</div>
</body>
</html>