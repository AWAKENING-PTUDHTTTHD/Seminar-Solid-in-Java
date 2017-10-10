<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>All Books</title>

<link rel="stylesheet"
	href='<c:url value="/web-resources/lib/bootstrap-3.3.6/css/bootstrap.min.css"/>'>
	
<link rel="stylesheet"
	href='<c:url value="/web-resources/lib/jquery/jquery-ui-1.12.0-rc.1.css"/>'>

<style type="text/css">
th {
	text-align: left
}
</style>


</head>

<body>
	<div style="width: 95%; margin: 0 auto;">

		<div id="bookDialog" style="display: none;">
			<%@ include file="bookForm.jsp"%>
		</div>

		<h1>All Books</h1>

		<button class="btn btn-success" onclick="addBook()">
			<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add Book
		</button>
		<br>
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th width="4%">S.N</th>
					<th width="12%">Name</th>
					<th width="12%">Code</th>
					<th width="12%">Price</th>
					<th width="12%">Author</th>
					<th width="12%">ISBN</th>
					<th width="12%">Publisher</th>
					<th width="12%">Published On</th>
					<th width="12%"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${bookList}" var="book" varStatus="loopCounter">
					<tr>
						<td><c:out value="${loopCounter.count}" /></td>
						<td><c:out value="${book.name}" /></td>
						<td><c:out value="${book.code}" /></td>
						<td><c:out value="${book.price}" /></td>
						<td><c:out value="${book.author}" /></td>
						<td><c:out value="${book.isbn}" /></td>
						<td><c:out value="${book.publisher}" /></td>
						<td><c:out value="${book.publishedOn}" /></td>

						<td><nobr>
								<button class="btn btn-primary"
									onclick="editBook(${book.id});">

									<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Edit
								</button>

								<a class="btn btn-danger"
									onclick="return confirm('Are you sure you want to delete this book?');"
									href="delete/${book.id}"> 
									<span class="glyphicon glyphicon-trash" aria-hidden="true"></span> Delete
								</a>

							</nobr></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>

	<script type="text/javascript"
		src='<c:url value="/web-resources/lib/jquery/jquery-3.2.1.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/web-resources/lib/jquery/jquery-ui-1.12.0-rc.1.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/web-resources/lib/jquery/jquery.datetimepicker.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/web-resources/lib/bootstrap-3.3.6/js/bootstrap.min.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/web-resources/js/listBooks.js"/>'></script>
</body>
</html>