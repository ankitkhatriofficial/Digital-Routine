<%@ include file="../fragments/header.jspf"%>

<%@ include file="../fragments/navigation.jspf"%>

<div class="container">
	<h1>Welcome ${name}</h1>
	<table class="table table-striped">
		<thead>
			<th>Your Today's Tasks are</th>
			<th>Actions</th>
		</thead>

		<tbody>
			<c:forEach items="${routines}" var="routine">
				<tr>
					<td>${routine.name}</td>
					<td><a class="btn btn-danger"
						href="/delete-routine?routine=${routine.name}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a class="btn btn-primary" href="/add-routine">Add New Task</a>
</div>

<%@ include file="../fragments/footer.jspf"%>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>