<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Add New Book</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


</head>
<body>

<h1>Book Details</h1>


<div class="container">
    <form action="<c:url value="/books/add"/> " method="post">
        <div class="form-group">
            <label>Title book:</label>
            <input type="text" class="form-control" name="title" placeholder="Enter title">
        </div>
        <div class="form-group">
            <label>Autor book:</label>
            <input type="text" class="form-control" name="autor" placeholder="Enter autor">
        </div>
        <div class="form-group">
            <label>Price:</label>
            <input type="number" class="form-control" name="price" placeholder="Enter price">
        </div>
        <div class="form-group">
            <label>Description:</label>
            <input type="text" class="form-control" name="description" placeholder="Enter description">
        </div>

        <button type="submit" class="btn btn-default">Add</button>
    </form>
</div>
</body>
</html>