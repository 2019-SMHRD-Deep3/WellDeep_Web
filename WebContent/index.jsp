<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html lang="ko">
<head>

<meta charset="EUC-KR">
<meta name="keywords" content="" />
<meta name="description" content="" />

<!-- �߰� -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- <link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css"> -->
<link rel="stylesheet" href="swiper.min.css">



<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900?ver=4"
	rel="stylesheet" />
<link href="default.css?ver=1" rel="stylesheet" type="text/css"
	media="all" />
<link href="fonts.css?ver=2" rel="stylesheet" type="text/css"
	media="all" />
<link href="slideshow.css?ver=3" rel="stylesheet" type="text/css"
	media="all" />





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

.img {
	width: fit-content;
	margin: 0 auto;
	text-align: center;
}

button {
	background: #1AAB8A;
	color: #fff;
	border: none;
	position: relative;
	height: 60px;
	font-size: 1.6em;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
}

button:hover {
	background: #fff;
}

button:before, button:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: beige;
	transition: 400ms ease all;
}

button:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}

button:hover:before, button:hover:after {
	width: 100%;
	transition: 800ms ease all;
}

@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
	font-weight: normal;
}

@font-face {
	font-family: 'GmarketSansLight';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
</style>




<script type="text/javascript" src="js/slideshow.js"></script>
</head>
<body>

	<div id=alltest style="width: 100%; align: center;">
		<%
			MemberDTO info = (MemberDTO) session.getAttribute("info");
		%>
		<div style="width: 100%; align: center;">
			<div id="header-wrapper">
				<div
					style="float: right; width: 310px; text-align: right; margin-top: 10px; margin-right: 120px;">
					<%
						if (info == null) {
					%>
					<form action="join.jsp">
						<button type="submit" class="btn purple"
							style="font-family: 'GmarketSansMedium';">�α��� / ȸ������</button>
					</form>
					<%
						} else {
					%>
					<form action="LogoutService.do" style='display: inline;'>
						<h3
							style="color: #fff; margin-bottom: 10px; font-family: 'GmarketSansMedium';"><%=info.getP_id()%>
							�� ȯ���մϴ�.
						</h3>
						<button type="submit" class="btn purple"
							style="font-family: 'GmarketSansMedium';">�α׾ƿ�</button>
					</form>
					<form action="update.jsp" style='display: inline;'>
						<button type="submit" class="btn purple"
							style="font-family: 'GmarketSansMedium';">��������</button>
					</form>
					<%
						}
					%>
				</div>

				<div id="header" class="container" style="margin-top: -9px;">
					<p class="img">
						<a href="index.jsp"><img src="img/cctv.png" class="img-logo"></a>
					</p>
					<div class="title-group text-center">
						<h1 style="margin-top: 12px; font-family: 'GmarketSansMedium';">
							<font size="30px" color="beige"> ������ �θ��� �Ҹ�, <br> <strong>�����Ҷ�
									'MomSee' �ϼ���.</strong></font> <br> <br>
						</h1>
						<div class="download-btns" style="margin-top: -34px;">
							<h1>
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
							</h1>
						</div>
						<span><font color="beige"
							style="font-family: 'GmarketSansMedium';">Design by <a
								href="index.jsp" rel="nofollow"
								style="color: beige; font-family: 'GmarketSansMedium';">WellDeep</a></font></span>
					</div>
					<div id="triangle-up"></div>
				</div>

			</div>
		</div>





		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide" style="width: fit-content;">
					<!-- <img src="img/onepage.jpg" style = "width: 35rem; padding: 150px; margin-left: 150px;"> -->
					<div id="wrapper">
						<div id="featured-wrapper">
							<div class="extra2 container">
								<section>
									<div class="text-group"
										style="display: table; height: 300px; text-align: center;">
										<div class="test"></div>

										<div
											style="display: table-cell; vertical-align: middle; width: 900px;">
											<img src="img/onepage11.jpg"
												style="width: 30rem; padding-right: 0px; padding-top: 0px;">
										</div>

										<div
											style="padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height: 515px;">

											<h2
												style="display: inline; font-family: 'GmarketSansMedium';">

												<strong>'MomSee'��</strong><br>


											</h2>

											<p
												style="display: inline; font-size: 20px; font-family: 'GmarketSansLight';">


												�Կ��Ӹ� �ƴ϶�<br> ���޻�Ȳ �� ������ ��û��<br> Ȥ�� �� ���� ��� �� ���˸�
												�������ִ�<br> ����Ʈ �����Դϴ�.<br>
											</p>
										</div>
										<div class="test"></div>

									</div>
								</section>
							</div>
						</div>
					</div>

				</div>



				<div class="swiper-slide">
					<div id="wrapper">
						<div id="featured-wrapper">
							<div class="extra2 container">
								<section>
									<div class="text-group"
										style="display: table; height: 300px; text-align: center;">
										<div class="test"></div>

										<div
											style="display: table-cell; vertical-align: middle; width: 900px;">
											<img src="img/onepage22.jpg"
												style="width: 30rem; padding-right: 0px; padding-top: 0px;">
										</div>

										<div
											style="padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height: 515px;">

											<h2
												style="display: inline; font-family: 'GmarketSansMedium';">

												<strong>'MomSee' ����</strong><br>


											</h2>

											<p
												style="display: inline; font-size: 20px; font-family: 'GmarketSansLight';">


												������ ��û�� �� ���ų�<br> ��ȣ�ڿ� ������ ���� �� <br> ����� �� �ֽ��ϴ�.
												<br>������ ������ �������� �ൿ�� �ν��Ͽ� <br>������ ���� ���� ��ġ�� �����ϸ�<br>
												�˸��� ���۵˴ϴ�.
											</p>
										</div>
										<div class="test"></div>

									</div>
								</section>
							</div>
						</div>
					</div>
				</div>






				<div class="swiper-slide">
					<div id="wrapper">
						<div id="featured-wrapper">
							<div class="extra2 container">
								<section>
									<div class="text-group"
										style="display: table; height: 300px; text-align: center;">
										<div class="test"></div>

										<div
											style="display: table-cell; vertical-align: middle; width: 900px;">
											<img src="img/onepage33.jpg"
												style="width: 30rem; padding-right: 0px; padding-top: 0px;">
										</div>

										<div
											style="padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height: 515px;">

											<h2
												style="display: inline; font-family: 'GmarketSansMedium';">




											</h2>

											<p
												style="display: inline; font-size: 20px; font-family: 'GmarketSansLight';">


												�д� ��Ȳ�� �߻����� �� ��ȣ�� ���� <br> ���ø����̼ǿ� �˸��� ���۵Ǿ� <br>
												�˸��� ���� ��ȣ�ڴ� ��Ȳ�� Ȯ���Ͽ�<br> ������ ��ó�� �� �ֽ��ϴ�.
											</p>
										</div>
										<div class="test"></div>

									</div>
								</section>
							</div>
						</div>
					</div>
				</div>

				...

			</div>



			<!-- If we need pagination -->

			<div class="swiper-pagination"></div>

			<!-- If we need navigation buttons -->
			<div class="swiper-button-prev" style="padding-left: 60px;"></div>
			<div class="swiper-button-next" style="padding-right: 60px;"></div>

			<div class="swiper-scrollbar"></div>
		</div>

		<script src="https://unpkg.com/swiper/js/swiper.min.js"></script>












		<!-- <div class="swiper-container">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<img src="img/appone.PNG">
			</div>
			<div class="swiper-slide">
				<img src="img/apptwo.PNG">
			</div>
			<div class="swiper-slide">
				<img src="img/appthree.PNG">
			</div>

			...

		</div>
		If we need pagination
		<div class="swiper-pagination"></div>

		If we need navigation buttons
		<div class="swiper-button-prev" style="padding-left: 60px;"></div>
		<div class="swiper-button-next" style="padding-right: 60px;"></div>

		<div class="swiper-scrollbar"></div>
	</div>

	<script src="https://unpkg.com/swiper/js/swiper.min.js"></script> -->






		<div id="wrapper" style="width: 100%; align: center;">
			<div id="featured-wrapper">
				<div class="extra2 container">
					<section>
						<div class="text-group"
							style="display: table; height: 300px; text-align: center; background: floralwhite;">
							<div class="test"></div>

							<div
								style="display: table-cell; vertical-align: middle; width: 900px;">
								<img src="img/appmain.png"
									style="width: 18rem; padding-right: 0px; padding-top: 0px;">
							</div>

							<div
								style="padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height: 515px;">

								<h2 style="display: inline; font-family: 'GmarketSansMedium';">

									<strong>�ֿ��� �Ұ�</strong><br>


								</h2>

								<p
									style="display: inline; font-size: 20px; font-family: 'GmarketSansLight';">


									1. �ǽð� ���� Ȯ�� �� �˸� ����<br> 2. ���� & ���� ��ȭ �� ����<br> 3.
									�����Ȳ �� �ﰢ ����<br> 4. ���� �� ����<br> �پ��� ���񽺸� ���������� <br>
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
							style="display: table; height: 300px; text-align: center;">
							<div class="test"></div>
							<div
								style="display: table-cell; vertical-align: middle; width: 900px">
								<img src="img/alarm.png"
									style="width: 18rem; padding-right: 0px; padding-top: 0px;">
							</div>

							<div
								style="padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height: 515px;">

								<h2 style="display: inline; font-family: 'GmarketSansMedium';">

									<strong>�������� �̿��� <br> �츮 ���� ��Ŵ��
									</strong><br>
								</h2>
								<p
									style="display: inline; font-size: 20px; font-family: 'GmarketSansLight';">
									������ �������� ������ ��<br> �溸�� ���ÿ� �˸�.<br>

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
							style="display: table; height: 300px; background: floralwhite; text-align: center;">
							<div class="test"></div>
							<div
								style="display: table-cell; vertical-align: middle; width: 900px">
								<img src="img/childmain.png"
									style="width: 18rem; padding-right: 0px; padding-top: 0px;">
							</div>

							<div
								style="padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height: 515px;">

								<h2 style="display: inline; font-family: 'GmarketSansMedium';">

									<strong>�ڳ� ���� �Է�</strong><br>
								</h2>
								<p
									style="display: inline; font-size: 20px; font-family: 'GmarketSansLight';">
									�츮 ������ ������ �Է��ϰ�<br> ���ϰ� �̿��غ�����
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
							style="display: table; height: 300px; text-align: center; opacity: 0.5">
							<div class="test"></div>
							<div
								style="display: table-cell; vertical-align: middle; width: 800px">
								<img src="img/accs.png"
									style="width: 20rem; padding-right: 0px; padding-top: 0px;">
							</div>

							<div
								style="padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height: 515px; font-family: 'GmarketSansMedium';">
								<h4 style="font-family: 'GmarketSansMedium'; margin: 10px;">���
									����</h4>
								<h2 style="display: inline; font-family: 'GmarketSansMedium';">
									<strong>����, ��𼭵�</strong><br>
								</h2>
								<p
									style="display: inline; font-size: 20px; font-family: 'GmarketSansLight';">
									CCTV�Ӹ� �ƴ϶�<br> MomSee�׼������� ���� <br> �츮���̸� �����ּ���.<br>

								</p>
							</div>
							<div class="test"></div>

						</div>
					</section>
				</div>
			</div>
		</div>

		<div class="inner"
			style="background: #3D3D3D; color: rgb(245, 245, 220); padding-top: 10px; padding-bottom: 10px;">
			<section
				style="text-align: center; font-family: 'GmarketSansMedium';">
				<h4 class="major" style="color: #FFC000;">����Ʈ �̵�� ���� ���߿�</h4>
				<p>������ ��� ������ ������ ���� sw������ ����.</p>
				<p>���� CGI���� ������4 ���� �۾Ϸ�60.</p>
				<p>Design by Team Well-Deep.</p>
			</section>
		</div>
	</div>













	<script>
		var mySwiper = new Swiper('.swiper-container', {
			// �����̵带 ��ư���� ������ �� �ֽ��ϴ�.
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},

			// ���� �������� ��Ÿ���� ���� ����ϴ�. Ŭ���ϸ� �̵��մϴ�.
			pagination : {
				el : '.swiper-pagination',
				type : 'bullets',
			},

			/* // ���� �������� ��Ÿ���� ��ũ���� ����ϴ�. Ŭ���ϸ� �̵��մϴ�.
			  scrollbar: {
			    el: '.swiper-scrollbar',
			    draggable: true,
			  }, */

			// 3�ʸ��� �ڵ����� �����̵尡 �Ѿ�ϴ�. 1�� = 1000
			autoplay : {
				delay : 100000,
			},
		});
	</script>
</body>
</html>