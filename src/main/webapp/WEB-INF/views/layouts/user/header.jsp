<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<header id="header">
	<div class="row">
		<div class="span4">
			<h1>
				<a class="logo" href="/DiamonShop/trang-chu"><span>Twitter
						Bootstrap ecommerce template</span> <img
					src="<c:url value="/assets/user/img/logo-bootstrap-shoping-cart.png" />"
					alt="bootstrap sexy shop"> </a>
			</h1>
		</div>
		<div class="span4">
			<div class="offerNoteWrapper">
				<h1 class="dotmark">
					<i class="icon-cut"></i> Twitter Bootstrap shopping cart HTML
					template is available @ $14
				</h1>
			</div>
		</div>
		<div class="span4 alignR">
			<p>
				<br> <strong> Support (24/7) : 0800 1234 678 </strong><br>
				<br>
			</p>
			<c:if test="${ empty TotalQuantyCart }">
				<a href="gio-hang"><span class="btn btn-mini">0 <span
						class="icon-shopping-cart"></span></span></a>
			</c:if>
			<c:if test="${ not empty TotalQuantyCart }">
				<a href="gio-hang"><span class="btn btn-mini">[ ${ TotalQuantyCart }
						] <span class="icon-shopping-cart"></span>
				</span></a>
			</c:if>

		</div>
	</div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a data-target=".nav-collapse" data-toggle="collapse"
				class="btn btn-navbar"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a>
			<div class="nav-collapse">
				<ul class="nav">
					<c:forEach var="item" items="${ menus }" varStatus="index">
						<c:if test="${ index.first }">
							<li class="active">
						</c:if>
						<c:if test="${ not index.first }">
							<li class="">
						</c:if>
						<a href="/DiamonShop/${ item.url }">${ item.name } </a>
						</li>
					</c:forEach>

				</ul>
				<form action="#" class="navbar-search pull-left">
					<input type="text" placeholder="Search" class="search-query span2">
				</form>
				<ul class="nav pull-right">
					<c:if test="${ empty LoginInfo }">
						<li class="dropdown"><a data-toggle="dropdown"
							class="dropdown-toggle" href="#"><span class="icon-lock"></span>
								Đăng nhập <b class="caret"></b></a>
							<div class="dropdown-menu">
								<a href="dang-nhap" class="shopBtn btn-block">Đăng nhập</a> <a
									href="dang-ky" class="shopBtn btn-block">Đăng ký</a>
							</div></li>
					</c:if>
					<c:if test="${ not empty LoginInfo }">
								<li class="dropdown"><a data-toggle="dropdown"
							class="dropdown-toggle" href="#"><span class="icon-lock"></span>
								${ LoginInfo.display_name } <b class="caret"></b></a>
							<div class="dropdown-menu">
								<a href="dang-xuat" class="shopBtn btn-block">Đăng xuất</a> 
							</div></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>