<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>신고내역조회</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Impact
  * Template URL: https://bootstrapmade.com/impact-bootstrap-business-website-template/
  * Updated: Aug 07 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <style>
  .pwdButton button{
	background-color: #00796b;
					color: white;
					border: none;
					padding: 0PX 16PX;
					cursor: pointer;
				  font-size: large;
	
  }
  .pwdButton button :hover{
				background-color: #1a5739;
  }
.pwdButtonC button{
  text-align: center;
  margin-top: 30px;
  margin-left: 40px;
}

  .pwdButtonC button{
	background-color: #00796b;
	color: white;
	border: none;
	padding: 0PX 16PX;
	cursor: pointer;
  font-size: large;
  }
  .pwdButtonC button:hover{
	background-color: #1a5739;
  }
  .pwdButtonC button, .pwdButton button{
  	height: 30PX;
  	line-height: 38PX;
  	vertical-align: middle;
  	box-sizing: border-box;
	text-align: center;

    }
  </style>
</head>

<header id="header" class="header fixed-top">

  <div class="topbar d-flex align-items-center">
    <div class="container d-flex justify-content-center justify-content-md-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope d-flex align-items-center"><a href="mailto:contact@example.com">contact@example.com</a></i>
        <i class="bi bi-phone d-flex align-items-center ms-4"><span>+051 1544-9970</span></i>
      </div>
      <div class="social-links d-none d-md-flex align-items-center">
        <a href="https://x.com/home" class="twitter"><i class="bi bi-twitter-x"></i></a>
        <a href="https://www.facebook.com" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="https://www.instagram.com" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="https://www.chatgpt.com" class="linkedin"><i class="bi bi-linkedin"></i></a>
      </div>
    </div>
  </div><!-- End Top Bar -->

  <div class="branding d-flex align-items-cente">

    <div class="container position-relative d-flex align-items-center justify-content-between">
      <a href="main" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
         <img src="assets/img/hmm.png" alt=""> 
        <h1 class="sitename">차량 리콜 도우미</h1>
        <span>.</span>
      </a>

      <nav id="navmenu" class="navmenu">
        <ul>
          <li><a href="recall_list">리콜정보</a></li>
		<li class="dropdown"><a href="#"><span>결함신고</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
            <ul>
              <li><a href="defect_reports">결함신고</a></li>
              <li><a href="defectList">신고내역조회</a></li>
            </ul>
          </li>
		<li class="dropdown"><a href="#"><span>리콜센터</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
            <ul>
              <li><a href="announce">공지사항</a></li>
              <li><a href="notice">FAQ</a></li>
            </ul>
          </li>
          <li><a href="recall_statics_year">리콜통계</a></li>
		<li class="dropdown"><a href="#"><span>관리자</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
            <ul>
              <li><a href="defect_details_check">리콜정보검수</a></li>
              <li><a href="announce_write">공지사항작성</a></li>
            </ul>
          </li>
		
        </ul>
        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>

    </div>

  </div>

