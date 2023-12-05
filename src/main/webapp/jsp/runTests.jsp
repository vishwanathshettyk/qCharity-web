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
  <a href="#home">Home</a>
  <a href="${pageContext.request.contextPath}/jsp/welcome.jsp">Add new Test</a>
  <a class="active" href="${pageContext.request.contextPath}/jsp/runTests.jsp">Run Test</a>
  <a href="${pageContext.request.contextPath}/jsp/report.jsp">Report</a>
  <a href="${pageContext.request.contextPath}/jsp/config.jsp">Config</a>
</div>

<div class="content">
<form id="add" action="/run-tests" method="post"/>
  <div class="row">
    <div class="col-sm-4">
      <h3>Choose Feature</h3>
     <select name="feature" id="feature" >
    <option value="All features"name="action" >All features</option>
    <option value="feature-validate data" name="action">feature-validate data</option>
    <option value="feature-validate content" name="action">feature-validate content</option>
    <option value="feature-validate image"name="action" >feature-validate image</option>
    <option value="feature-validate network"name="action" >feature-validate network</option>
  </select><br><br>
    </div>
    <div class="col-sm-4">
       <h3>Choose Tags</h3>
          <select name="tags" id="tags" >
         <option value="All tags"name="action" >All Tags</option>
         <option value="LTIM100232" name="action">LTIM100232</option>
         <option value="LTIM100233" name="action"LTIM100233</option>
         <option value="LTIM100234"name="action" >LTIM100234</option>
         <option value="LTIM100235"name="action" >LTIM100235</option>
         </select><br><br>
    </div>
    <div class="col-sm-4">
        <h3>Choose Scenario</h3>
          <select name="scenario" id="scenario" >
          <option value="All features"name="action" >All Scenarios</option>
          <option value="scenario-validate data" name="action">scenario-validate data</option>
          <option value="scenario-validate content" name="action">scenario-validate content</option>
          <option value="scenario-validate image"name="action" >scenario-validate image</option>
          <option value="scenario-validate network"name="action" >scenario-validate network</option>
         </select><br><br>
    </div>
  </div>
   <input type="submit" value="Run Test">
     </form>
</div>
</body>
</html>

