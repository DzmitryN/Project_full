<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>UsersList</title>
</head>
<body>
<h1>Users List:</h1>
<br>
<p>For selecting user press ID next to row.</p>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>SecondName</th>
        <th>Age</th>
    </tr>

    <c:forEach items="${users}" var="user">
    <tr>
       <td><a href="/user/${user.id}">${user.id}</a></td>
        <td>${user.name}</td>
        <td>${user.secondName}</td>
        <td>${user.age}</td>
        <td><a href="/delete/${user.id}">Delete</a> </td>
        <td><a href="/update/${user.id}">Update</a> </td>
    </tr>
    </c:forEach>


</table>
<br>
<br>
<a href="/addUser"><input type="button" value="Press for create brand new user!"></a>
<br>
<br>
<a href="/"><input type="button" value="Return to start!"></a>


</body>
</html>
