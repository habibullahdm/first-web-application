<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Your Todo</title>
    <link href="webjars/bootstrap/5.3.8/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body>

<div class="container">
    <%--@elvariable id="todo" type=""--%>
    <form:form method="post" modelAttribute="todo">
        <form:hidden path="id"/>
        <fieldset class="form-group">
            <form:label path="desc">Description</form:label>
            <form:input path="desc" type="text" class="form-control"
                        required="required"/>
            <form:errors path="desc" cssClass="text-warning"/>

        </fieldset>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form:form>
</div>

<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<script src="webjars/bootstrap/5.3.8/js/bootstrap.min.js"></script>

</body>
</html>
