
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/images/favicon.ico"> 

    <title>eMusic</title>

    <!-- Angular CSS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js" ></script>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">
    
    <!-- Custom CSS for eMusicStore -->
    <link href="<c:url value="/resources/css/eMusicStoreCustom.css" />" rel="stylesheet">
    
    <!-- gliph icon locations -->
    <link href="<c:url value="/resources/css/font-awesome-4.7.0/css/font-awesome.min.css" />" rel="stylesheet">
</head>
<!-- NAVBAR
================================================== -->
<body>

    <nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand" href="/eMusicStore">My Music Store</a>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="/eMusicStore">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="/eMusicStore/productList">Product List <span class="sr-only">(current)</span></a>
          </li>
                  
          <!-- <li class="nav-item"><a class="nav-link" href="#">Link</a></li> -->
          <!-- <li class="nav-item"> <a class="nav-link disabled" href="#">Disabled</a></li> -->
          
 <!--            <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
            <div class="dropdown-menu" aria-labelledby="dropdown01">
              <a class="dropdown-item" href="/eMusicStore/productList">Product List</a>
              <a class="dropdown-item" href="/eMusicStore/admin">Admin Page</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
              <a role="separator" class="divider"></a>
              <a class="dropdown-header">Nav header</a>
              <a class="dropdown-item" href="#">Separated link</a>
              <a class="dropdown-item" href="#">One more separated link</a>
            </div>
          </li> -->
        </ul>
        <ul class="navbar-nav pull-right">
        	<li class="nav-item">
            <a class="nav-link" href="/eMusicStore/admin">Admin Page <span class="sr-only">(current)</span></a>
          </li>  
        </ul>
        
        <form class="form-inline mt-2 mt-md-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>