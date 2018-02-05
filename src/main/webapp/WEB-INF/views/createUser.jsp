
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create User</title>
</head>
<body>
    <h1>Create User:</h1>
    <form name="user" action="/addUser" method="post">
        <p>Name:</p>
        <input title="Name" type="text" name="name">
        <p>Second Name:</p>
        <input title="Second Name" type="text" name="secondName">
        <p>Age:</p>
        <input title="Age" type="text" name="age">
        <input type="submit" value="Create!">
    </form>
    <br>

    <a href="/users"><input type="button" value="Return to user`s list."></a>
    <br>
    <br>
    <a href="/"><input type="button" value="Return to start!"></a>
<br>
</body>
</html>
