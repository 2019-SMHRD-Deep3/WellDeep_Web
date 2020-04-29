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
html {
   width: 100%;
   height: 100%;
}

body {
   /*  background: -webkit-linear-gradient(45deg, rgba(66, 183, 245, 0.8) 0%, rgba(66, 245, 189, 0.4) 100%);
  background: linear-gradient(45deg, rgba(66, 183, 245, 0.8) 0%, rgba(66, 245, 189, 0.4) 100%); */
   color: rgba(0, 0, 0, 0.6);
  /*  font-family: "Roboto", sans-serif;
   font-size: 14px; */
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

} */
.form-group { /* ����  */
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

.form-group:last-child { /* ����  */
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
   /* width: 100%; */
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
  /*  width: 100%; */
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
.form-panel.two { /* ����  */
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

.form-header { /* ����  */
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
   overflow: hidden;
   padding: 50px 0px 0px 0px;
   background: #FFC000 url(images/overlay.png) repeat;
   height: 450px;
}
.text-group {
   width: 100%;
   text-align: center;
}

.text-center {
   width: 100%;
   text-align: center;;
}

.test {
   width: 300px;
}
.img{
   width: 38%; 
   margin: 0 auto;
   text-align: center;
   
}
button{
  background:#1AAB8A;
  color:#fff;
  border:none;
  position:relative;
  height:60px;
  font-size:1.6em;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}

button:hover{
  background:#fff;
  color:black;
}
button:before,button:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: beige;
  transition:400ms ease all;
}
button:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
button:hover:before,button:hover:after{
  width:100%;
  transition:800ms ease all;
}

</style>
</head>
<body>






</head>
<body>
   <%
      MemberDTO info = (MemberDTO) session.getAttribute("info");
   %>
    <div id="header-wrapper">
      <div 
         style=" float: right; width: 310px; text-align: right; margin-top: 10px; margin-right: 120px;">
         <%
            if (info == null) {
         %>
         <form action="join.jsp">
            <button type="submit" class="btn purple">�α��� / ȸ������</button>
         </form>
         <%
            } else {
         %>
         <form action="LogoutService.do" style='display:inline;'>
            <li style="color: #fff;"><%=info.getP_id()%> �� ȯ���մϴ�.</li>
            <button type="submit" class="btn purple">�α׾ƿ�</button>
         </form>
         <form action="update.jsp" style='display:inline;'>
            <button type="submit" class="btn purple">��������</button>
         </form> 
         <%
            }
         %>
      </div>

      <div id="header" class="container">
   <p class="img"><img src="img/cctv.png" class="img-logo"></p>
            <div class="title-group text-center">
               <h1><font size="30px" color="beige">
                  ������ �θ��� �Ҹ�, <br> <strong>�����Ҷ�  MomSee�ϼ���.</font>
                  <br><br>
                  </strong>
               </h1>
               <h1>
                  <div class="download-btns" style="margin-top: -34px;">
                     <a href="https://hbe.kr/l/ddingdongappdownload-android-homepage"
                        target="_blank" class="btn btn-outline-light mr-2 btn-google">
                        <img src="img/google.png" class="img-btn-google"
                        style="width: 19px; height: 20px; margin: 0px 4.8px 0px 0px; margin-bottom: -5px;">
                        Google Play
                     </a> <a href="https://hbe.kr/l/ddingdongappdownload-ios-homepage"
                        target="_blank" class="btn btn-outline-light ml-2 btn-apple">
                        <img src="img/apple.png" class="img-btn-apple"
                        style="width: 20px; height: 22px; margin: 0px 4.8px 0px 0px; margin-bottom: -5px;">
                        App Store
                     </a>
                  </div>
               </h1>
               <span><font color="beige">Design by <a href="http://templated.co" rel="nofollow" style="color : beige">WellDeep</font></a></span>
            </div>
            <div id="triangle-up"></div>
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
               title=""></a></li>
            <li><a href="#" accesskey="2" title=""></a></li>
            <li><a href="#" accesskey="3" title=""></a></li>
           
         </ul>
      </div>
   </div>   
   <!-- <div id="wrapper">
      <div id="featured-wrapper"> -->
         <div style = "height: 1500px; background: white;">
         <% if (info != null) {%>
            <h2 style = "font-size: 24px; text-align: center; padding-top: 130px; ">�� ����</h2>

            
            
            <div id="wrapper">
      <div id="featured-wrapper">
         <div class="title"></div>




         <!-- Form-->
         <div class="form"
            style="position: relative; left: 10px; top: -70px; z-index: 1;">



            <!-- <div class="form-toggle"></div> -->
            <div class="form-panel one" style = "padding-top: 10px; padding-left: 78px;">
               <div class="form-header">
                  <h1 style = "font-sizse: 24px;">ȸ������ ����</h1>
               </div>
               <div class="form-content">
                  <form action="LoginService.do">
                     <div class="form-group">
                        <label for="username">��й�ȣ</label> <input style = "margin-bottom: 16px;"type="text"
                           id="pw" name="p_id" required="required" /><td id="pw"></td><td id="pw_td"><button 
                           style = "height: 37px; width: 63px; font-size: 11px; text-align: left;"onclick="click_pw();" id="pw_modify">����</button></td>
                     </div>
                     <div class="form-group">
                        <label for="password">�̸�</label> <input  style = "margin-left: 29px; margin-bottom: 16px;" type="password"
                           id="name" name="p_pw" required="required" /><td id="name"><%= info.getP_name() %></td><td id="name_td"><button 
                            style = "height: 37px; width: 63px; font-size: 11px; text-align: left;" onclick="click_name();" id="name_modify">����</button></td>
                     </div>
                     
                     <div class="form-group">
                        <label for="password">�ּ�</label> <input  style = "margin-left: 29px; margin-bottom: 16px;" type="password"
                           id="addr" name="p_pw" required="required" /></td><td id="addr"><%= info.getP_addr() %></td><td id="addr_td"><button
                            style = "height: 37px; width: 63px; font-size: 11px; text-align: left;"  onclick="click_addr();" id="addr_modify">����</button></td>
                     </div>
                     
                     <div class="form-group">
                        <label for="password">��ȭ��ȣ</label> <input style = "margin-bottom: 16px;"type="password"
                           id="phone" name="p_pw" required="required" /><td id="phone"><%= info.getP_phone() %></td><td id="phone_td"><button
                            style = "height: 37px; width: 63px; font-size: 11px; text-align: left;" onclick="click_phone();" id="phone_modify">����</button></td>
                     </div>
                     
                     
                  </form>
               </div>
            </div>


            
            
            
            
            
            <%-- <table align="center" border="1px">
               <tr><td>��й�ȣ</td><td id="pw"></td><td id="pw_td"><button onclick="click_pw();" id="pw_modify">����</button></td></tr>
               <tr><td>�̸�</td><td id="name"><%= info.getP_name() %></td><td id="name_td"><button onclick="click_name();" id="name_modify">����</button></td></tr>
               <tr><td>�ּ�</td><td id="addr"><%= info.getP_addr() %></td><td id="addr_td"><button onclick="click_addr();" id="addr_modify">����</button></td></tr>
               <tr><td>��ȭ��ȣ</td><td id="phone"><%= info.getP_phone() %></td><td id="phone_td"><button onclick="click_phone();" id="phone_modify">����</button></td></tr>
            </table>
            <h2>���� ����</h2>
            <h3>- ���� ���� ���, ������ ���ÿ����� �����մϴ�.</h3><br>
            <table align="center" border="1px">
               <tr><td>����</td><td><% if(info.getC_photo() != null){%> <%= info.getC_photo() %> <%}%></td></tr>
               <tr><td>�̸�</td><td><% if(info.getC_name() != null){%> <%= info.getC_name() %> <%}%></td></tr>   
               <tr><td>����</td><td><% if(info.getC_age() != null){%> <%= info.getC_age() %> <%}%></td></tr>
            </table> --%>
         
         </div>
         
      </div>
      </div>
      
      
      <h2 style = "text-align:center; padding-top: 104px;">���� ����</h2>
            <h3 style = "text-align:center; margin-bottom: 26px;">- ���� ���� ���, ������ ���ÿ����� �����մϴ�.</h3><br>
            <table align="center" border="1px">
                     <img style = "display : block;margin : 0 auto; width: 200px;" src="img/childphoto.jpg"><% if(info.getC_photo() != null){%> <%}%>
               <div style = "text-align:center; font-size: 10px; margin: 35px;">
               <h2>�̸� : <% if(info.getC_name() != null){%> <%= info.getC_name() %> <%}%>   
               <h2>���� : <% if(info.getC_age() != null){%> <%= info.getC_age() %> <%}%>
               <h2>���� : <% if(info.getC_age() != null){%> <%= info.getC_age() %> <%}%>
               </div>      
            </table> 
            <%} %>
            
            
      
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
      $("#pw_td").append('<button onclick="click_pw_r();" id="pw_modified">����</button>');
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
                  $("#pw").html("����Ϸ�");
                  $("#pw_modified").remove();
                  $("#pw_td").append('<button onclick="click_pw();" id="pw_modify">����</button>');
                  console.log("����");
                  },
                  error : function() {
                  console.log("error");
               }});
         }
         if(isCheck && pw == ""){
            alert('��й�ȣ�� �Է����ּ���.');
         }
   }
   function click_name(){
      $("#name").html('<input type="text" id="name_input">');
      $("#name_modify").remove();
      $("#name_td").append('<button onclick="click_name_r();" id="name_modified">����</button>');
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
                  $("#name_td").append('<button onclick="click_name();" id="name_modify">����</button>');
                  console.log("����");
                  },
                  error : function() {
                  console.log("error");
               }});
         }
         if(isCheck && name == ""){
            alert('�̸��� �Է����ּ���.');
         }
   }
   function click_addr(){
      $("#addr").html('<input type="text" id="addr_input">');
      $("#addr_modify").remove();
      $("#addr_td").append('<button onclick="click_addr_r();" id="addr_modified">����</button>');
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
                  $("#addr_td").append('<button onclick="click_addr();" id="addr_modify">����</button>');
                  console.log("����");
                  },
                  error : function() {
                  console.log("error");
               }});
         }
         if(isCheck && addr == ""){
            alert('�ּҸ� �Է����ּ���.');
         }
   }
   function click_phone(){
      $("#phone").html('<input type="text" id="phone_input">');
      $("#phone_modify").remove();
      $("#phone_td").append('<button onclick="click_phone_r();" id="phone_modified">����</button>');
   }
   function click_phone_r(){
      phone = $('#phone_input').val();
      isCheck = true;
         if(isCheck && phone !== ""){
            console.log(��);
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
                  $("#phone_td").append('<button onclick="click_phone();" id="phone_modify">����</button>');
                  console.log("����");
                  },
                  error : function() {
                  console.log("error");
               }});
         }
         if(isCheck && phone == ""){
            alert('��ȭ��ȣ�� �Է����ּ���.');
         }
   }
</script>
<script type="text/javascript">
</script>

   <div id="copyright" class="container" style = "overflow: hidden; padding: 5em 0em;
    border-top: 1px solid rgba(255,255,255,0.08); margin-top: 240px; text-align: center; background: #3D3D3D;">
    
      <div class="inner">
         <section class="about">
            <h4 class="major">Magna Aliquam Feugiat</h4>
            <p>Etiam finibus pharetra purus, imperdiet sagittis mauris
               hendrerit vitae.</p>
            <p>In feugiat ante elementum nulla arcu.</p>
            <p>Maecenas vulputate faucibus, convallis ligula ipsum dolor
               feugiat tempus adipiscing.</p>

</body>
</html>