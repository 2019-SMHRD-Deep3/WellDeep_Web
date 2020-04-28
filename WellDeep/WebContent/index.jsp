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
            <button type="submit" class="btn purple">로그인 / 회원가입</button>
         </form>
         <%
            } else {
         %>
         <form action="LogoutService.do" style='display:inline;'>
            <li style="color: #fff;"><%=info.getP_id()%> 님 환영합니다.</li>
            <button type="submit" class="btn purple">로그아웃</button>
         </form>
         <form action="update.jsp" style='display:inline;'>
            <button type="submit" class="btn purple">정보수정</button>
         </form>
         <%
            }
         %>
      </div>

      <div id="header" class="container">
   <p class="img"><img src="img/cctv.png" class="img-logo"></p>
            <div class="title-group text-center">
               <h1><font size="30px" color="beige">
                  엄마를 부르는 소리, <br> <strong>위험할땐  MomSee하세요.</font>
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

   <div id="wrapper">
      <div id="featured-wrapper">
         <div class="extra2 container">
            <section>
               <div class="text-group"
                  style="display: table; height:300px; text-align: center;">
                  <div class="test"></div>
                  <div
                     style="display: table-cell; vertical-align: middle; width: 800px">
                     <img src="img/mom.png"
                        style="width: 20rem; padding-right: 0px; padding-top: 0px;">
                  </div>

                  <div
                     style="padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height:515px;">

                     <h2 style="display: inline;">
                        도움이 필요한 순간<br> <strong>MomSee로 해결</strong><br>
                     </h2>
                     <p style="display: inline; font-size: 20px;">
                        집 뿐만 아니라 유치원부터 키즈카페까지<br> 원하는 곳에서 우리 아이들을 <br> 손가락 하나로
                        <Strong>사랑하는 아이들을</Strong> 보호하세요. <br>

                     </p>
                  </div>
                  <div class="test"></div>
                  
               </div>
            </section>
         </div>
      </div>
   </div>

   <div id="wrapper">
      <div id="featured-wrapper">
         <div class="extra2 container">
            <section>
               <div class="text-group"
                  style="display: table; height: 300px;background: floralwhite; text-align: center;">
                  <div class="test"></div>
                  <div
                     style="display: table-cell; vertical-align: middle; width: 800px">
                     <img src="img/app2.png"
                        style="width: 20rem; padding-right: 0px; padding-top: 0px;">
                  </div>

                  <div
                     style="padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height: 515px;">

                     <h2 style="display: inline;">
                         <strong>주요기능 소개</strong><br>
                     </h2>
                     <p style="display: inline; font-size: 20px;">
                        실시간 영상확인 및 알림서비스<br> 영상&음성 녹화 및 삭제 <br> 위험상황시 즉각대응<br> 빠른고객대응
                     </p>
                  </div>
                  <div class="test"></div>
            
               </div>
            </section>
         </div>
      </div>
   </div>



   <div id="wrapper">
      <div id="featured-wrapper">
         <div class="extra2 container">
            <section>
               <div class="text-group"
                  style="display: table; height: 300px;  text-align: center;">
                  <div class="test"></div>
                  
                  <div
                     style="display: table-cell; vertical-align: middle; width: 800px">
                     <img src="img/app2.png"
                        style="width: 20rem; padding-right: 0px; padding-top: 0px;">
                  </div>

                  <div
                     style="padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height: 515px;">

                     <h2 style="display: inline;">
                        <br>딥러닝을 이용한<br> <strong>우리 아이 지킴이</strong><br>
                     </h2>
                     <p style="display: inline; font-size: 20px;">
                        위험한 움직임이 생길 때<br> 경보와 동시에 빠른조치로<br>우리아이를 안전하게
                     </p>
                  </div>
                  <div class="test"></div>
                  
               </div>
            </section>
         </div>
      </div>
   </div>

   <div id="wrapper">
      <div id="featured-wrapper">
         <div class="extra2 container">
            <section>
               <div class="text-group"
                  style="display: table; height:300px; background: floralwhite; text-align: center;">
                  <div class="test"></div>
                  <div
                     style="display: table-cell; vertical-align: middle; width: 800px">
                     <img src="img/app2.png"
                        style="width: 20rem; padding-right: 0px; padding-top: 0px;">
                  </div>

                  <div
                     style="padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height: 515px;">

                     <h2 style="display: inline;">

                        <strong>무제한 저장소</strong><br>
                     </h2>
                     <p style="display: inline; font-size: 20px;">
                        안전한 라이브러리에<br> 영상&음성을 저장하세요
                     </p>
                  </div>
                  <div class="test"></div>
                  
               </div>
            </section>
         </div>
      </div>
   </div>

   <div id="copyright" class="container">
      <div class="inner">
         <section class="about">
            <h4 class="major">스마트 미디어 인재 개발원</h4>
            <p>딥러닝 기반 에너지 빅데이터 응용 sw전문가 과정.</p>
            <p>Team Well-Deep.</p>
            <p>광주 CGI센터 교육실4
               광주 송암로60.</p>
            <!-- <ul class="actions">
               <li><a class="button">Learn more</a></li>
            </ul> -->
         </section>
</body>
</html>