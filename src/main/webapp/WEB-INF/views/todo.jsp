<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container mt-4">
    <form:form method="post" modelAttribute="todo">
       <form:hidden path="id" />
       <div class="mb-3">
          <form:label path="desc" cssClass="form-label">Description</form:label>
          <form:input path="desc" type="text" cssClass="form-control"
             required="required" />
          <form:errors path="desc" cssClass="text-warning" />
       </div>
       <div class="mb-3">
          <form:label path="targetDate" cssClass="form-label">Target Date</form:label>
          <form:input path="targetDate" type="text" cssClass="form-control"
             required="required" />
          <form:errors path="targetDate" cssClass="text-warning" />
       </div>
       <button type="submit" class="btn btn-success">Submit</button>
    </form:form>
</div>
<%@ include file="common/footer.jspf"%>

<script>
    $('#targetDate').datepicker({
       format : 'dd/mm/yyyy'
    });
</script>
