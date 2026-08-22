<%--@elvariable id="todos" type=""--%>
<%--@elvariable id="name" type=""--%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Todos for ${name}</title>
    <link href="webjars/bootstrap/5.3.8/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body>
<div class="container">
    <table class="table table-striped">
        <caption>Your Todos are</caption>

        <thead>
        <tr>
            <th>Description</th>
            <th>Date</th>
            <th>Completed</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${todos}" var="todo">
            <tr>
                <td>${todo.desc}</td>
                <td>${todo.targetDate}</td>
                <td>${todo.done}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div>
        <a class="button" href="/add-todo">Add</a>
    </div>
</div>

<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<script src="webjars/bootstrap/5.3.8/js/bootstrap.min.js"></script>
</body>
</html>
