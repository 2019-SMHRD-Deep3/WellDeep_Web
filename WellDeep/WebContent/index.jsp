<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="keywords" content="" />
<meta name="description" content="" />
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900"
	rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<title>Insert title here</title>
<style>

#header-wrapper {
	overflow: hidden;
	padding: 50px 0px 0px 0px;
	background: #FFC000 url(images/overlay.png) repeat;
}
</style>

</head>
<body>

	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
	<div id="header-wrapper">
		<div id="header" class="container">
			<div id="logo">
				<span class="icon icon-group"></span>
				<h1>
					<a href="#">웰딥</a>
				</h1>
				<span>Design by <a href="http://templated.co" rel="nofollow">WellDeep</a></span>
			</div>
			<!-- <div id="triangle-up"></div> -->
		</div>
	</div>
	<div id="menu-wrapper">
		<div id="menu" style="position: relative; z-index: 2;">
			<ul>



				<li class="current_page_item"><a href="#" accesskey="1"
					title="">Homepage</a></li>
				<li><a href="#" accesskey="2" title="">About Us</a></li>
				<li><a href="#" accesskey="3" title="">Contact Us</a></li>






   
   
   
   <!-- <div style="position: relative; float: right; width: 500px; text-align: right; margin-top: 10px; margin-right: 120px;">  
   
   	<form action="LoginService.do">
    	
		<a href="#" class="btn purple"><input type = "submit" value="" 
 style="background-color:transparent; border:0px transparent solid;">로그인</a>
		<a href="#" class="btn purple">회원가입</a>
			
</div>
    </form>
    
    </div>
   
    -->
   
   
   
   
				<div
					style="position: relative; float: right; width: 310px; text-align: right; margin-top: 10px; margin-right: 120px;">
					<%
						if (info == null) {
					%>
				<!-- 	<form action="LoginService.do">
					
						<button type="submit" class="btn btn-primary">로그인</button>
					</form> 
					 -->
					<form action="join.jsp">
						<button type="submit" class= "btn purple" >로그인 / 회원가입</button>
					
					</form>
					<%
						} else {
					%>
					<form action="LogoutService.do">
					<li style = "color:#fff;"><%= info.getP_id() %> 님 환영합니다.</li>
						<button type="submit" class= "btn purple">로그아웃</button>
					</form>
					<form action="update.jsp">
						<button type="submit" class= "btn purple" >정보수정</button>

					</form>
					<%
						}
					%>

				</div>


			</ul>
		</div>
	</div>
	<div id="wrapper">
		<div id="featured-wrapper">

			<div class="extra2 container">
				<div class="ebox1">
					<div class="hexagon">
						<span class="icon icon-lightbulb"></span>
					</div>
					<div class="title">
						<h2>서비스 소개</h2>
						<span class="byline">Service Introduction</span>
					</div>
					<p>
						This is <strong>Plushiness</strong>, a free, fully
						standards-compliant CSS template designed by <a
							href="http://templated.co" rel="nofollow">TEMPLATED</a>. The
						photos in this template are from <a href="http://fotogrph.com/">
							Fotogrph</a>. This free template is released under the <a
							href="http://templated.co/license">Creative Commons
							Attribution</a> license, so you're pretty much free to do whatever
						you want with it (even use it commercially) provided you give us
						credit for it. Have fun :)
					</p>
					<a href="#" class="button">Etiam posuere</a>
				</div>

				<div class="ebox2">
					<div class="hexagon">
						<span class="icon icon-bullhorn"></span>
					</div>
					<div class="title">
						<h2>Donec dictum metus</h2>
						<span class="byline">Integer sit amet pede vel arcu aliquet
							pretium</span>
					</div>
					<p>In posuere eleifend odio. Quisque semper augue mattis wisi.
						Maecenas ligula. Pellentesque viverra vulputate enim. Aliquam erat
						volutpat. Pellentesque tristique ante ut risus. Quisque dictum.
						Integer nisl risus, sagittis convallis, rutrum id, elementum
						congue, nibh. Suspendisse dictum porta lectus. Donec placerat odio
						vel elit. Nullam ante orci, pellentesque eget, tempus quis,
						ultrices in, est. Curabitur sit amet nulla. Nam in massa. Sed vel
						tellus. Curabitur sem urna, consequat vel, suscipit in, mattis
						placerat, nulla. Sed ac leo. Pellentesque imperdiet.</p>
					<a href="#" class="button">Etiam posuere</a>
				</div>

			</div>

		</div>
	</div>
	<div id="stamp" class="container">
		<div class="hexagon">
			<span class="icon icon-wrench"></span>
		</div>
	</div>
	<div id="copyright" class="container">
		<div class="inner">
			<section class="about">
				<h4 class="major">Magna Aliquam Feugiat</h4>
				<p>Etiam finibus pharetra purus, imperdiet sagittis mauris
					hendrerit vitae.</p>
				<p>In feugiat ante elementum nulla arcu.</p>
				<p>Maecenas vulputate faucibus, convallis ligula ipsum dolor
					feugiat tempus adipiscing.</p>
				<ul class="actions">
					<li><a class="button">Learn more</a></li>
				</ul>
			</section>
</body>
</html>