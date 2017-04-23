<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Edit Book <c:out value="${book.title}"/></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


</head>
<body>

<h1>Book Details</h1>


<div class="container">
    <form action="<c:url value="/update/${book.id}"/> " method="post">
        <div class="form-group">
            <label>Title book:</label>
            <input type="text" class="form-control" name="title" placeholder="${book.title}" value="${book.title}">
        </div>
        <div class="form-group">
            <label>Autor book:</label>
            <input type="text" class="form-control" name="autor" placeholder="${book.autor} " value="${book.autor} ">
        </div>
        <div class="form-group">
            <label>Price:</label>
            <input type="number" class="form-control" name="price" placeholder="${book.price}" value="${book.price}">
        </div>
        <div class="form-group">
            <label>Description:</label>
            <input type="text" class="form-control" name="description" placeholder="${book.description}"
                   value="${book.description}">
        </div>

        <button type="submit" class="btn btn-default">Edit</button>
    </form>
</div>
</body>
</html>