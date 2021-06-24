<%@ page isELIgnored="false" %>

<!-- the uri mentioned in the taglib directive is not a real web address, but a logical name to 
    an XML file called tag-lib-descriptor (TLD) file.

    "http://java.sun.com/jsp/jstl/core" correspond to a file called c.tld located in the META-INF 
    folder of taglibs-standard-impl-1.2.5.jar
-->

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
    <title>${title}</title>
</head>
<body>
    <div class="alert alert-primary">
        <div class="container">
            <h1>${title}</h1>
        </div>
    </div>
    <div class="container">
        <table class="table table-bordered">
            <caption>Product list</caption>
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Description</th>
                    <th scope="col">Quantity per unit</th>
                    <th scope="col">Unit price</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${products}" var="p">
                <tr>
                    <td>${p.id}</td>
                    <td>${p.name}</td>
                    <td>${p.description}</td>
                    <td>${p.quantityPerUnit}</td>
                    <td>${p.unitPrice}</td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>