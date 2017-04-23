<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>BookData</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


</head>
<body>
<h1>Book Details</h1>

<div class="container">
    <table class="table table-striped">
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Price</th>
            <th>Description</th>
        </tr>
        <tr>
            <td>${book.title}</td>
            <td>${book.autor}</td>
            <td>${book.price}</td>
            <td>${book.description}</td>
        </tr>
    </table>
</div>

</body>
</html>