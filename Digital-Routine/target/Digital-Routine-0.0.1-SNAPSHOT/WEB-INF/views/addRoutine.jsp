<%@ include file="../fragments/header.jspf"%>

<%@ include file="../fragments/navigation.jspf"%>

<div class="container">
	<form action="/add-routine" method="post">
		<h2>Add Your New Task</h2>
		<font size="4">New Routine:</font> <input
			style="width: 250px; height: 30px;" type="text" name="newRoutine" />
		<input class="btn btn-primary" type="submit" value="Add Routine" />
	</form>
</div>

<%@ include file="../fragments/footer.jspf"%>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>