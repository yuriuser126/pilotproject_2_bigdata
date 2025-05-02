<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>차량리콜도우미</title>

<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Index - Impact Bootstrap Template</title>
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
<!--  <script src="${pageContext.request.contextPath}/js/jquery.js"></script>-->
	<style>
		  
		.faqann-form {
		  background-color: var(--surface-color);
		  box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
		  width: 100%;
		  height: 100%;
		  padding: 30px;
		}

		.faqann-form input[type=text],
		.faqann-form input[type=email],
		.faqann-form textarea {
		  font-size: 14px;
		  padding: 10px 15px;
		  box-shadow: none;
		  border-radius: 0;
		  color: var(--default-color);
		  background-color: var(--surface-color);
		  border-color: color-mix(in srgb, var(--default-color), transparent 80%);
		}

		.faqann-form input[type=text]:focus,
		.faqann-form input[type=email]:focus,
		.faqann-form textarea:focus {
		  border-color: var(--accent-color);
		}

		.faqann-form input[type=text]::placeholder,
		.faqann-form input[type=email]::placeholder,
		.faqann-form textarea::placeholder {
		  color: color-mix(in srgb, var(--default-color), transparent 70%);
		}

		.faqann-form button[type=submit] {
		  color: var(--contrast-color);
		  background: var(--accent-color);
		  border: 0;
		  padding: 10px 30px;
		  transition: 0.4s;
		  border-radius: 50px;
		}

		.faqann-form button[type=submit]:hover {
		  background: color-mix(in srgb, var(--accent-color), transparent 20%);
		}

		.faqann-form .error-message {
		  display: none;
		  background: #df1529;
		  color: #ffffff;
		  text-align: left;
		  padding: 15px;
		  margin-bottom: 24px;
		  font-weight: 600;
		}

		.faqann-form .sent-message {
		  display: none;
		  color: #ffffff;
		  background: #059652;
		  text-align: center;
		  padding: 15px;
		  margin-bottom: 24px;
		  font-weight: 600;
		}

		.faqann-form .loading {
		  display: none;
		  background: var(--surface-color);
		  text-align: center;
		  padding: 15px;
		  margin-bottom: 24px;
		}

		.faqann-form .loading:before {
		  content: "";
		  display: inline-block;
		  border-radius: 50%;
		  width: 24px;
		  height: 24px;
		  margin: 0 10px -6px 0;
		  border: 3px solid var(--accent-color);
		  border-top-color: var(--surface-color);
		  animation: faqann-form-loading 1s linear infinite;
		}

		@keyframes faqann-form-loading {
		  0% {
		    transform: rotate(0deg);
		  }

		  100% {
		    transform: rotate(360deg);
		  }
		}

	</style>
  <script>
    document.addEventListener('DOMContentLoaded', () => {
      const now = new Date();
      const formatted = now.toLocaleString('ko-KR'); // 예: 2025. 5. 1. 오전 11:09:00
      document.getElementById('currentTime').value = formatted;
    });
  </script>
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
  <!-- Contact Section -->
      <section id="contact" class="contact section">

        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
      	<br><br><br><br><br>
          <h2>공지사항</h2>
          <p>우리 회사의 새로운 소식과 중요한 공지</p>
        </div><!-- End Section Title -->

        <div class="container" data-aos="fade-up" data-aos-delay="100">

          <div class="row gx-lg-0 gy-4">

            <div class="col-lg-4">
              <div class="info-container d-flex flex-column align-items-center justify-content-center">
                <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="200">
                  <i class="bi bi-geo-alt flex-shrink-0"></i>
                  <div>
                    <h3>주소</h3>
                    <p>부산광역시 부산진구 삼비빌딩 2F, 12F</p>
                  </div>
                </div><!-- End Info Item -->

                <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="300">
                  <i class="bi bi-telephone flex-shrink-0"></i>
                  <div>
                    <h3>전화번호</h3>
                    <p>+051 1544-9970</p>
                  </div>
                </div><!-- End Info Item -->

                <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="400">
                  <i class="bi bi-envelope flex-shrink-0"></i>
                  <div>
                    <h3>이메일</h3>
                    <p>tjswls0147@naver.com</p>
                  </div>
                </div><!-- End Info Item -->

                <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="500">
                  <i class="bi bi-clock flex-shrink-0"></i>
                  <div>
                    <h3>오픈 시간</h3>
                    <p>Mon-Fri: 9:00 - 18:00</p>
                  </div>
                </div><!-- End Info Item -->

              </div>

            </div>

            <div class="col-lg-8">
              <form method="post" action="announce_write_ok" class="faqann-form" data-aos="fade" data-aos-delay="100">
                <div class="row gy-4">

                  <div class="col-md-6">
                    <input type="text" name="" class="form-control" placeholder="관리자ID">
                  </div>

                  <div class="col-md-6 ">
                    <input type="email" class="form-control" id="currentTime" readonly name="" placeholder="" required="">
                  </div>

                  <div class="col-md-12">
                    <input type="text" class="form-control" name="title" placeholder="제목" required="">
                  </div>

                  <div class="col-md-12">
                    <textarea class="form-control" name="content" rows="8" placeholder="내용" required=""></textarea>
                  </div>

                  <div class="col-md-12 text-center">
                    <div class="loading">Loading</div>
                    <div class="error-message"></div>
                    <div class="sent-message">Your message has been sent. Thank you!</div>

                    <button type="submit">작성하기</button>
                  </div>

                </div>
              </form>
            </div><!-- End Contact Form -->

          </div>

        </div>

      </section><!-- /Contact Section -->

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

  </body>

  </html>
