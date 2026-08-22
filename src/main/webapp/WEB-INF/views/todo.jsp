<html>
<head>
    <title>Your Todo</title>
    <link href="webjars/bootstrap/5.3.8/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body>

<div class="container">
    <form action="/add-todo" method="post">
        <fieldset class="form-group">
            <label>Description</label>
            <label>
                <input name="desc" type="text" class="form-control" required="required"/>
            </label>
        </fieldset>
        <button type="submit" class="btn btn-primary">Add</button>
    </form>
</div>

<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<script src="webjars/bootstrap/5.3.8/js/bootstrap.min.js"></script>

</body>
</html>
