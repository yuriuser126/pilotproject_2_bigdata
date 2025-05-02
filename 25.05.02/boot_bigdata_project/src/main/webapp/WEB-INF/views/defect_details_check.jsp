<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Starter Page - Impact Bootstrap Template</title>
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
  /* 테이블 기본 스타일 정리 */
  .table-form {
    width: 60%;
    margin: 2em auto;
    border-collapse: separate;
    border-spacing: 0 10px; /* row 간 여백 */
  }

  /* 제목 셀 정렬 및 너비 */
  .table-form th.th {
    text-align: left;
    vertical-align: middle;
    width: 150px;
    padding-right: 10px;
    font-weight: 500;
  }

  /* 입력 칸 여백 및 라인 정리 */
  .table-form td.td {
    vertical-align: middle;
    padding-bottom: 5px;
  }

  /* 아이콘 옆 공백 제거 */
  .table-form i[class^="ion-"] {
    margin-left: 5px;
    font-size: 16px;
    vertical-align: middle;
    color: #999;
  }

  /* 비밀번호 눈 아이콘 버튼 위치 보정 */
  .layerPasswd input[type="password"] {
    padding-right: 35px; /* 아이콘 공간 확보 */
  }

  .layerPasswd button {
    position: absolute;
    right: 10px;
    top: 50%;
    transform: translateY(-50%);
    background: none;
    border: none;
    padding: 0;
    cursor: pointer;
  }

  .layerPasswd button i {
    font-size: 18px;
    color: #333;
  }

  /* 라디오 버튼 간격 정리 */
  .table-form td.radio label {
    margin-right: 20px;
  }
  /* 모바일 대응 (반응형) */
  @media screen and (max-width: 768px) {
    .table-form {
      width: 90%;
    }

    .table-form th.th {
      display: block;
      margin-bottom: 5px;
    }

    .table-form td.td {
      display: block;
    }
  }
  button{
  background-color: #00796b;
  color: white;
  border: none;
  padding: 0PX 16PX;
  cursor: pointer;
  }
  button:hover{
  background-color: #1a5739;
  
  }
  input, select, button{
  height: 38PX;
  line-height: 38PX;
  vertical-align: middle;
  box-sizing: border-box;
  }
  input,select,textarea {
    height: 38px;
    line-height: 38px;
    vertical-align: middle;
    box-sizing: border-box;
    padding: 0 10px; /* 텍스트와 테두리 간의 간격을 좀 더 여유롭게 */
    border: 1px solid #ccc; /* 미세한 테두리 */
    border-radius: 5px; /* 둥근 모서리 */
    background-color: #f9f9f9; /* 배경색 */
    font-size: 14px; /* 텍스트 크기 */
    color: #333; /* 텍스트 색상 */
  font-family: 'Helvetica Neue', Arial, sans-serif; /* 깔끔한 폰트 */
  font-weight: 400; /* 적당한 폰트 두께 */
  text-align: left; /* 텍스트 정렬 */
    transition: all 0.3s ease; /* 애니메이션 효과 */
  }



    input:focus, textarea:focus {
      border-color: #007bff;
      background-color: #fff;
      outline: none;
      box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    }



  </style>
  <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
  <script>
    document.addEventListener("DOMContentLoaded", function () {
      const elements = document.querySelectorAll("input, textarea");

      elements.forEach(el => {
        const updateClass = () => {
          if (el.value.trim() === "") {
            el.classList.add("empty");
          } else {
            el.classList.remove("empty");
          }
        };

        el.addEventListener("input", updateClass);
        updateClass(); // 초기화 시에도 체크
      });
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
	            <h1>신고내역조회</h1>
	            <p class="mb-0">신고된 자동차 및 건설기계 결함내역을 조회할 수 있습니다.</p>
	          </div>
	        </div>
	      </div>
	    </div>
	    <nav class="breadcrumbs">
	      <div class="container">
	        <ol>
	          <li><a href="main">차량리콜도우미</a></li>
	          <li><a href="defect_reports">결함신고</a></li>
	          <li class="current">리콜 정보 검수</li>
	        </ol>
	      </div>
	    </nav>
	  </div><!-- End Page Title -->

	  <!-- Starter Section Section -->
	  <section id="starter-section" class="starter-section section">

	    <!-- Section Title -->
	    <div class="container section-title" data-aos="fade-up">
	      <h2 class="title">신고 내역</h2>
		
		<div class="widgets-container">
		    <form action="insertDefectDetails" method="post" class="uk-form-stacked">
	
				<hr margin:auto >
			<table class="uk-table uk-table-divider table-form valickTbl1"  style="margin-left:30%;margin-bottom:10%">
			        <colgroup>
			            <col class="th">
			            <col class="td">
			        </colgroup>
			        <tbody>
						
			        	<tr>
			                <th class="th">아이디<i class="ion-ios7-checkmark-empty"></i></th>
			                <td class="td">	
								
			                	<input type="text" id="id" name="id" class="uk-input uk-form-width-medium"   placeholder="아이디를 입력하세요">
			                	
								<button type="button"  onclick="searchDefect()" >
										검색
								</button>
								
								
			                </td>
			            </tr>
						
						
			            <tr>
			                <th class="th">리콜정보<i class="ion-ios7-checkmark-empty"></i></th>
			                <td class="td">
								<select id="recallinfo" name="product_name1" class="uk-select">
									<option value="볼보">볼보</option>
									<option value="마세라티">마세라티</option>
									<option value="벤츠">벤츠</option>
					 				<option value="볼보트럭">볼보트럭</option>
									<option value="현대자동차">현대자동차</option>
								</select>
			                	<input id="product_name" name="product_name" class="uk-input uk-form-width-medium" type="text" maxlength="7" placeholder="예)계기판 관련 리콜" >
			                </td>
			            </tr>
						
						<tr>
	                        <th class="th">자동차 제조사<i class="ion-ios7-checkmark-empty"></i></th>
	                        <td class="td">
								<input id="manufacturer" name="manufacturer" class="uk-input uk-form-width-medium" type="text" placeholder="예)볼보 자동차 코리아" readonly >
							</td>
	                	</tr>
									
						<tr>
						    <th class="th">기간<i class="ion-ios7-checkmark-empty"></i></th>
						    <td class="td">
						        <input id="start_date" class="uk-input uk-form-width-small" type="date" onchange="updatePeriodDisplay()">
						        ~
						        <input id="end_date" class="uk-input uk-form-width-small" type="date" onchange="updatePeriodDisplay()">
						        <span id="period_display" style="margin-left: 10px; font-weight: bold;"></span>
						        <input type="hidden" name="manufacturing_period" id="manufacturing_period">
						    </td>
						</tr>
						
						<tr>
		                    <th class="th">자동차 모델명<i class="ion-ios7-checkmark-empty"></i></th>
		                    <td class="td">
								<input id="model_name" name="model_name" class="uk-input uk-form-width-medium" type="text" >
							</td>
		            	</tr>
						
						<tr>
		                    <th class="th">리콜 형식<i class="ion-ios7-checkmark-empty"></i></th>
<!--		                    <td class="td"><input id="car_model" name="car_model" class="uk-input uk-form-width-medium" type="text" value="자발적리콜" readonly="" ></td>-->
		                    <td class="td"><input id="recall_type" name="recall_type" class="uk-input uk-form-width-medium" type="text" value="자발적리콜" readonly="" ></td>
		            	</tr>
						
						<tr>
						    <th class="th">회사(대표번호)<i class="ion-ios7-checkmark-empty"></i></th>
						    <td class="td">
						        <select id="company_select" name="contact_info1" class="uk-select" onchange="updateContactInfo()">
						            <option value="">회사 선택</option>
						            <option value="[볼보자동차]">[볼보자동차]</option>
						            <option value="[마세라티]">[마세라티]</option>
									<option value="[벤츠코리아]">[벤츠코리아]</option>
					 				<option value="[볼보트럭]">[볼보트럭]</option>
									<option value="[현대자동차]">[현대자동차]</option>
						        </select>
								<input id="contact_info" name="contact_info" type="hidden">
						        <input id="contact_number" name="contact_info" class="uk-input uk-form-width-medium" type="text" maxlength="7" placeholder="예)볼보자동차 대표번호 1588-1777" oninput="updateContactInfo()">
								
						    </td>
						</tr>
						
						<tr>
		                    <th class="th">상세 결함<i class="ion-ios7-checkmark-empty"></i></th>
		                    <td class="td">
<!--								<input id="additional_info" name="additional_info" class="uk-input uk-form-width-medium" type="text"  >-->
								<textarea id="additional_info" name="additional_info" class="uk-input uk-form-width-medium" rows="4" style="resize: vertical;"></textarea>
							</td>
		            	</tr>

			</table>
				<div class="text-center">
					<button type="button"  onclick="document.querySelector('form').submit();">
						검수 완료
					</button>
				</div>
      </form>
    </div>
  </section>
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


<script src="../../vendors/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/main.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>//id값 조회해서 맞는 값 가져오기
	function searchDefect() {
	    var id = $('#id').val(); // input에서 ID 값 가져오기

	    if (!id) {
	        alert("아이디를 입력해 주세요.");
	        return;
	    }

	    $.ajax({
	        url: '/api/selectDefectreport',  // API 호출
	        type: 'GET',
	        data: { id: id },  // id 값 전달
	        success: function(data) {
	            if (data) {
	                // 데이터가 있으면 input 필드에 값 채워넣기
	                $('#id').val(data.id);  // ID 필드 값
	                $('#manufacturer').val(data.car_manufacturer);  // 제조사 필드 값
	                $('#model_name').val(data.car_model);  // 모델명 필드 값
	            } else {
	                alert("해당 ID의 데이터를 찾을 수 없습니다.");
	            }
	        },
	        error: function() {
	            alert("데이터를 가져오는 중 오류가 발생했습니다.");
	        }
	    });
	}	
	
</script>

<script>
	// 날짜를 yyMMdd 형식으로 변환하는 함수
	function formatDateToYYMMDD(dateStr) {
	    const date = new Date(dateStr);
	    const year = String(date.getFullYear()).slice(2);  // 연도의 뒤 두 자리
	    const month = String(date.getMonth() + 1).padStart(2, '0');  // 두 자리 월
	    const day = String(date.getDate()).padStart(2, '0');  // 두 자리 일
		
		console.log("Date object:", date);
		console.log("Year:", date.getFullYear());
		console.log("Month:", date.getMonth() + 1);  // 0-based
		console.log("Day:", date.getDate());
		console.log("total:", year+month+day);
		

	    return year+month+day;  // 'yyMMdd' 형식 반환
	}

	function updatePeriodDisplay() {
	    const start = document.getElementById('start_date').value;
	    const end = document.getElementById('end_date').value;
	    const display = document.getElementById('period_display');
	    const hiddenInput = document.getElementById('manufacturing_period');  // 히든 필드
		
		// start_date와 end_date 값이 제대로 입력되었는지 로그로 확인
		console.log("start_date:", start);
		console.log("end_date:", end);

	    // 날짜 값이 모두 입력되었을 때만 period 값을 설정
	    if (start && end) {
	        const startFormatted = formatDateToYYMMDD(start);  // 시작일 포맷팅
	        const endFormatted = formatDateToYYMMDD(end);      // 종료일 포맷팅

	        const period = startFormatted+"~"+endFormatted;  // 기간 결합
<!--	        display.textContent = period;  // 화면에 출력-->
	        hiddenInput.value = period;    // 히든 필드에 값 설정
			
			// 포맷팅된 기간 확인 로그
			     console.log("formatted period:", period);
	    } else {
	        display.textContent = '';  // 기간이 없으면 표시 안 함
	        hiddenInput.value = '';    // 히든 필드 초기화
	    }
	}

	// 날짜 입력 변경 시마다 실행
	document.getElementById('start_date').addEventListener('change', updatePeriodDisplay);
	document.getElementById('end_date').addEventListener('change', updatePeriodDisplay);

	// 폼 제출 전에 값 강제로 다시 한 번 세팅
	document.querySelector('form').addEventListener('submit', function(e) {
	    updatePeriodDisplay();  // 폼 제출 전에 히든 값 세팅
	    console.log("제출 시 히든값:", document.getElementById('manufacturing_period').value);  // 제출 시 히든 값 확인
	});
</script>

<script>// 마지막 날짜 클릭 스크립트
  document.getElementById('start_date').addEventListener('change', () => {
    const endDateInput = document.getElementById('end_date');
    endDateInput.classList.add('blink-highlight');
    setTimeout(() => {
      endDateInput.classList.remove('blink-highlight');
    }, 1000);
  });
</script>

<script>// 회사(대표번호) 스크립트 
    const contactNumbers = {
        "[볼보자동차]": "1588-1777",
        "[마세라티]": "1600-0036",
        "[벤츠코리아]": "080-001-1886",
        "[볼보트럭]": "080-038-1000",
        "[현대자동차]": "080-600-6000",

    };

    document.getElementById('company_select').addEventListener('change', function() {
        const selectedCompany = this.value;
        const numberInput = document.getElementById('contact_number');
		const hiddenInput = document.getElementById('contact_info');

        if (contactNumbers[selectedCompany]) {
            numberInput.value = contactNumbers[selectedCompany];
        } else {
            numberInput.value = ''; // 선택 안 됐거나 없는 값이면 초기화
        }
		
		hiddenInput.value = selectedCompany +" 대표번호 : "+ numberInput.value;
		//최종 값넘길때의 형태
    });
</script>








</body>
</html>
