<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>차량리콜도우미</title>
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
  .table-custom {
    width: 100%;
    border-collapse: collapse;
    font-size: 14px;
    text-align: center;
    background-color: #ffffff;
  }

  .table-custom th, .table-custom td {
    padding: 12px 15px;
    border: 1px solid color-mix(in srgb, var(--default-color), transparent 60%);
  }

  .table-custom th {
    background-color: color-mix(in srgb, var(--default-color), transparent 80%);
    font-weight: bold;
    color: #333;
  }

  .table-custom tr:nth-child(even) {
    background-color: #f9f9f9;
  }

  .table-custom tr:hover {
    background-color: #f1f1f1;
  }
  </style>
  <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
  <script>
	  $(document).on("click", ".paginate_button a", function(e) {
		e.preventDefault(); 
		    const page = $(this).attr("href"); 
		    $("#actionForm").find("input[name='pageNum']").val(page);
		    console.log("@#페이징>" + page);
		    $("#actionForm").submit(); 
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

    <!-- Page Title -->
    <div class="page-title">
      <div class="heading">
        <div class="container">
          <div class="row d-flex justify-content-center text-center">
            <div class="col-lg-8">
              <h1>전국 리콜 현황</h1>
              <p class="mb-0">
				최근 국내에서 발생한 자동차 리콜 정보를 한눈에 확인할 수 있는 리콜 현황 표입니다.
			  	제조사별로 리콜 대상 차량의 모델명, 제조 기간, 리콜 사유 및 진행 방식 등을 상세히 안내하며, 리콜 유형(자발적/강제)과 문의 가능한 대표 연락처도 함께 제공됩니다.
			  </p>
            </div>
          </div>
        </div>
      </div>
      <nav class="breadcrumbs">
        <div class="container">
          <ol>
			<li><a href="main">차량리콜도우미</a></li>
            <li class="current">리콜정보</li>
          </ol>
        </div>
      </nav>
    </div><!-- End Page Title -->

    <!-- Starter Section Section -->
    <section id="starter-section" class="starter-section section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2 class="title">전국 리콜 현황 전체보기</h2>
		
		<div class="widgets-container">
			
			<!--리콜정보 출력-->
			<form id="actionForm" action="recall_list" method="get">
			    <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
			    <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
			</form>
			<table class="table-custom">
			    <tr>
			        <th>제품명</th>
			        <th>제조사</th>
			        <th>제조기간</th>
			        <th>기타정보</th>
			        <th>모델명</th>
			        <th>리콜유형</th>
			        <th>연락처</th>
			    </tr>
			    <c:forEach var="item" items="${recall_list}">
			        <tr>
			            <td>${item.product_name}</td>
			            <td>${item.manufacturer}</td>
			            <td>${item.manufacturing_period}</td>
			            <td>${item.additional_info}</td>
			            <td>${item.model_name}</td>
			            <td>${item.recall_type}</td>
			            <td>${item.contact_info}</td>
			        </tr>
			    </c:forEach>
			</table>
		</div>
		

		<!-- Blog Pagination Section -->
		<section id="blog-pagination" class="blog-pagination section">

		  <div class="container">
		    <div class="d-flex justify-content-center">
			    <div class="div_page">
			      <ul>
					<c:if test="${pageMaker.prev}">
			        	<li class="paginate_button"><a href="${pageMaker.startPage -1}"><i class="bi bi-chevron-left"></i></a></li>
					</c:if>
					
					<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
						<li class="paginate_button">
					        <a href="${num}" 
					           class="${pageMaker.cri.pageNum eq num ? 'active' : ''}">
					           ${num}
					        </a>
					    </li>
<!--			        <li><a href="#" class="active">2</a></li>-->
					</c:forEach>		
					<c:if test="${pageMaker.next}">
			        	<li class="paginate_button"><a href="${pageMaker.endPage +1}"><i class="bi bi-chevron-right"></i></a></li>
					</c:if>
			      </ul>
			  </div>
		    </div>
		  </div>
		  <form id="actionForm" action="recall_list" method="get">
		  		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
		  		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
		  		<!-- 페이징 검색 시 페이지번호를 클릭할때 필요한 파라미터 -->
		  		<input type="hidden" name="type" value="${pageMaker.cri.type}">
		  		<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
		  	</form>
		  
		</section><!-- /Blog Pagination Section -->
		
      </div><!-- End Section Title -->

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
<!--
  
  <script>
  	//페이지 번호 처리 
  	$(".paginate_button a").on("click",function(e){
  		e.preventDefault();
  		console.log("페이징 클릭입니다 :> href속성=>"+$(this).attr("href"));

		const num = $(this).data('page'); // 클릭된 a의 data-page 값 읽기
		    $.ajax({
		        url: "/proxy?cntntsId=0301&pageNo=" + num,
		        type: "GET",
		        success: function(response) {
		            console.log(response);
		            // $("#contentArea").html(response);  // 필요하면 이렇게 결과를 넣을 수 있음
		        },
		        error: function(xhr, status, error) {
		            console.error("AJAX Error:", error);
		        }
		    });
  	}); //end of paginate_button click
	</script>
  	-->
</body>

</html>