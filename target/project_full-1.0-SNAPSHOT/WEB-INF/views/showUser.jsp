<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Show User</title>
</head>
<body>
<h1>Selected User:</h1>
<br>
<table>
    <tr>
        <td>Id</td>
        <td>${user.id}</td>
    </tr>
    <tr>
        <td>Name</td>
        <td>${user.name}</td>
    </tr>
    <tr>
        <td>SecondName</td>
        <td>${user.secondName}</td>
    </tr>
    <tr>
        <td>Age</td>
        <td>${user.age}</td>
    </tr>
</table>
<br>
<br>
<a href="/update/${user.id}"><input type="button" value="Update current user."></a>
<br>
<br>
<a href="/users"><input type="button" value="Return to user`s list."></a>
<br>
<br>
<a href="/"><input type="button" value="Return to start!"></a>
<br>
</body>
</html>
