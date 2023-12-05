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
  <a class="active" href="${pageContext.request.contextPath}/jsp/welcome.jsp">Add new Test</a>
  <a href="${pageContext.request.contextPath}/jsp/runTests.jsp">Run Test</a>
  <a href="${pageContext.request.contextPath}/jsp/report.jsp">Report</a>
  <a href="${pageContext.request.contextPath}/jsp/config.jsp">Config</a>
  <a href="${pageContext.request.contextPath}/jsp/logout.jsp">Logout</a>
</div>


<div class="content">
<div class="container">
<form id="add" action="/addSteps" method="post"/>
       <p>
       Choose Action:
      <select name="action" id="Click" >
     <option value="Click" name="action">Click</option>
     <option value="Fill" name="action">Fill</option>
     <option value="Move"name="action" >Move</option>
     <option value="RightClick" name="action">RightClick</option>
     <option value="Scroll" name="action">Scroll</option>
   </select>

     Element Name:
             <input type="text" id="element" name="elementName" style="width: 200px;">

          Add Xpath:
        <input type="text" id="xpath" name="element" style="width:200px;">
    <input type="submit" value="Add Test">
    </p>
    <br>
    <p align="left">${step}</p><br>
     </form>
</div>
<br>
<br>
<div class="container">
<form id="add" action="/getFeatures" method="GET"/>
<div class="feature">
 <input type="submit" value="Get Existing Features">
 </div>
<div class="content">
<p align="left">${files}</p><br>
</div>
</form>
</div>

</body>
</html>