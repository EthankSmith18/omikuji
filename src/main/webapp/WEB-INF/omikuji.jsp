<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Omikuji</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body>
  <h1>Send an Omikuji</h1>
  <form action="/data" method="post">
    <label for="number">Pick any number from 5 to 25:</label><br>
    <input type="number" name ="number" min="5" max="25"><br>
    <label for="city">Enter the name of any city:</label><br>
    <input type="text" name ="city"><br>
    <label for="person">Enter the name of any real person:</label><br>
    <input type="text" name ="person"><br>
    <label for="hobby">Enter professional endeavor or hobby:</label><br>
    <input type="text" name ="hobby"><br>
    <label for="living">Enter any type of living thing:</label><br>
    <input type="text" name ="living"><br>
    <label for="nice">Say something nice to someone:</label><br>
    <input type="textarea" name ="nice"><br>
    <input type="submit" value="Submit">
  </form>
</body>
</html>

