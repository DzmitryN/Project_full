
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update User</title>
</head>
<body>
<h1>Create User:</h1>
<form name="user" action="/updateUser" method="post">
    <p>Id:</p>
    <input readonly title="Id" type="text" name="id" value="${user.id}">
    <p>Name:</p>
    <input title="Name" type="text" name="name" value="${user.name}">
    <p>Second Name:</p>
    <input title="Second Name" type="text" name="secondName" value="${user.secondName}">
    <p>Age:</p>
    <input title="Age" type="text" name="age" value="${user.age}">
    <input type="submit" value="Update!">
</form>
<br>

<a href="/users"><input type="button" value="Return to user`s list."></a>
<br>
<br>
<a href="/"><input type="button" value="Return to start!"></a>
<br>
</body>
</html>
