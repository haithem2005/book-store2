<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src=“https://kit.fontawesome.com/57634ef963.js” crossorigin=“anonymous”></script>
<title>Header</title>
</head>
<body>
<header>
<div class="fluid-container navedite">
            <div class="row no-gutters ">
                <div class="col-7 3lines">
                    <nav class="navbar navbar-light bg-light bar-lg fixed">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation">
                             <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample01">
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="contact.html">Contact</a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="aboutus.html">About Us</a>
                                </li>
                                
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Catalogue</a>
                                    <div class="dropdown-menu" aria-labelledby="dropdown01">
                                        <a class="dropdown-item" href="novels.html">Novels</a>
                                        <a class="dropdown-item" href="kids.html">Kids</a>
                                        <a class="dropdown-item" href="display-all-books.html">Show All</a>
                            
                                    </div>
                                </li>
                                <li class="nav-item active">
                                    
                                  <form action="find-books.html" class="form-inline" method="get">
                                   <input class="form-control" type="text" placeholder="Search" name="searchString" aria-label="Search" >
                                   <button><i class="far fa-search"></i></button>
                                   </form>
                                     
                                         </li>
                            </ul>
                            
                        </div>
                    </nav>
                </div>
                <div class="col-5 header-list1">
                    <ul class="header-list">
                        <li><a href="signup.html" target="_blank">Login</a></li>
                        <li><a href="BookAdded.jsp" target="_blank"><i class="fa fa-shopping-cart" style="font-size:20px"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row no-gutters">
            <div class="col-12">
                <h1 class="main-title">The Book Shop</h1>
            </div>
        </div>
    </header>
    </body>

</html>