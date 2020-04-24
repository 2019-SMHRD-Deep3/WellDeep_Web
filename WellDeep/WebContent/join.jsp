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
				<span>Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a></span>
			</div>
			<!-- <div id="triangle-up"></div> -->
		</div>
	</div>
	<script language=javascript>

    if ("<%=request.getParameter("joinsuccess")%>
		" == "False") {
			alert('회원가입 실패');
		}
	</script>

	<div id="menu-wrapper">
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="#" accesskey="1"
					title="">Homepage</a></li>
				<li><a href="#" accesskey="2" title="">About Us</a></li>
				<li><a href="#" accesskey="3" title="">Contact Us</a></li>
				<div
					style="position: relative; float: right; width: 310px; text-align: right; margin-top: 10px; margin-right: 120px;">
					<%
						if (info == null) {
					%>
					<form action="LoginService.do">
						<input style="width: 120px; height: 12px; font-size: 10px;"
							type="text" id="loginId" name="p_id" placeholder="ID"> <input
							style="width: 120px; height: 12px; font-size: 10px;"
							type="password" id="loginPw" name="p_pw" placeholder="Password">
						<button type="submit" class="btn btn-primary">로그인</button>
					</form>
					<form action="JoinService.do">
						<input type="button" value="회원가입">
					</form>
					<%
						} else {
					%>
					<form action="LogoutService.do">
						<li><%=info.getP_id()%> 님 환영합니다.</li>
						<button type="submit" class="btn btn-primary">로그아웃</button>
					</form>
					<form action="UpdateUserService.do">
						<input type="button" value="정보수정">
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
			<div class="title">
				<h2>회원 가입</h2>
			</div>
			<form action="JoinService.do">
				<input name="p_id" type="text" class="form-control input-lg"
					placeholder="id를 입력하세요"><br> <input name="p_pw"
					type="password" class="form-control input-lg"
					placeholder="pw를 입력하세요"><br> <input name="p_addr"
					type="text" class="form-control input-lg" placeholder="주소를 입력하세요"><br>
				<input name="p_phone"
					type="text" class="form-control input-lg" placeholder="전화번호를 입력하세요"><br>
				<input name="p_name"
					type="text" class="form-control input-lg" placeholder="이름을 입력하세요"><br>	
				<input type="radio" name="p_sex" value="남성">남성
				<input type="radio" name="p_sex" value="여성">여성<br>	
				<button type="submit" class="btn btn-primary">가입하기</button>
				<button type="reset" class="btn btn-primary">새로쓰기</button>
			</form>
		</div>

		<div id="copyright" class="container">
			<div class="inner">
</body>
</html>