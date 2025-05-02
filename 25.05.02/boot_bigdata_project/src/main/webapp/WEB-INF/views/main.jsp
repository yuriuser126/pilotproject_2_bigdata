<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>차량 리콜 도우미</title>
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
</head>

<body class="starter-page-page">

  <header id="header" class="header fixed-top">

    <div class="topbar d-flex align-items-center">
      <div class="container d-flex justify-content-center justify-content-md-between">
        <div class="contact-info d-flex align-items-center">
          <i class="bi bi-envelope d-flex align-items-center"><a href="mailto:contact@example.com">contact@example.com</a></i>
          <i class="bi bi-phone d-flex align-items-center ms-4"><span>+051 1544-9970</span></i>
        </div>
        <div class="social-links d-none d-md-flex align-items-center">
          <a href="#" class="twitter"><i class="bi bi-twitter-x"></i></a>
          <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
          <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
          <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
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

	<!-- Hero Section -->
	<section id="hero" class="hero section accent-background">

	  <div class="container position-relative" data-aos="fade-up" data-aos-delay="100">
	    <div class="row gy-5 justify-content-between">
	      <div class="col-lg-6 order-2 order-lg-1 d-flex flex-column justify-content-center">
	        <h2><span>내 차는 안전할까요?</span><span class="accent"></span></h2>
	        <p>KH리콜안전공단은 차량 리콜 정보를 쉽고 빠르게 확인할 수 있도록 도와드립니다.<br>
			차종, 제조사, 연도별로 리콜 현황을 한눈에 확인하고, 안전한 운행을 위한 첫걸음을 지금 시작하세요! </p>
			  
	        <div class="d-flex">
	          <a href="#about" class="btn-get-started">Get Started</a>
	          <a href="https://youtu.be/RYZh64Pb0o8?si=aRby9qTL0c9CDKN7" class="glightbox btn-watch-video d-flex align-items-center"><i class="bi bi-play-circle"></i><span>Watch Video</span></a>
	        </div>
	      </div>
	      <div class="col-lg-5 order-1 order-lg-2">
	        <img src="assets/img/image1.png" class="img-fluid" alt="">
	      </div>
	    </div>
	  </div>

	  <div class="icon-boxes position-relative" data-aos="fade-up" data-aos-delay="200">
	    <div class="container position-relative">
	      <div class="row gy-4 mt-5">

	        <div class="col-xl-3 col-md-6">
	          <div class="icon-box">
	            <div class="icon"><i class="bi bi-easel"></i></div>
	            <h4 class="title"><a href="#about" class="stretched-link">페이지 소개</a></h4>
	          </div>
	        </div><!--End Icon Box -->

	        <div class="col-xl-3 col-md-6">
	          <div class="icon-box">
	            <div class="icon"><i class="bi bi-geo-alt"></i></div>
	            <h4 class="title"><a href="#stats" class="stretched-link">서비스 만족도</a></h4>
	          </div>
	        </div><!--End Icon Box -->
			
	        <div class="col-xl-3 col-md-6">
	          <div class="icon-box">
	            <div class="icon"><i class="bi bi-gem"></i></div>
	            <h4 class="title"><a href="#services" class="stretched-link">지원 서비스</a></h4>
	          </div>
	        </div><!--End Icon Box -->


	        <div class="col-xl-3 col-md-6">
	          <div class="icon-box">
	            <div class="icon"><i class="bi bi-command"></i></div>
	            <h4 class="title"><a href="#faq" class="stretched-link">FAQ</a></h4>
	          </div>
	        </div><!--End Icon Box -->

	      </div>
	    </div>
	  </div>

	</section><!-- /Hero Section -->

	<!-- About Section -->
	<section id="about" class="about section">

	  <!-- Section Title -->
	  <div class="container section-title" data-aos="fade-up">
	    <h2>About Us<br></h2>
	    <p>KH리콜안전공단은 리콜 정보를 보다 쉽게 전달하여 여러분의 안전한 운전을 응원합니다.</p>
	  </div><!-- End Section Title -->

	  <div class="container">

	    <div class="row gy-4">
	      <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
	        <h3>KH리콜안전공단은 차량 리콜 정보를 쉽고 빠르게 확인할 수 있도록 도와드립니다.</h3>
	        <img src="assets/img/about.jpg" class="img-fluid rounded-4 mb-4" alt="">
	        <p>차종, 제조사, 연도별로 리콜 현황을 한눈에 확인하고, 안전한 운행을 위한 첫걸음을 지금 시작하세요.자동차는 일상생활에서 떼려야 뗄 수 없는 중요한 교통수단이지만, 제조상의 결함이나 품질 문제로 인해 안전을 위협하는 일이 발생할 수 있습니다. 리콜은 이러한 문제를 사전에 발견하고 신속히 조치하여 사고를 예방하는 중요한 수단입니다. 하지만 많은 운전자들이 리콜 정보를 제때 확인하지 못해 불이익을 겪거나 위험에 노출되는 경우가 많습니다.</p>
	        <p>KH리콜안전공단은 국민의 생명과 재산을 보호하기 위해 자동차 리콜 정보를 체계적으로 제공하는 리콜 전문 정보 플랫폼입니다. KH리콜안전공단은 차량 소유자와 운전자가 리콜 정보를 쉽고 빠르게 확인하고, 필요한 조치를 취할 수 있도록 돕는 것을 목표로 합니다.</p>
	      </div>
	      <div class="col-lg-6" data-aos="fade-up" data-aos-delay="250">
	        <div class="content ps-0 ps-lg-5">
	          <p class="fst-italic">
				리콜안전공단을 선택해야 하는 이유?
	          </p>
	          <ul>
	            <li><i class="bi bi-check-circle-fill"></i> <span>손쉽게 제조사, 차종, 리콜 연도 등 다양한 조건으로 실시간 리콜 현황 조회</span></li>
	            <li><i class="bi bi-check-circle-fill"></i> <span>연도별·제조사별 통계를 통해 리콜 추이를 한눈에 파악</span></li>
	            <li><i class="bi bi-check-circle-fill"></i> <span>각 리콜의 사유와 조치 내용까지 상세하게 제공하여, 사용자가 보다 정확한 판단을 내릴 수 있도록 지원</span></li>
	          </ul>
	          <p>
	            KH리콜안전공단과 함께라면 자동차 리콜도 더 이상 어렵지 않습니다. 지금 바로 내 차량의 리콜 여부를 확인해보세요!
	          </p>

	          <div class="position-relative mt-4">
	            <img src="assets/img/image2.png" class="img-fluid rounded-4" alt="">
	            <a href="https://youtu.be/KvIFRczRflY?si=f6u8AJZc4V8NzeN9" class="glightbox pulsating-play-btn"></a>
				<p class="fst-italic">영상 출처 :https://youtu.be/KvIFRczRflY?si=f6u8AJZc4V8NzeN9 </p>
	          </div>
	        </div>
	      </div>
	    </div>

	  </div>

	</section><!-- /About Section -->
	

	<!-- Clients Section -->
	<section id="clients" class="clients section">

	  <div class="container">

	    <div class="swiper init-swiper">
	      <script type="application/json" class="swiper-config">
	        {
	          "loop": true,
	          "speed": 600,
	          "autoplay": {
	            "delay": 5000
	          },
	          "slidesPerView": "auto",
	          "pagination": {
	            "el": ".swiper-pagination",
	            "type": "bullets",
	            "clickable": true
	          },
	          "breakpoints": {
	            "320": {
	              "slidesPerView": 2,
	              "spaceBetween": 40
	            },
	            "480": {
	              "slidesPerView": 3,
	              "spaceBetween": 60
	            },
	            "640": {
	              "slidesPerView": 4,
	              "spaceBetween": 80
	            },
	            "992": {
	              "slidesPerView": 6,
	              "spaceBetween": 120
	            }
	          }
	        }
	      </script>
	      <div class="swiper-wrapper align-items-center">
	        <div class="swiper-slide"><img src="assets/img/clients/image3.png" class="img-fluid" alt=""></div>
	        <div class="swiper-slide"><img src="assets/img/clients/image4.png" class="img-fluid" alt=""></div>
	        <div class="swiper-slide"><img src="assets/img/clients/image5.png" class="img-fluid" alt=""></div>
	        <div class="swiper-slide"><img src="assets/img/clients/image6.png" class="img-fluid" alt=""></div>
	        <div class="swiper-slide"><img src="assets/img/clients/image7.png" class="img-fluid" alt=""></div>
	        <div class="swiper-slide"><img src="assets/img/clients/image8.png" class="img-fluid" alt=""></div>
	        <div class="swiper-slide"><img src="assets/img/clients/image9.png" class="img-fluid" alt=""></div>
	        <div class="swiper-slide"><img src="assets/img/clients/image10.png" class="img-fluid" alt=""></div>
	      </div>
	    </div>

	  </div>

	</section><!-- /Clients Section -->


	<!-- Stats Section -->
	<section id="stats" class="stats section">

	  <div class="container" data-aos="fade-up" data-aos-delay="100">

	    <div class="row gy-4 align-items-center">

	      <div class="col-lg-5">
	        <img src="assets/img/stats-img.svg" alt="" class="img-fluid">
	      </div>

	      <div class="col-lg-7">

	        <div class="row gy-4">

	          <div class="col-lg-6">
	            <div class="stats-item d-flex">
	              <i class="bi bi-emoji-smile flex-shrink-0"></i>
	              <div>
	                <span data-purecounter-start="0" data-purecounter-end="232" data-purecounter-duration="1" class="purecounter"></span>
	                <p><strong>KH리콜안전공단</strong> <span>의 서비스에 만족한 고객님들</span></p>
	              </div>
	            </div>
	          </div><!-- End Stats Item -->

	          <div class="col-lg-6">
	            <div class="stats-item d-flex">
	              <i class="bi bi-journal-richtext flex-shrink-0"></i>
	              <div>
	                <span data-purecounter-start="0" data-purecounter-end="521" data-purecounter-duration="1" class="purecounter"></span>
	                <p><strong>성공적으로</strong> <span>진행한 프로젝트 수</span></p>
	              </div>
	            </div>
	          </div><!-- End Stats Item -->

	          <div class="col-lg-6">
	            <div class="stats-item d-flex">
	              <i class="bi bi-headset flex-shrink-0"></i>
	              <div>
	                <span data-purecounter-start="0" data-purecounter-end="1453" data-purecounter-duration="1" class="purecounter"></span>
	                <p><strong>고객님들께 서비스를 </strong> <span>진행한 총 시간</span></p>
	              </div>
	            </div>
	          </div><!-- End Stats Item -->

	          <div class="col-lg-6">
	            <div class="stats-item d-flex">
	              <i class="bi bi-people flex-shrink-0"></i>
	              <div>
	                <span data-purecounter-start="0" data-purecounter-end="4" data-purecounter-duration="1" class="purecounter"></span>
	                <p><strong>열심히 일하는</strong> <span>KH리콜안전공단의 직원들</span></p>
	              </div>
	            </div>
	          </div><!-- End Stats Item -->

	        </div>

	      </div>

	    </div>

	  </div>

	</section><!-- /Stats Section -->
	

	<!-- Services Section -->
	<section id="services" class="services section">

	  <!-- Section Title -->
	  <div class="container section-title" data-aos="fade-up">
	    <h2>지원 서비스</h2>
	    <p>KH리콜안전공단은 국민의 생명과 재산을 보호하기 위해 자동차 리콜 정보를 체계적으로 제공하는 리콜 전문 정보 플랫폼입니다!</p>
	  </div><!-- End Section Title -->

	  <div class="container">

	    <div class="row gy-4">

	      <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
	        <div class="service-item  position-relative">
	          <div class="icon">
	            <i class="bi bi-activity"></i>
	          </div>
	          <h3>리콜 정보 확인하기</h3>
	          <p>최근 국내에서 발생한 자동차 리콜 정보를 한눈에 확인할 수 있는 리콜 현황 표입니다. 제조사별로 리콜 대상 차량의 모델명, 제조 기간, 리콜 사유 및 진행 방식 등을 상세히 안내하며, 리콜 유형(자발적/강제)과 문의 가능한 대표 연락처도 함께 제공됩니다.</p>
	          <a href="recall_list" class="readmore stretched-link">Read more <i class="bi bi-arrow-right"></i></a>
	        </div>
	      </div><!-- End Service Item -->

	      <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="200">
	        <div class="service-item position-relative">
	          <div class="icon">
	            <i class="bi bi-broadcast"></i>
	          </div>
	          <h3>결함 신고 내역 조회</h3>
	          <p>신고된 자동차 및 건설기계 결함내역을 조회할 수 있습니다. 최근 신고가 된 차량들은 무엇이 있는지, 제조사가 어디인지, 모델명이 무엇인지 바로 확인하세요! </p>
	          <a href="defectList" class="readmore stretched-link">Read more <i class="bi bi-arrow-right"></i></a>
	        </div>
	      </div><!-- End Service Item -->

	      <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="300">
	        <div class="service-item position-relative">
	          <div class="icon">
	            <i class="bi bi-easel"></i>
	          </div>
	          <h3>결함 신고하기</h3>
	          <p>지금 자신의 차량에 문제가 있는 것 같나요? 정보를 입력하고 바로 결함내역 검진을 받아보세요! </p>
	          <a href="defect_reports" class="readmore stretched-link">Read more <i class="bi bi-arrow-right"></i></a>
	        </div>
	      </div><!-- End Service Item -->

	      <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="400">
	        <div class="service-item position-relative">
	          <div class="icon">
	            <i class="bi bi-bounding-box-circles"></i>
	          </div>
	          <h3>리콜 통계 확인하기 </h3>
	          <p>시각화된 그래프로 한눈에 리콜 통계를 확인하세요! 원하는 기간을 설정할 수 있습니다.</p>
	          <a href="recall_statics_year" class="readmore stretched-link">Read more <i class="bi bi-arrow-right"></i></a>
	        </div>
	      </div><!-- End Service Item -->

	      <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="500">
	        <div class="service-item position-relative">
	          <div class="icon">
	            <i class="bi bi-calendar4-week"></i>
	          </div>
	          <h3>공지사항</h3>
	          <p>서비스가 계속해서 지원되고 있는지 확인하세요! </p>
	          <a href="announce" class="readmore stretched-link">Read more <i class="bi bi-arrow-right"></i></a>
	        </div>
	      </div><!-- End Service Item -->

	      <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="600">
	        <div class="service-item position-relative">
	          <div class="icon">
	            <i class="bi bi-chat-square-text"></i>
	          </div>
	          <h3>FAQ</h3>
	          <p>리콜 및 결함에 대해 궁금한 점이 있다면, 바로 질문하세요! </p>
	          <a href="notice" class="readmore stretched-link">Read more <i class="bi bi-arrow-right"></i></a>
	        </div>
	      </div><!-- End Service Item -->

	    </div>

	  </div>

	</section><!-- /Services Section -->


	<!-- Faq Section -->
	<section id="faq" class="faq section">
		
		<!-- SectionTitle -->
		  <div class="container section-title" data-aos="fade-up">
		    <h2>FAQ</h2>
		    <p>궁금한 점이 있다면 바로 확인하세요! </p>
		  </div><!--  End Section Title -->
		  
	  <div class="container">

	    <div class="row gy-4">

	      <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
	        <div class="content px-xl-5">
	          <h3><span>Frequently Asked </span><strong>Questions</strong></h3>
	        </div>
	      </div>

	      <div class="col-lg-8" data-aos="fade-up" data-aos-delay="200">

	        <div class="faq-container">
				<c:forEach var="item" items="${noticeList}" varStatus="status" begin="0" end="4">
				    <div class="faq-item">
				        <form id="actionForm" action="notice" method="get">
				            <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
				            <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
				        </form>
				        <h3><img src="assets/img/qna.png" alt="">&nbsp<span>${item.question}</span></h3>
				        <div class="faq-content">
				            <p>${item.answer}</p>
				        </div>
				        <i class="faq-toggle bi bi-chevron-right"></i>
				    </div><!-- End Faq item-->
				</c:forEach>

	          </div><!-- End Faq item-->

	        </div>

	      </div>
	    </div>

	  </div>

	</section><!-- /Faq Section -->


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
			<p class="fst-italic">영상 출처 :https://youtu.be/RYZh64Pb0o8?si=aRby9qTL0c9CDKN7 </p>
			<p class="fst-italic">이미지 출처 :https://busan.khacademy.co.kr/ </p>
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

</body>

</html>