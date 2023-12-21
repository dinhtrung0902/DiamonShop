<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<title>Đăng ký tài khoản</title>
<body>
	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">
					<c:forEach var="item" items="${ categories }">
						<li><a href='<c:url value="/san-pham/${ item.id }"/>'><span
								class="icon-circle-blank"></span> ${ item.name }</a></li>
						<li>
					</c:forEach>
					
					<li><a class="totalInCart" href="gio-hang"><strong>Đã
								mua <span class="badge badge-warning pull-right"
								style="line-height: 18px;"><fmt:formatNumber type="number" groupingUsed="true" value="${ TotalPriceCart }" />	 ₫</span>
						</strong></a></li>
				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br> <br> <a
						class="defaultBtn" href="#">Click here </a>
				</p>
			</div>
			<div class="well well-small">
				<a href="#"><img
					src="<c:url value="/assets/user/img/paypal.jpg"/>"
					alt="payment method paypal"></a>
			</div>

			<a class="shopBtn btn-block" href="#">Upcoming products <br>
				<small>Click to view</small></a> <br> <br>
			<ul class="nav nav-list promowrapper">
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img
							src="<c:url value="/assets/user/img/bootstrap-ecommerce-templates.PNG"/>"
							alt="bootstrap ecommerce templates">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img
							src="<c:url value="/assets/user/img/shopping-cart-template.PNG"/>"
							alt="shopping cart template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img
							src="<c:url value="/assets/user/img/bootstrap-template.png"/>"
							alt="bootstrap template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
			</ul>

		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="trang-chu">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Người dùng</li>
			</ul>
			<h3>Người dùng</h3>
			<hr class="soft" />

				<div class="span4">
					<div class="well">
						<h5>Đăng ký tài khoản</h5>
						<br />
						<form:form action="dang-ky" method="POST" modelAttribute="user" accept-charset="utf-8">  
							<div class="control-group">
								<label class="control-label" for="inputEmail">E-mail</label>
								<div class="controls">
									<form:input class="span3" type="email" placeholder="Nhập email" path="user" />  
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputEmail">Mật khẩu</label>
								<div class="controls">
									<form:input class="span3" type="password" placeholder="Nhập mật khẩu" path="password"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputEmail">Họ tên</label>
								<div class="controls">
									<form:input class="span3" type="text" placeholder="Nhập họ tên" path="display_name"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputEmail">Địa chỉ</label>
								<div class="controls">
									<form:input class="span3" type="text" placeholder="Nhập địa chỉ" path="address"/>
								</div>
							</div>
							<div class="controls">
								<button type="submit" class="btn block">Tạo tài khoản</button>
								<label class="control-label">Đã có tài khoản?</label>
								<a href="dang-nhap" class="defaultBtn">Đăng nhập ngay</a>
							</div>
						</form:form>  
					</div>
				</div>
			</div>

		</div>
</body>
