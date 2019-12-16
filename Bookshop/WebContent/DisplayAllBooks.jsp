<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<Book> allBooks = (List<Book>) request.getAttribute("allBooks");
%>
<%@page import="com.bookshop.domain.Book"%>
<%@page import="java.util.List"%>
<jsp:include page="/Header.jsp"></jsp:include>
<section class="fluid-container books-heading">
	<div class="row ">
		<div class="col-12">
			<h3 class="sub-title">Book List!</h3>
		</div>
	</div>
</section>
<br>
<section class="fluid-container">
	<div class="row no-gutters">
            <%
                for (Book nextBook : allBooks) {
            %>          
            <div class="col-md-6 col-lg-4"> 
            <div class="card">
               <img src="<%=nextBook.getImagePath()%>"
                    class="card-img-top" alt="image" >
                <div class="card-body ">                  
                        <h5 class="card-title"><%=nextBook.getTitle()%></h5>
                        <p class="card-text"><%=nextBook.getAuthor()%></p>
                        <p class="card-text price">$<%=nextBook.getPrice()%></p>
                        <div class="card-footer1">
				<a role="button"
					onclick="AddtoCart('<%=nextBook.getISBN()%>'); return false;"
					class="btn btn-info pointer"> Add to Cart</a>
					</div>
			</div>
            </div>
            </div>          
            <%
                }
            %>
            </div>
        
</section>
<br>
<jsp:include page="/Footer.jsp"></jsp:include>
</body>
</html>