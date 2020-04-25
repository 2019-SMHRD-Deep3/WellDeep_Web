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


<!doctype html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>http://www.blueb.co.kr</title>

<style rel="stylesheet">
html {
	width: 100%;
	height: 100%;
}

body {
	/*  background: -webkit-linear-gradient(45deg, rgba(66, 183, 245, 0.8) 0%, rgba(66, 245, 189, 0.4) 100%);
  background: linear-gradient(45deg, rgba(66, 183, 245, 0.8) 0%, rgba(66, 245, 189, 0.4) 100%); */
	color: rgba(0, 0, 0, 0.6);
	font-family: "Roboto", sans-serif;
	font-size: 14px;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

.overlay, .form-panel.one:before {
	position: absolute;
	top: 0;
	left: 0;
	/* display: none; */
	background: rgba(0, 0, 0, 0.8);
	width: 100%;
	height: 100%;
}

.form {
	z-index: 15;
	position: relative;
	background: #FFFFFF;
	width: 600px;
	border-radius: 4px;
	box-shadow: 0 0 30px rgba(0, 0, 0, 0.1);
	box-sizing: border-box;
	margin: 100px auto 10px;
	/* overflow: hidden; */
}

/* .form-toggle {
	z-index: 10;
	position: absolute;
	top: 60px;
	right: 60px;
	background: #FFFFFF;
	width: 60px;
	height: 60px;
	border-radius: 100%;
	-webkit-transform-origin: center;
	-ms-transform-origin: center;
	transform-origin: center;
	-webkit-transform: translate(0, -25%) scale(0);
	-ms-transform: translate(0, -25%) scale(0);
	transform: translate(0, -25%) scale(0);
	opacity: 0;
	cursor: pointer;
	-webkit-transition: all 0.3s ease;
	transition: all 0.3s ease;
} */

/* .form-toggle:before, .form-toggle:after {
	content: '';
	display: block;
	position: absolute;
	top: 50%;
	left: 50%;
	width: 30px;
	height: 4px;
	background: #4285F4;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

.form-toggle:before {
	-webkit-transform: translate(-50%, -50%) rotate(45deg);
	-ms-transform: translate(-50%, -50%) rotate(45deg);
	transform: translate(-50%, -50%) rotate(45deg);
}

.form-toggle:after {
	-webkit-transform: translate(-50%, -50%) rotate(-45deg);
	-ms-transform: translate(-50%, -50%) rotate(-45deg);
	transform: translate(-50%, -50%) rotate(-45deg);
}
 */
/* .form-toggle.visible {
	-webkit-transform: translate(0, -25%) scale(1);
	-ms-transform: translate(0, -25%) scale(1);
	transform: translate(0, -25%) scale(1);
	
} */
.form-group { /* 조인  */
	/* display: -webkit-box; */
	/* display: -webkit-flex;
	display: -ms-flexbox; */
	/* display: flex; */
	-webkit-flex-wrap: wrap;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-ms-flex-pack: justify;
	justify-content: space-between;
	margin: 0 0 20px;
}

.form-group:last-child { /* 조인  */
	margin: 0;
}

.form-group label {
	/* display: block; */
	margin: 0 0 10px;
	color: rgba(0, 0, 0, 0.6);
	font-size: 12px;
	font-weight: 500;
	line-height: 1;
	text-transform: uppercase;
	letter-spacing: .2em;
}

.two .form-group label {
	color: #FFFFFF;
}

.form-group input {
	outline: none;
	/* display: block; */
	background: rgba(0, 0, 0, 0.1);
	width: 100%;
	border: 0;
	border-radius: 4px;
	box-sizing: border-box;
	padding: 12px 20px;
	color: rgba(0, 0, 0, 0.6);
	font-family: inherit;
	font-size: inherit;
	font-weight: 500;
	line-height: inherit;
	-webkit-transition: 0.3s ease;
	transition: 0.3s ease;
}

.form-group input:focus {
	color: rgba(0, 0, 0, 0.8);
}

.two .form-group input {
	color: #FFFFFF;
}

.two .form-group input:focus {
	color: #FFFFFF;
}

.form-group button {
	outline: none;
	background: #FFC000;
	width: 100%;
	border: 0;
	border-radius: 8px;
	padding: 9px 20px;
	color: #FFFFFF;
	font-family: inherit;
	font-size: inherit;
	font-weight: 500;
	line-height: inherit;
	text-transform: uppercase;
	cursor: pointer;
}

.two .form-group button {
	margin-top: 25px;
	outline: none;
	background: #FFFFFF;
	width: 100%;
	border: 0;
	border-radius: 8px;
	padding: 9px 20px;
	color: #FFC000;
	font-family: inherit;
	font-size: inherit;
	font-weight: 500;
	line-height: inherit;
	text-transform: uppercase;
	cursor: pointer;
}

.form-group .form-remember {
	font-size: 12px;
	font-weight: 400;
	letter-spacing: 0;
	text-transform: none;
}

.form-group .form-remember input[type='checkbox'] {
	display: inline-block;
	width: auto;
	margin: 0 10px 0 0;
}

.form-group .form-recovery {
	color: #4285F4;
	font-size: 12px;
	text-decoration: none;
}

.form-panel {
	padding: 30px 30px 30px 30px;
	box-sizing: border-box;
	background: beige;
}

/* .form-panel.one:before {
	content: '';
	display: block;
	opacity: 0;
	visibility: hidden;
	-webkit-transition: 0.3s ease;
	transition: 0.3s ease;
} */

/* .form-panel.one.hidden:before {
	display: block;
	opacity: 1;
	visibility: visible;
} */
.form-panel.two { /* 조인  */
	z-index: 5;
	position: static;
	top: 0;
	left: 95%;
	background: #FFC000;
	width: 100%;
	/* max-height: 100%; */
	padding: 60px calc(10% + 60px) 60px 60px;
	/* -webkit-transition: 0.3s ease; */
	/* transition: 0.3s ease; */
	/* cursor: pointer; */
}

.form-panel.two:before, .form-panel.two:after {
	content: '';
	display: block;
	position: absolute;
	top: 60px;
	left: 1.5%;
	background: rgba(255, 255, 255, 0.2);
	height: 30px;
	width: 2px;
	/* -webkit-transition: 0.3s ease;
	transition: 0.3s ease; */
}

.form-panel.two:after {
	
}

left
:
 
3%;
}
.form-panel.two:hover {
	left: 93%;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.form-panel.two:hover:before, .form-panel.two:hover:after {
	opacity: 0;
}

form-panel.two.active {
	left: 10%;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	cursor: default;
}

.form-panel.two.active:before, .form-panel.two.active:after {
	opacity: 0;
}

.form-header { /* 조인  */
	margin: 0 0 40px;
}

.form-header h1 {
	padding: 4px 0;
	color: #FFC000;
	font-size: 24px;
	font-weight: 700;
	text-transform: uppercase;
}

.two .form-header h1 {
	position: relative;
	z-index: 40;
	color: #FFFFFF;
}

.pen-footer {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-ms-flex-pack: justify;
	justify-content: space-between;
	width: 600px;
	margin: 20px auto 100px;
}

.pen-footer a {
	color: #FFFFFF;
	font-size: 12px;
	text-decoration: none;
	text-shadow: 1px 2px 0 rgba(0, 0, 0, 0.1);
}

.pen-footer a .material-icons {
	width: 12px;
	margin: 0 5px;
	vertical-align: middle;
	font-size: 12px;
}

.cp-fab {
	background: #FFFFFF !important;
	color: #4285F4 !important;
}

#header-wrapper {
	/* overflow: hidden; */
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
	<script language=javascript>

    <%-- if ("<%=request.getParameter("joinsuccess")%>" == "False") {
			alert('회원가입 실패');
	}
    if ("<%=request.getParameter("joinsuccess")%>" == "True") {
		alert('회원가입 성공');
		location.href = "index.jsp";
	} --%>
	</script>

	<div id="menu-wrapper">
		<div id="menu">
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
						<button type="submit" class="btn purple">로그인 / 회원가입</button>
					</form>
					<%
						} else {
					%>
					<form action="LogoutService.do">
						<li><%=info.getP_id()%> 님 환영합니다.</li>
						<button type="submit" class="btn btn-primary">로그아웃</button>
					</form>
					<form action="Update.jsp">
						<button type="submit">정보수정</button>
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
			<div class="title"></div>




			<!-- Form-->
			<div class="form"
				style="position: relative; left: 10px; top: -70px; z-index: 1;">



				<!-- <div class="form-toggle"></div> -->
				<div class="form-panel one">
					<div class="form-header">
						<h1>LOGIN</h1>
					</div>
					<div class="form-content">
						<form action="LoginService.do">
							<div class="form-group">
								<label for="username">ID</label> <input type="text"
									id="username" name="p_id" required="required" />
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									id="password" name="p_pw" required="required" />
							</div>
							<div class="form-group">
								<label class="form-remember"> <input type="checkbox" />Remember
									Me 
							</div>
							<div class="form-group">
								<button type="submit">Log In</button>
							</div>
						</form>
					</div>
				</div>





				<form action="JoinService.do">
					<div class="form-panel two">
						<div class="form-header">
							<h1>JOIN</h1>
						</div>
						<div class="form-content">
							<form>
								<div class="form-group">
									<label for="username">ID</label> <input name="p_id" type="text"
										class="form-control input-lg"><br>
								</div>
								<div class="form-group">
									<label for="password">Password</label> <input name="p_pw"
										type="password" class="form-control input-lg"><br>
								</div>
								<div class="form-group">
									<label for="cpassword">Address</label> <input name="p_addr"
										type="text" class="form-control input-lg"><br>
								</div>
								<div class="form-group">
									<label for="email">PhoneNumber</label> <input name="p_phone"
										type="text" class="form-control input-lg"><br>
								</div>
								<div class="form-group">
									<label for="name">Name</label> <input name="p_name" type="text"
										class="form-control input-lg"><br>
								</div>


								<input type="radio" name="p_sex" value="남성" checked="checked">남성
								<input type="radio" name="p_sex" value="여성">여성
						</div>
						<div class="form-group">
							<button type="submit">Join</button>
						</div>
				</form>
			</div>
		</div>


		<!-- <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var panelOne = $('.form-panel.two').height(), panelTwo = $('.form-panel.two')[0].scrollHeight;

							$('.form-panel.two').not('.form-panel.two.active')
									.on(
											'click',
											function(e) {
												e.preventDefault();

												$('.form-toggle').addClass(
														'visible');
												$('.form-panel.one').addClass(
														'hidden');
												$('.form-panel.two').addClass(
														'active');
												$('.form').animate({
													'height' : panelTwo
												}, 200);
											});

							$('.form-toggle').on('click', function(e) {
								e.preventDefault();
								$(this).removeClass('visible');
								$('.form-panel.one').removeClass('hidden');
								$('.form-panel.two').removeClass('active');
								$('.form').animate({
									'height' : panelOne
								}, 200);
							});
						});
	</script> -->
</body>
</html>





<%-- </head>
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

    if ("<%=request.getParameter("joinsuccess")%>" == "False") {
			alert('회원가입 실패');
	}
    if ("<%=request.getParameter("joinsuccess")%>" == "True") {
		alert('회원가입 성공');
		location.href = "index.jsp";
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
				<input type="radio" name="p_sex" value="남성" checked="checked">남성
				<input type="radio" name="p_sex" value="여성">여성<br>	
				<button type="submit" class="btn btn-primary">가입하기</button>
				<button type="reset" class="btn btn-primary">새로쓰기</button>
			</form>
		</div>
</div>
 --%>



