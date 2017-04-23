<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Books Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<a href="../../index.jsp">Back to main menu</a>
<br/>
<br/>

<h1>Book List</h1>
<div class="container">

    <table class="table table-bordered">
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Price</th>
            <th>Description</th>
        </tr>
        <c:if test="${!empty listBooks}">
            <c:forEach items="${listBooks}" var="book">
                <tr>
                    <th><a href="<c:url value="/book_data/${book.id}/"/>">${book.title}</a></th>
                    <th>${book.autor}</th>
                    <th>${book.price}</th>
                    <th>${book.description}</th>
                    <th>
                        <a class="btn btn-xs btn-primary active" role="button" style="margin: 5px"
                           href="<c:url value='/edit/${book.id}'/>">Edit</a></th>
                    <th>
                        <a class="btn btn-xs btn-danger" role="button" style="margin: 5px"
                           href="<c:url value='/remove/${book.id}'/>">Delete</a></th>
                </tr>
            </c:forEach>
        </c:if>

    </table>

    <a class="btn btn-success" href="<c:url value="/books/add/new"/> ">Add new book</a>

</div>
<%--<c:if test="${!empty listBooks}">--%>
<%--<table class="tg">--%>
<%--<tr>--%>
<%--<th width="80">ID</th>--%>
<%--<th width="120">Title</th>--%>
<%--<th width="120">Author</th>--%>
<%--<th width="120">Price</th>--%>
<%--<th width="60">Edit</th>--%>
<%--<th width="60">Delete</th>--%>
<%--</tr>--%>
<%--<c:forEach items="${bookList}" var="book">--%>
<%--<tr>--%>
<%--<td>${book.id}</td>--%>
<%--<td><a href="/bookdata/${book.id}" target="_blank">${book.}</a></td>--%>
<%--<td>${book.bookAuthor}</td>--%>
<%--<td>${book.price/100}</td>--%>
<%--<td><a href="<c:url value='/edit/${book.id}'/>">Edit</a></td>--%>
<%--<td><a href="<c:url value='/remove/${book.id}'/>">Delete</a></td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>
<%--</table>--%>
<%--</c:if>--%>


<%--<h1>Add a Book</h1>--%>

<%--<c:url var="addAction" value="/books/add"/>--%>

<%--<form:form action="${addAction}" commandName="book">--%>
<%--<table>--%>
<%--<c:if test="${!empty book.bookTitle}">--%>
<%--<tr>--%>
<%--<td>--%>
<%--<form:label path="id">--%>
<%--<spring:message text="ID"/>--%>
<%--</form:label>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form:input path="id" readonly="true" size="8" disabled="true"/>--%>
<%--<form:hidden path="id"/>--%>
<%--</td>--%>
<%--</tr>--%>
<%--</c:if>--%>
<%--<tr>--%>
<%--<td>--%>
<%--<form:label path="bookTitle">--%>
<%--<spring:message text="Title"/>--%>
<%--</form:label>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form:input path="bookTitle"/>--%>
<%--</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>--%>
<%--<form:label path="bookAuthor">--%>
<%--<spring:message text="Author"/>--%>
<%--</form:label>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form:input path="bookAuthor"/>--%>
<%--</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>--%>
<%--<form:label path="price">--%>
<%--<spring:message text="Price"/>--%>
<%--</form:label>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form:input path="price"/>--%>
<%--</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td colspan="2">--%>
<%--<c:if test="${!empty book.bookTitle}">--%>
<%--<input type="submit"--%>
<%--value="<spring:message text="Edit Book"/>"/>--%>
<%--</c:if>--%>
<%--<c:if test="${empty book.bookTitle}">--%>
<%--<input type="submit"--%>
<%--value="<spring:message text="Add Book"/>"/>--%>
<%--</c:if>--%>
<%--</td>--%>
<%--</tr>--%>
<%--</table>--%>
<%--</form:form>--%>
</body>
</html>
