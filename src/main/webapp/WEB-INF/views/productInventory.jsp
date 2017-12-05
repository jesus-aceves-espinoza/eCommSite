<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Inventory Page</h1>

            <p class="lead">This is the Product Inventory Page</p>
            
            <hr class="my-4">
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo Thumb</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width: 100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD</td>
					<td>
						<a href="<spring:url value="/productList/viewProduct/${product.productId}" />"> <i class="fa fa-info-circle" aria-hidden="true"></i></a>
						<a href="<spring:url value="/admin/productInventory/deleteProduct/${product.productId}" />"> <i class="fa fa-remove" ></i></a>
						<a href="<spring:url value="/admin/productInventory/editProduct/${product.productId}" />"> <i class="fa fa-pencil" ></i></a>
					</td>
				</tr>
            </c:forEach>
        </table>
        
        <a href="<spring:url value="/admin/productInventory/addProduct" /> " class="btn btn-primary">Add Product</a>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
