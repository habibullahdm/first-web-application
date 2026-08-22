<%--@elvariable id="errorMessage" type=""--%>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
<p><font color="red">${errorMessage}</font></p>
<form action="/login" method="POST">
    Name :
    <label>
        <input name="name" type="text"/>
    </label>
    Password :
    <label>
        <input name="password" type="password"/>
    </label>
    <input type="submit"/>
</form>
</body>
</html>
