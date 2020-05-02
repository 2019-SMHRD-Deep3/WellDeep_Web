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
<link href="slideshow.css" rel="stylesheet" type="text/css" media="all" />

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
	width: 38%;
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
	color: black;
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
</style>


<script type="text/javascript" src="js/slideshow.js"></script>
</head>
<body>
	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
	<div id="header-wrapper">
		<div
			style="float: right; width: 310px; text-align: right; margin-top: 10px; margin-right: 120px;">
			<%
				if (info == null) {
			%>
			<form action="join.jsp">
				<button type="submit" class="btn purple">�α��� / ȸ������</button>
			</form>
			<%
				} else {
			%>
			<form action="LogoutService.do" style='display: inline;'>
				<h3 style="color: #fff;"><%=info.getP_id()%>
					�� ȯ���մϴ�.
				</h3>
				<button type="submit" class="btn purple">�α׾ƿ�</button>
			</form>
			<form action="update.jsp" style='display: inline;'>
				<button type="submit" class="btn purple">��������</button>
			</form>
			<%
				}
			%>
		</div>

		<div id="header" class="container">
			<p class="img">
				<a href="index.jsp"><img src="img/cctv.png" class="img-logo"></a>
			</p>
			<div class="title-group text-center">
				<h1>
					<font size="30px" color="beige"> ������ �θ��� �Ҹ�, <br> <strong>�����Ҷ�
							MomSee�ϼ���.</strong></font> <br> <br>
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
				<span><font color="beige">Design by <a
						href="index.jsp" rel="nofollow" style="color: beige;">WellDeep</a></font></span>
			</div>
			<div id="triangle-up"></div>
		</div>

	</div>

	<div id="wrapper" style="width: 1903px; height: 604px;">
		<div id="featured-wrapper">
			<div class="extra2 container">
				<section>

					<div class="text-group"
						style="display: table; height: 300px; text-align: center;">
						<div id="slider-wrap">
							<ul id="slider">
								<li>
									<div></div> <img src="img/test1.png"
									>
								</li>

								<li>
									<div></div> <img src="img/test2.png">
								</li>

								<li>
									<div></div> <img src="img/test3.png">
								</li>


							</ul>

							<div class="slider-btns" id="next">
								<span>��</span>
							</div>
							<div class="slider-btns" id="previous">
								<span>��</span>
							</div>

							<div id="slider-pagination-wrap">
								<ul>
								</ul>
							</div>
						</div>
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
								�ǽð� ����Ȯ�� �� �˸�����<br> ����&���� ��ȭ �� ���� <br> �����Ȳ�� �ﰢ����<br>
								����������
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
						style="display: table; height: 300px; background: floralwhite; text-align: center;">
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
							style="padding-top: 0px; font-size: 30px; width: 800px; display: table-cell; vertical-align: middle; height: 515px;">
							<h4>��ÿ���</h4>
							<h2 style="display: inline;">
								<strong>������, ��𼭵�</strong><br>
							</h2>
							<p style="display: inline; font-size: 20px;">
								CCTV�Ӹ��ƴ϶�<br> MomSee�׼������� ���� <br> �츮���̸� �����ּ���.<br>

							</p>
						</div>
						<div class="test"></div>

					</div>
				</section>
			</div>
		</div>
	</div>

	<div class="inner">
		<section style="text-align: center; color: rgb(245, 245, 220);"
			class="about">
			<h4 class="major">����Ʈ �̵�� ���� ���߿�</h4>
			<p>������ ��� ������ ������ ���� sw������ ����.</p>
			<p>Team Well-Deep.</p>
			<p>���� CGI���� ������4 ���� �۾Ϸ�60.</p>
		</section>
	</div>


	<script>
		//slide-wrap
		var slideWrapper = document.getElementById('slider-wrap');
		//current slideIndexition
		var slideIndex = 0;
		//items
		var slides = document.querySelectorAll('#slider-wrap ul li');
		//number of slides
		var totalSlides = slides.length;
		//get the slide width
		var sliderWidth = slideWrapper.clientWidth;
		//set width of items
		slides.forEach(function(element) {
			element.style.width = sliderWidth + 'px';
		})
		//set width to be 'x' times the number of slides
		var slider = document.querySelector('#slider-wrap ul#slider');
		slider.style.width = sliderWidth * totalSlides + 'px';

		// next, prev
		var nextBtn = document.getElementById('next');
		var prevBtn = document.getElementById('previous');
		nextBtn.addEventListener('click', function() {
			plusSlides(1);
		});
		prevBtn.addEventListener('click', function() {
			plusSlides(-1);
		});

		// hover
		slideWrapper.addEventListener('mouseover', function() {
			this.classList.add('active');
			clearInterval(autoSlider);
		});
		slideWrapper.addEventListener('mouseleave', function() {
			this.classList.remove('active');
			autoSlider = setInterval(function() {
				plusSlides(1);
			}, 3000);
		});

		function plusSlides(n) {
			showSlides(slideIndex += n);
		}

		function currentSlides(n) {
			showSlides(slideIndex = n);
		}

		function showSlides(n) {
			slideIndex = n;
			if (slideIndex == -1) {
				slideIndex = totalSlides - 1;
			} else if (slideIndex === totalSlides) {
				slideIndex = 0;
			}

			slider.style.left = -(sliderWidth * slideIndex) + 'px';
			pagination();
		}

		//pagination
		slides.forEach(function() {
			var li = document.createElement('li');
			document.querySelector('#slider-pagination-wrap ul')
					.appendChild(li);
		})

		function pagination() {
			var dots = document
					.querySelectorAll('#slider-pagination-wrap ul li');
			dots.forEach(function(element) {
				element.classList.remove('active');
			});
			dots[slideIndex].classList.add('active');
		}

		pagination();
		var autoSlider = setInterval(function() {
			plusSlides(1);
		}, 3000);
	</script>
</body>
</html>