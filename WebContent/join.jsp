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
   /* font-family: "Roboto", sans-serif; */
   /* font-size: 14px; */
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
   margin-right: auto;
   margin-bottom: 10px;
   margin-left: auto;
   /* overflow: hidden; */
}

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
   overflow: hidden;
   padding: 50px 0px 0px 0px;
   background: #FFC000 url(images/overlay.png) repeat;
   height: 450px;
}
.img{
   width: 38%; 
   margin: 0 auto;
   text-align: center;
   
}
.text-center {
   width: 100%;
   text-align: center;;
}
</style>
</head>
<body onload="document.login.p_id.focus();">

   <%
      MemberDTO info = (MemberDTO) session.getAttribute("info");
   %>
   <div id="header-wrapper">
      <div id="header" class="container">
   <p class="img"><a href="index.jsp"><img src="img/cctv.png" class="img-logo"></a></p>
            <div class="title-group text-center">
               <h1><font size="30px" color="beige">
                  엄마를 부르는 소리, <br> <strong>위험할땐  MomSee하세요.</strong></font>
                  <br><br>
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
            
      </div>
      
   </div>
<script type="text/javascript">
if ("<%=request.getParameter("joinsuccess")%>" == "True") {
    alert('가입 완료, 로그인을 해주세요');
    location.href = "index.jsp";
}
if ("<%=request.getParameter("joinsuccess")%>" == "False") {
 	alert('가입 실패');
}
</script>
   <div id="wrapper" style = "height: 1500px;">
         <!-- Form-->
         <div class="form"
            style="position: relative; left: 10px; top: 200px; z-index: 1;">

            <!-- <div class="form-toggle"></div> -->
            <div class="form-panel one">
               <div class="form-header">
                  <h1>LOGIN</h1>
               </div>
               <div class="form-content">
                  <form name="login" action="LoginService.do">
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


                        <input type="radio" name="p_sex" value="남" checked="checked">남성
                        <input type="radio" name="p_sex" value="여">여성
                  </form>
                  </div>
                  <div class="form-group">
                     <button type="submit">Join</button>
                  </div>
         </div>
      </div>
</div>
<div class="inner">
         <section style = "text-align:center; color: rgb(245, 245, 220);" class="about">
            <h4 class="major">스마트 미디어 인재 개발원</h4>
            <p>딥러닝 기반 에너지 빅데이터 응용 sw전문가 과정.</p>
            <p>Team Well-Deep.</p>
            <p>광주 CGI센터 교육실4
               광주 송암로60.</p>
         </section></div>

</body>
</html>