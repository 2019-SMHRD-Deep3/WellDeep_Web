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
					<a href="#">����</a>
				</h1>
				<span>Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a></span>
			</div>
			<!-- <div id="triangle-up"></div> -->
		</div>
	</div>
	<script language=javascript>
	if (<%= info == null%>){
		alert('�α����� �ʿ��մϴ�.');
		location.href = "index.jsp";
	}
    if ("<%=request.getParameter("updatesuccess")%>" == "True") {
			alert('���� �Ϸ�');
	}
    if ("<%=request.getParameter("updatesuccess")%>" == "False") {
		alert('���� ����');
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
						<button type="submit" class="btn btn-primary">�α���</button>
					</form>
					<form action="JoinService.do">
						<input type="button" value="ȸ������">
					</form>
					<%
						} else {
					%>
					<form action="LogoutService.do">
						<li><%=info.getP_id()%> �� ȯ���մϴ�.</li>
						<button type="submit" class="btn btn-primary">�α׾ƿ�</button>
					</form>
					<form action="update.jsp">
						<input type="button" value="��������">
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
				<h2>�� ����</h2>
				<table align="center" border="1px">
					<tr><td>��й�ȣ</td><td id="pw"></td><td id="pw_td"><button id="pw_modify">����</button></td></tr>
					<tr><td>�̸�</td><td id="name"><%= info.getP_name() %></td><td id="name_td"><button id="name_modify">����</button></td></tr>
					<tr><td>�ּ�</td><td id="addr"><%= info.getP_addr() %></td><td id="addr_td"><button id="addr_modify">����</button></td></tr>
					<tr><td>��ȭ��ȣ</td><td id="phone"><%= info.getP_phone() %></td><td id="phone_td"><button id="phone_modify">����</button></td></tr>
				</table>
				<h2>���� ����</h2>
				<h3>- ���� ���� ���, ������ ���ÿ����� �����մϴ�.</h3><br>
				<table align="center" border="1px">
					<tr><td>����</td><td><% if(info.getC_photo() != null){%> <%= info.getC_photo() %> <%}%></td></tr>
					<tr><td>�̸�</td><td><% if(info.getC_name() != null){%> <%= info.getC_name() %> <%}%></td></tr>	
					<tr><td>����</td><td><% if(info.getC_age() != null){%> <%= info.getC_age() %> <%}%></td></tr>
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
	function getInputValue_name(){
		name = $('#name_input').val();
	}
	function getInputValue_addr(){
		addr = $('#addr_input').val();
	}
	function getInputValue_pw(){
		pw = $('#pw_input').val();
	}
	function getInputValue_phone(){
		phone = $('#phone_input').val();
	}
</script>
<script type="text/javascript">
$('#pw_modify').on('click',function() {
	   $("#pw").html('<input type="text" id="pw_input">');
	   $("#pw_modify").remove();
	   $("#pw_td").append('<button onclick="getInputValue_pw();" id="pw_modified">����</button>');
	   	   
	   var isCheck = false;
	   $("#pw_modified").on('click',function(){
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
						$("#pw").html("����Ϸ�");
						$("#pw_modified").remove();
						$("#pw_td").append('<button id="pw_modify">����</button>');
						console.log("����");
			   		},
			   		error : function() {
						console.log("error");
					}});
		   }
		   if(isCheck && pw == ""){
			   alert('��й�ȣ�� �Է����ּ���.');
		   }
	   })
	})
$('#name_modify').on('click',function() {
   $("#name").html('<input type="text" id="name_input">');
   $("#name_modify").remove();
   $("#name_td").append('<button onclick="getInputValue_name();" id="name_modified">����</button>');
   
   var isCheck = false;
   $("#name_modified").on('click',function(){
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
					$("#name_td").append('<button id="name_modify">����</button>');
					console.log("����");
		   		},
		   		error : function() {
					console.log("error");
				}});
	   }
	   if(isCheck && name == ""){
		   alert('�̸��� �Է����ּ���.');
	   }
   })
})
$('#addr_modify').on('click',function() {
   $("#addr").html('<input type="text" id="addr_input">');
   $("#addr_modify").remove();
   $("#addr_td").append('<button onclick="getInputValue_addr();" id="addr_modified">����</button>');
   
   var isCheck = false;
   $("#addr_modified").on('click',function(){
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
					$("#addr_td").append('<button id="addr_modify">����</button>');
					console.log("����");
		   		},
		   		error : function() {
					console.log("error");
				}});
	   }
	   if(isCheck && addr == ""){
		   alert('�ּҸ� �Է����ּ���.');
	   }
   })
})   
$('#phone_modify').on('click',function() {
   $("#phone").html('<input type="text" id="phone_input">');
   $("#phone_modify").remove();
   $("#phone_td").append('<button onclick="getInputValue_phone();" id="phone_modified">����</button>');
      
   var isCheck = false;
   $("#phone_modified").on('click',function(){
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
					$("#phone_td").append('<button id="phone_modify">����</button>');
					console.log("����");
		   		},
		   		error : function() {
					console.log("error");
				}});
	   }
	   if(isCheck && phone == ""){
		   alert('��ȭ��ȣ�� �Է����ּ���.');
	   }
   })
})   
</script>
</body>
</html>