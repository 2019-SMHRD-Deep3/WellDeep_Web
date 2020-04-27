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
.text-group{
 width: 100%;
 text-align: center;
}

.text-center{
 width: 100%;
 text-align: center;;
}
.test{
width: 300px;
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
				<span>Design by <a href="http://templated.co" rel="nofollow">WellDeep</a></span>
			</div>
			<div id="triangle-up"></div>
		</div>
	</div>
	<div id="menu-wrapper">
		<div id="menu" style="position: relative; z-index: 2;">
			<ul>





				<!-- <section class="bg-main">
                <div class="container">
                    <img src="images/img_logo.png" class="img-logo">
                    <div class="title-group text-center">
                        <h1>
                            ���ִ� ������ �θ��� �Ҹ�,
							<br>
                            <strong>����� �� <span class="cy" "="">��</span>�ϼ���.</strong>
                        </h1>
                        <div class="download-btns">
                            <a href="https://hbe.kr/l/ddingdongappdownload-android-homepage" target="_blank" class="btn btn-outline-light mr-2 btn-google">
                                <img src="images/img_btn_google.png" class="img-btn-google">
                                Google Play
                            </a>
                            <a href="https://hbe.kr/l/ddingdongappdownload-ios-homepage" target="_blank" class="btn btn-outline-light ml-2 btn-apple">
                                <img src="images/img_btn_apple.png" class="img-btn-apple">
                                App Store
                            </a>
                        </div>
                        <div class="etc-btns">
                            <a href="http://naver.me/xLRuwWG5" target="_blank" class="btn btn-outline-light mr-2 btn-google">
                                �� ���� ��û��
                            </a>
                        </div>
                        <div class="etc2-btns">
                            <a href=" https://pf.kakao.com/_pxokgd" target="_blank" class="btn btn-outline-light mr-2 btn-google">
                                īī���� �����ϱ�
                            </a>
                        </div>
                    </div>
                </div>
            </section> -->



			<!-- 	<li class="current_page_item"><a href="#" accesskey="1"
					title="">Homepage</a></li>
				<li><a href="#" accesskey="2" title="">About Us</a></li>
				<li><a href="#" accesskey="3" title="">Contact Us</a></li>
 -->

				<!-- <div style="position: relative; float: right; width: 500px; text-align: right; margin-top: 10px; margin-right: 120px;">  
   
   	<form action="LoginService.do">
    	
		<a href="#" class="btn purple"><input type = "submit" value="" 
 style="background-color:transparent; border:0px transparent solid;">�α���</a>
		<a href="#" class="btn purple">ȸ������</a>
			
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
					
						<button type="submit" class="btn btn-primary">�α���</button>
					</form> 
					 -->
					<form action="join.jsp">
						<button type="submit" class="btn purple">�α��� / ȸ������</button>

					</form>
					<%
						} else {
					%>
					<form action="LogoutService.do">
						<li style="color: #fff;"><%=info.getP_id()%> �� ȯ���մϴ�.</li>
						<button type="submit" class="btn purple">�α׾ƿ�</button>
					</form>
					<form action="update.jsp">
						<button type="submit" class="btn purple">��������</button>

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
					<section>
						<div class="text-group" style = "display:table; height: 800px; background: floralwhite; text-align:center;">
						<div class = "test"></div>
						<!--  <div class="col-lg-6 text-center"> -->
						 <div style = "display: table-cell; vertical-align: middle; width: 800px">
						 <img src="img/app1.png" style = "width: 20rem;  padding-right: 0px; padding-top: 100px; ">
						 </div>
                            
                            <div style = "padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height: 715px; ">
						     
						      <h2 style="display: inline;">
                                    AI�� �̿���<br>
                                    <strong>����ȭ123</strong>
                                </h2>
                                <p style="display: inline;">
                                   	 �˾Ƽ� ôô, ���⿡ �´�<br>
                                   	 ������ ���� ��õ�ص帳�ϴ�.
                                </p>
                           </div>
                           <div class = "test"></div>
                        <!-- </div> -->
                        
						
						</div>
					</section>
				</div>
			</div>
		</div>
	

          

<div id="wrapper">
		<div id="featured-wrapper">
			<div class="extra2 container">
					<section>
						<div class="text-group" style = "display:table; height: 800px; text-align:center;">
						<div class = "test"></div>
						<!--  <div class="col-lg-6 text-center"> -->
						 <div style = "display: table-cell; vertical-align: middle; width: 800px">
						 <img src="img/app2.png" style = "width: 20rem;  padding-right: 0px; padding-top: 100px; ">
						 </div>
                            
                            <div style = "padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height: 715px; ">
						     
						      <h2 style="display: inline;">
                                    AI�� �̿���<br>
                                    <strong>����ȭ123</strong>
                                </h2>
                                <p style="display: inline;">
                                   	 �˾Ƽ� ôô, ���⿡ �´�<br>
                                   	 ������ ���� ��õ�ص帳�ϴ�.
                                </p>
                           </div>
                           <div class = "test"></div>
                        <!-- </div> -->
                        
						
						</div>
					</section>
				</div>
			</div>
		</div>
	
<div id="wrapper">
		<div id="featured-wrapper">
			<div class="extra2 container">
					<section>
						<div class="text-group" style = "display:table; height: 800px; background: floralwhite; text-align:center;">
						<div class = "test"></div>
						<!--  <div class="col-lg-6 text-center"> -->
						 <div style = "display: table-cell; vertical-align: middle; width: 800px">
						 <img src="img/app1.png" style = "width: 20rem;  padding-right: 0px; padding-top: 100px; ">
						 </div>
                            
                            <div style = "padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height: 715px; ">
						     
						      <h2 style="display: inline;">
                                    AI�� �̿���<br>
                                    <strong>����ȭ123</strong>
                                </h2>
                                <p style="display: inline;">
                                   	 �˾Ƽ� ôô, ���⿡ �´�<br>
                                   	 ������ ���� ��õ�ص帳�ϴ�.
                                </p>
                           </div>
                           <div class = "test"></div>
                        <!-- </div> -->
                        
						
						</div>
					</section>
				</div>
			</div>
		</div>
	
<div id="wrapper">
		<div id="featured-wrapper">
			<div class="extra2 container">
					<section>
						<div class="text-group" style = "display:table; height: 800px; text-align:center;">
						<div class = "test"></div>
						<!--  <div class="col-lg-6 text-center"> -->
						 <div style = "display: table-cell; vertical-align: middle; width: 800px">
						 <img src="img/app2.png" style = "width: 20rem;  padding-right: 0px; padding-top: 100px; ">
						 </div>
                            
                            <div style = "padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height: 715px; ">
						     
						      <h2 style="display: inline;">
                                    AI�� �̿���<br>
                                    <strong>����ȭ123</strong>
                                </h2>
                                <p style="display: inline;">
                                   	 �˾Ƽ� ôô, ���⿡ �´�<br>
                                   	 ������ ���� ��õ�ص帳�ϴ�.
                                </p>
                           </div>
                           <div class = "test"></div>
                        <!-- </div> -->
                        
						
						</div>
					</section>
				</div>
			</div>
		</div>
	

	
	

	
	<div id="wrapper">
		<div id="featured-wrapper">
			<div class="extra2 container">
					<section>
						<div class="text-group" style = "display:table; height: 800px; background: floralwhite; text-align:center;">
						<div class = "test"></div>
						<!--  <div class="col-lg-6 text-center"> -->
						 <div style = "display: table-cell; vertical-align: middle; width: 800px">
						 <img src="img/app1.png" style = "width: 20rem;  padding-right: 0px; padding-top: 100px; ">
						 </div>
                            
                            <div style = "padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height: 715px; ">
						     
						      <h2 style="display: inline;">
                                    AI�� �̿���<br>
                                    <strong>����ȭ123</strong>
                                </h2>
                                <p style="display: inline;">
                                   	 �˾Ƽ� ôô, ���⿡ �´�<br>
                                   	 ������ ���� ��õ�ص帳�ϴ�.
                                </p>
                           </div>
                           <div class = "test"></div>
                        <!-- </div> -->
                        
						
						</div>
					</section>
				</div>
			</div>
		</div>
	

	
	
	
	
	
	
	<div id="wrapper">
		<div id="featured-wrapper">
			<div class="extra2 container">
					<section>
						<div class="text-group" style = "display:table; height: 800px; text-align:center;">
						<div class = "test"></div>
						<!--  <div class="col-lg-6 text-center"> -->
						 <div style = "display: table-cell; vertical-align: middle; width: 800px">
						 <img src="img/app4.png" style = "width: 20rem;  padding-right: 0px; padding-top: 100px; ">
						 </div>
                            
                            <div style = "padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height: 715px; ">
						     
						      <h2 style="display: inline;">
                                    AI�� �̿���<br>
                                    <strong>����ȭ123</strong>
                                </h2>
                                <p style="display: inline;">
                                   	 �˾Ƽ� ôô, ���⿡ �´�<br>
                                   	 ������ ���� ��õ�ص帳�ϴ�.
                                </p>
                           </div>
                           <div class = "test"></div>
                        <!-- </div> -->
                        
						
						</div>
					</section>
				</div>
			</div>
		</div>
	









<!-- 
	<section>
		<div class="container">
			<div class="row">
				<div
					class="col-lg-6 d-lg-flex align-items-center justify-content-end">
					<div class="text-group text-lg-left text-sm-center">
						<h2 class="mb-4">
							���� ���� �� �ʿ� ����<br> <strong>������ �ذ��ϼ���</strong>
						</h2>

						<div id="tab-shopping">
							<table class="tabs mx-lg-0 mx-sm-auto">
								<tbody>
									<tr>
										<td><span class="tab-on">��Ʈ</span></td>
										<td><span class="tab-off">�꼥</span></td>
										<td><span class="tab-off">����</span></td>
									</tr>
								</tbody>
							</table>

							<div class="contents">
								<p>
									�򵿸� ������ ���̰� ������ �庸�⵵<br> ������ ���ϰ� �ֹ� �����մϴ�.
								</p>
								<p>
									�ݷ��������� �ʿ��� �ֿϿ�ǰ ��޵�<br> ���� �� �ʿ���� ������ �ذ�˴ϴ�.
								</p>
								<p>
									������ �¶��ο��� ������ǰ �����ϼ���?<br> �򵿿����� �ֹ� ���� ����ص����.
								</p>
							</div>
							
						</div>
					</div>
				</div>
				</section>
				<div class="col-lg-6 text-center">
					<img src="images/img_screenshot_shopping.png"
						class="img-screenshot">
				</div>
			</div>
		</div>
	



	<section></section>

	<section></section>

 -->



	<!-- <div class="title">
						<h2>���� �Ұ�</h2>
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
	</div> -->


	<div id="copyright" class="container">
		<div class="inner">
			<section class="about">
				<h4 class="major">Magna Aliquam Feugiat</h4>
				<p>Etiam finibus pharetra purus, imperdiet sagittis mauris
					hendrerit vitae.</p>
				<p>In feugiat ante elementum nulla arcu.</p>
				<p>Maecenas vulputate faucibus, convallis ligula ipsum dolor
					feugiat tempus adipiscing.</p>
				<!-- <ul class="actions">
					<li><a class="button">Learn more</a></li>
				</ul> -->
			</section>
</body>
</html>