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
	if (<%= info == null%>){
		alert('로그인이 필요합니다.');
		location.href = "index.jsp";
	}
    if ("<%=request.getParameter("updatesuccess")%>" == "True") {
			alert('수정 완료');
	}
    if ("<%=request.getParameter("updatesuccess")%>" == "False") {
		alert('수정 실패');
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
					<form action="update.jsp">
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
			<% if (info != null) {%>
				<h2>내 정보</h2>
				<table align="center" border="1px">
					<tr><td>비밀번호</td><td id="pw"></td><td id="pw_td"><button onclick="click_pw();" id="pw_modify">수정</button></td></tr>
					<tr><td>이름</td><td id="name"><%= info.getP_name() %></td><td id="name_td"><button onclick="click_name();" id="name_modify">수정</button></td></tr>
					<tr><td>주소</td><td id="addr"><%= info.getP_addr() %></td><td id="addr_td"><button onclick="click_addr();" id="addr_modify">수정</button></td></tr>
					<tr><td>전화번호</td><td id="phone"><%= info.getP_phone() %></td><td id="phone_td"><button onclick="click_phone();" id="phone_modify">수정</button></td></tr>
				</table>
				<h2>아이 정보</h2>
				<h3>- 아이 정보 등록, 수정은 어플에서만 가능합니다.</h3><br>
				<table align="center" border="1px">
					<tr><td>사진</td><td><% if(info.getC_photo() != null){%> <%= info.getC_photo() %> <%}%></td></tr>
					<tr><td>이름</td><td><% if(info.getC_name() != null){%> <%= info.getC_name() %> <%}%></td></tr>	
					<tr><td>나이</td><td><% if(info.getC_age() != null){%> <%= info.getC_age() %> <%}%></td></tr>
				</table>
			<%} %>	
			</div>
			
		</div>
		</div>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script src="js/bootsnav.js"></script>
<script src="js/main.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
<script>
	var name = null;
	var addr = null;
	var pw = null;
	var phone = null;
	var isCheck = false;

	function click_pw(){
		$("#pw").html('<input type="text" id="pw_input">');
		$("#pw_modify").remove();
		$("#pw_td").append('<button onclick="click_pw_r();" id="pw_modified">변경</button>');
	}
	function click_pw_r(){
		pw = $('#pw_input').val();
		isCheck = true;
		   if(isCheck && pw !== ""){
			   console.log(pw);
			   $.ajax({
				   url : "UpdateUserService.do",
					type : "POST",
					cache : false,
					dataType : "json",
					data : "pw=" + pw,
					success : function(result) {
						var re_pw = result.p_pw;
						$("#pw").html("변경완료");
						$("#pw_modified").remove();
						$("#pw_td").append('<button onclick="click_pw();" id="pw_modify">수정</button>');
						console.log("성공");
			   		},
			   		error : function() {
						console.log("error");
					}});
		   }
		   if(isCheck && pw == ""){
			   alert('비밀번호를 입력해주세요.');
		   }
	}
	function click_name(){
		$("#name").html('<input type="text" id="name_input">');
		$("#name_modify").remove();
		$("#name_td").append('<button onclick="click_name_r();" id="name_modified">변경</button>');
	}
	function click_name_r(){
		name = $('#name_input').val();
		isCheck = true;
		   if(isCheck && name !== ""){
			   console.log(name);
			   $.ajax({
				   url : "UpdateUserService.do",
					type : "POST",
					cache : false,
					dataType : "json",
					data : "name=" + name,
					success : function(result) {
						var re_name = result.p_name;
						$("#name").html(re_name);
						$("#name_modified").remove();
						$("#name_td").append('<button onclick="click_name();" id="name_modify">수정</button>');
						console.log("성공");
			   		},
			   		error : function() {
						console.log("error");
					}});
		   }
		   if(isCheck && name == ""){
			   alert('이름을 입력해주세요.');
		   }
	}
	function click_addr(){
		$("#addr").html('<input type="text" id="addr_input">');
		$("#addr_modify").remove();
		$("#addr_td").append('<button onclick="click_addr_r();" id="addr_modified">변경</button>');
	}
	function click_addr_r(){
		addr = $('#addr_input').val();
		isCheck = true;
		   if(isCheck && addr !== ""){
			   console.log(addr);
			   $.ajax({
				   url : "UpdateUserService.do",
					type : "POST",
					cache : false,
					dataType : "json",
					data : "addr=" + addr,
					success : function(result) {
						var re_addr = result.p_addr;
						$("#addr").html(re_addr);
						$("#addr_modified").remove();
						$("#addr_td").append('<button onclick="click_addr();" id="addr_modify">수정</button>');
						console.log("성공");
			   		},
			   		error : function() {
						console.log("error");
					}});
		   }
		   if(isCheck && addr == ""){
			   alert('주소를 입력해주세요.');
		   }
	}
	function click_phone(){
		$("#phone").html('<input type="text" id="phone_input">');
		$("#phone_modify").remove();
		$("#phone_td").append('<button onclick="click_phone_r();" id="phone_modified">변경</button>');
	}
	function click_phone_r(){
		phone = $('#phone_input').val();
		isCheck = true;
		   if(isCheck && phone !== ""){
			   console.log(phone);
			   $.ajax({
				   url : "UpdateUserService.do",
					type : "POST",
					cache : false,
					dataType : "json",
					data : "phone=" + phone,
					success : function(result) {
						var re_phone = result.p_phone;
						$("#phone").html(re_phone);
						$("#phone_modified").remove();
						$("#phone_td").append('<button onclick="click_phone();" id="phone_modify">수정</button>');
						console.log("성공");
			   		},
			   		error : function() {
						console.log("error");
					}});
		   }
		   if(isCheck && phone == ""){
			   alert('전화번호를 입력해주세요.');
		   }
	}
</script>
<script type="text/javascript">
</script>
</body>
</html>