<%--@elvariable id="todos" type=""--%>
<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<div class="container mt-4">
    <table class="table table-striped">
        <caption align="top"><spring:message code="todo.caption" /></caption>
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
                <td><fmt:formatDate pattern="dd/MM/yyyy"
                                    value="${todo.targetDate}"/></td>
                <td>${todo.done}</td>
                <td>
                    <a role="button" class="btn btn-warning btn-sm"
                       href="/update-todo?id=${todo.id}">Update</a>

                    <a role="button" class="btn btn-danger btn-sm"
                       href="/delete-todo?id=${todo.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div class="mt-3">
        <a role="button" class="btn btn-primary" href="/add-todo">Add</a>
    </div>
</div>
<%@ include file="common/footer.jspf" %>
