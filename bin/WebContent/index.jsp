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
                        ������ �ʿ��� ����<br> <strong>MomSee�� �ذ�</strong><br>
                     </h2>
                     <p style="display: inline; font-size: 20px;">
                        �� �Ӹ� �ƴ϶� ��ġ������ Ű��ī�����<br> ���ϴ� ������ �츮 ���̵��� <br> �հ��� �ϳ���
                        <Strong>����ϴ� ���̵���</Strong> ��ȣ�ϼ���. <br>

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
                         <strong>�ֿ��� �Ұ�</strong><br>
                     </h2>
                     <p style="display: inline; font-size: 20px;">
                        �ǽð� ����Ȯ�� �� �˸�����<br> ����&���� ��ȭ �� ���� <br> �����Ȳ�� �ﰢ����<br> ����������
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
                        <br>�������� �̿���<br> <strong>�츮 ���� ��Ŵ��</strong><br>
                     </h2>
                     <p style="display: inline; font-size: 20px;">
                        ������ �������� ���� ��<br> �溸�� ���ÿ� ������ġ��<br>�츮���̸� �����ϰ�
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

                        <strong>������ �����</strong><br>
                     </h2>
                     <p style="display: inline; font-size: 20px;">
                        ������ ���̺귯����<br> ����&������ �����ϼ���
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
            <h4 class="major">����Ʈ �̵�� ���� ���߿�</h4>
            <p>������ ��� ������ ������ ���� sw������ ����.</p>
            <p>Team Well-Deep.</p>
            <p>���� CGI���� ������4
               ���� �۾Ϸ�60.</p>
            <!-- <ul class="actions">
               <li><a class="button">Learn more</a></li>
            </ul> -->
         </section>
</body>
</html>