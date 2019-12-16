<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Footer</title>
</head>
<body>
	<footer class="container-fluid">
		<div id="footer-details" class="row no-gutters justify-content-center">
			<div class="col-sm-9">
				<h5 class="uppercase footer-heading">Address</h5>
				<p class="inline-block address">
					Lundgatan #77, <br> Lund, Sweden
				</p>
			</div>
			<div class="col-sm-3 social-footer">
				<h5 class="uppercase footer-heading">Follow Us</h5>
				<ul class="list-inline social">
					<li class="list-inline-item"><a href="#" target="_blank">
							<i class="fab fa-facebook-square"></i> <span class="sr-only">facebook</span>
					</a></li>
					<li class="list-inline-item"><a href="#" target="_blank">
							<i class="fab fa-instagram"></i> <span class="sr-only">instagram</span>
					</a></li>
					<li class="list-inline-item"><a href="#" target="_blank">
							<i class="fab fa-twitter"></i> <span class="sr-only">twitter</span>
					</a></li>
					<li class="list-inline-item"><a href="#" target="_blank">
							<i class="fab fa-snapchat-ghost"></i> <span class="sr-only">snap
								chat</span>
					</a></li>
				</ul>
			</div>
		</div>
	</footer>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js "
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1 "
		crossorigin="anonymous "></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js "
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM "
		crossorigin="anonymous "></script>
	<script>
		$(document).ready(function() {
			$.post("addToCart.html", function(data) {
				BookAddedhtml = $("<div>").html(data);
				var allbasket = BookAddedhtml.find("#Allbasket").html();
				var itemscount = BookAddedhtml.find("#NumberItems").html();
				if (itemscount == "empty")
					itemscount = "";
				$('.badge').html(itemscount);
				$("#myModal").find(".modal-body").html(allbasket);
			});
		});
		function AddtoCart(name) {
			$.post("addToCart.html", {
				isbn : name
			}, function(data) {
				BookAddedhtml = $("<div>").html(data);
				var allbasket = BookAddedhtml.find("#Allbasket").html();
				var itemscount = BookAddedhtml.find("#NumberItems").html();
				if (itemscount == "empty")
					itemscount = "";
				$('.badge').html(itemscount);
				$("#myModal").find(".modal-body").html(allbasket);
			});
		}
		function DeletefromCart(name) {
			$.post("deleteFromCart.html", {
				isbn : name
			}, function(data) {
				BookAddedhtml = $("<div>").html(data);
				var allbasket = BookAddedhtml.find("#Allbasket").html();
				var itemscount = BookAddedhtml.find("#NumberItems").html();
				if (itemscount == "empty")
					itemscount = "";
				$('.badge').html(itemscount);
				$("#myModal").find(".modal-body").html(allbasket);
			});
		}
	</script>
</body>
</html>