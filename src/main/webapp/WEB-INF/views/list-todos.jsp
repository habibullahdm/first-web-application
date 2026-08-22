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
        <caption align="top">Your Todos are</caption>

        <thead>
        <tr>
            <th>Description</th>
            <th>Date</th>
            <th>Completed</th>
            <th>Action</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${todos}" var="todo">
            <tr>
                <td>${todo.desc}</td>
                <td>${todo.targetDate}</td>
                <td>${todo.done}</td>
                <td>
                    <a type="button" class="btn btn-warning"
                       href="/update-todo?id=${todo.id}">Edit</a>

                    <a type="button" class="btn btn-danger"
                       href="/delete-todo?id=${todo.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div>
        <a type="button" class="btn btn-primary" href="/add-todo">Add</a>
    </div>
</div>

<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<script src="webjars/bootstrap/5.3.8/js/bootstrap.min.js"></script>
</body>
</html>