</header>

  <main class="main">

    <!-- Page Title -->
    <div class="page-title">
      <div class="heading">
        <div class="container">
          <div class="row d-flex justify-content-center text-center">
            <div class="col-lg-8">
              <h1>신고내역조회</h1>
              <p class="mb-0">신고된 자동차 및 건설기계 결함내역을 조회할 수 있습니다.</p>
            </div>
          </div>
        </div>
      </div>
      <nav class="breadcrumbs">
        <div class="container">
          <ol>
            <li><a href="index.html">홈</a></li>
            <li class="current">신고내역조회</li>
          </ol>
        </div>
      </nav>
    </div><!-- End Page Title -->

    <!-- Starter Section Section -->
    <section id="starter-section" class="starter-section section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2 class="title">비밀번호 확인</h2>
		
		<div class="widgets-container">
				

			<div>				
						    <div>
						    
						    	<div >
						    		<p>결함신고시 등록한 비밀번호를 입력하세요.</p>
									<br>
						    		<div class="pwdButton">
						    			<input type="password" id="popPw" placeholder="비밀번호">
										<button type="button" onclick="checkPassword()">확인</button>	
						    		</div>			    				            
						    	</div>
						    	<div class="pwdButtonC">
						    		
							        <button onclick="location.href='defectList'">돌아가기</button>
							    </div>
						    </div>
						</div>
						
    </section><!-- /Starter Section Section -->


     

	
  </main>

  <footer id="footer" class="footer accent-background">

      <div class="container footer-top">
        <div class="row gy-4">
          <div class="col-lg-5 col-md-12 footer-about">
            <a href="main" class="logo d-flex align-items-center">
              <span class="sitename">차량 리콜 도우미</span>
            </a>
            <p>우)445-871 경기도 화성시 송산면 삼존로 200 한국교통안전공단 자동차안전연구원 Tel : 080-357-2500 Fax : 031-355-0027
              본 홈페이지에 게시된 이메일 주소가 자동 수집되는 것을 거부하며, 이를 위반 시 정보통신망법에 의해 처벌됨을 유념하시기 바랍니다.</p>
            <div class="social-links d-flex mt-4">
              <a href="https://x.com/home"><i class="bi bi-twitter-x"></i></a>
              <a href="https://www.facebook.com"><i class="bi bi-facebook"></i></a>
              <a href="https://www.instagram.com"><i class="bi bi-instagram"></i></a>
              <a href="https://www.chatgpt.com"><i class="bi bi-linkedin"></i></a>
            </div>
          </div>
  				   
          <div class="col-lg-2 col-6 footer-links">
            <h4>센터 메뉴</h4>
            <ul>
              <li><a href="defect_reports">결함신고</a></li>
              <li><a href="defectList">신고내역조회</a></li>
              <li><a href="announce">공지사항</a></li>
              <li><a href="notice">FAQ</a></li>
            </ul>
          </div>

          <div class="col-lg-2 col-6 footer-links">
            <h4>리콜 센터</h4>
            <ul>
              <li><a href="recall_list">리콜정보</a></li>
              <li><a href="recall_statics_year">연도통계</a></li>
              <li><a href="recall_statics_month">달 통계</a></li>
              <li><a href="notice_write">질문하기</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
            <h4>Contact Us</h4>
            <p>부산광역시 부산진구 중앙대로 672 2</p>
            <p>삼비빌딩</p>
            <p>2F, 12F</p>
            <p class="mt-4"><strong>Phone:</strong> <span>010-1234-5678</span></p>
            <p><strong>Email:</strong> <span>contact@example.com</span></p>
          </div>
        </div>
      </div>

      <div class="container copyright text-center mt-4">
        <p>© <span>KH 정보교육원</span> <strong class="px-1 sitename">KH리콜안전공단</strong> <span>자동차안전연구원 </span></p>
        <div class="credits">
          <!-- All the links in the footer should remain intact. -->
          <!-- You can delete the links only if you've purchased the pro version. -->
          <!-- Licensing information: https://bootstrapmade.com/license/ -->
          <!-- Purchase the pro version with working PHP/AJAX contact form: [buy-url] -->
          Designed by <a href="https://www.naver.com/">team KH리콜안전공단</a>
        </div>
      </div>

    </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>
 
<script>
	function checkPassword(){
		const pw = document.getElementById("popPw").value;
		const id = new URLSearchParams(window.location.search).get("id");
		console.log("전송할 데이터 pw", pw);
		console.log("전송할 데이터 id", id);

		if(!id){
			alert("아이디 값이 없음");
			return;
		}if(!pw){
			alert("비밀번호를 입력해주세요.");
			return;
			}fetch("/checkPassword", {
			method:"POST",
			headers:{
				"Content-Type":"application/json"
			},
			body: JSON.stringify({
				id: id,
				password: pw
			})
		
			
		})
		.then(res => res.text())
		.then(result =>{
			console.log("서버응답결과", result)
			if(result === "success"){
				location.href = 'defect_modify?id='+id;
			}else{
				alert("비밀번호가 일치하지 않습니다.");
			}
		});
	}
</script>
  


</body>

</html>