<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>신고 정보 입력</title>
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
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

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
  input {
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

  input:focus {
    border-color: #007bff; /* 포커스 시 테두리 색상 */
    background-color: #fff; /* 포커스 시 배경색 */
    outline: none; /* 기본 포커스 아웃라인 제거 */
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); /* 포커스 시 그림자 */
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

<body class="defect_reports-page">

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
              <h1>신고인 및 자동차 정보 입력</h1>
              <p class="mb-0">자동차 및 건설기계 결함내역을 신청할 수 있습니다.</p>
            </div>
          </div>
        </div>
      </div>
      <nav class="breadcrumbs">
        <div class="container">
          <ol>
            <li><a href="main">차량리콜도우미</a></li>
            <li><a href="defectList">신고내역조회</a></li>
            <li class="current">결함신고</li>
          </ol>
        </div>
      </nav>
    </div><!-- End Page Title -->

    <!-- Starter Section Section -->
    <section id="starter-section" class="starter-section section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2 class="title">정보 입력</h2>
		
		<div class="widgets-container" style="text-align: center;">
		    <form action="insertDefect" method="post" class="uk-form-stacked">
	
				<hr margin:auto >
				
			<table class="uk-table uk-table-divider table-form valickTbl1"  style="margin-left:35%;margin-bottom:5%;margin-top:5%;">
			        <colgroup>
			            <col class="th">
			            <col class="td">
			        </colgroup>
			        <tbody>
			          
			        	<tr>
			                <th class="th">신고인<i class="ion-ios7-checkmark-empty"></i></th>
			                <td class="td">	
			                	<input type="text" id="name" name="reporter_name" class="uk-input uk-form-width-medium" >
			                	
			              		<input type="hidden" id="sex" name="sex" value="F">
			            		<input type="hidden" id="ipAddress" name="ipAddress" value="1.220.191.166">
			                </td>
			            </tr>
			            <tr>
			                <th class="th">생년월일 (8자리)<i class="ion-ios7-checkmark-empty"></i></th>
			                <td class="td">
			                	<input id="residentId" name="birth_date" class="uk-input uk-form-width-medium" type="text" maxlength="7" placeholder="예)9901011" >
			                </td>
			            </tr>
						<tr>
						  <th class="th">휴대폰번호<i class="ion-ios7-checkmark-empty"></i></th>
						  <td class="td phone">
						    <!-- 사용자 입력용 -->
						    <input type="text" id="cellular_display" oninput="formatAndStorePhone()" maxlength="13" class="uk-input reqed" placeholder="예: 01012345678">
						    
						    <!-- 서버 전송용 -->
						    <input type="hidden" id="mobile_number" name="mobile_number">
						  </td>
						</tr>
						
						<tr>
						  <th class="th">전화번호</th>
						  <td class="td phone">
						    <!-- 사용자 입력용 -->
						    <input type="text" id="telephone_display" oninput="formatAndStoreTelephone()" maxlength="13" class="uk-input" placeholder="예: 0212345678">
						    
						    <!-- 서버 전송용 -->
						    <input type="hidden" id="phone_number" name="phone_number">
						  </td>
						</tr>
						
<!--			            <tr>-->
<!--			                <th class="th">전화번호</th>-->
<!--			                <td class="td phone">-->
<!--								<input id="phone" type="number" name="phone_number1" pattern="\d*" min="0" maxlength="3" oninput="maxLengthCheck(this)" class="uk-input">-->
<!--								<span><input id="telephone2" type="number" name="phone_number2" pattern="\d*" min="0" maxlength="4" oninput="maxLengthCheck(this)" class="uk-input"></span>-->
<!--								<span><input id="telephone3" type="number" name="phone_number3" pattern="\d*" min="0" maxlength="4" oninput="maxLengthCheck(this)" class="uk-input"></span>-->
<!--							</td>-->
<!--			            </tr>-->
<!--			            <tr>-->
							<th class="th">주소<i class="ion-ios7-checkmark-empty"></i></th>
							<td class="td addr">
<!--								<p><input id="zipcode" name="zipcode" class="uk-input uk-form-width-medium reqed" title="주소" type="text" readonly="">-->
<!--								<button type="button" id="zipcodeBtn" onclick="javascript:daumPostcode()" class="uk-button uk-button-secondary">우편번호 찾기</button></p>-->
								<input id="addrBase" name="address" class="uk-input uk-form-width-large" type="text" placeholder="기본주소" >
<!--								<input id="addrDetail" name="address" class="uk-input uk-form-width-large" title="상세주소" type="text" placeholder="상세주소를 입력해주세요" maxlength="70">-->
							</td>
						</tr>
								<input type="hidden" id="emailAddress" name="emailAddress">
				
								<input type="hidden" name="mailYn" value="N">
						<tr>
							<th class="th">공개여부</th>
							<td class="td radio">
								<label for="podCk1"><input id="podCk1" name="visibility" class="uk-radio" type="radio" value="true" checked=""> 공개</label>
								<label for="podCk2"><input id="podCk2" name="visibility" class="uk-radio" type="radio" value="false"> 비공개</label>
							</td>
						</tr>
						
						<tr class="layerPasswd">
						    <th class="th">비밀번호<i class="ion-ios7-checkmark-empty"></i></th>
						    <td class="td">
								<div style="position: relative; display: inline-block;">
								    <input id="password" name="password" class="uk-input uk-form-width-medium reqed" style="padding-right: 30px;"  title="비밀번호" type="password">
								    <button type="button" onclick="togglePassword()" 
								            style="position: absolute; right: 10px; top: 50%; transform: translateY(-50%); background: none; border: none; padding: 0;">
								        <i id="eyeIcon" class="ion-ios-eye" style="color: black;"></i>
								    </button>
								</div>
						        <br>
						        <span id="password-msg" class="uk-text-meta" style="color: red;"></span><br>
						        <span class="uk-text-meta">
						            비밀번호는 9~15자의 영문/숫자/특수문자(~, !, @, #, $, *, (, ), =, +, _, ., |) 혼용만 가능합니다.
						        </span>
						    </td>
						</tr>
			        </tbody>
			      </table>

				<table class="uk-table uk-table-divider table-form valickTbl2" style="margin-left:35%;margin-bottom:5%;margin-top:5%;">
			    <h2>자동차 정보 입력</h2>
				<hr>
<!--			        <caption>자동차 정보 입력 폼</caption>-->
					
			        <colgroup>
			            <col class="th">
			            <col class="td">
			        </colgroup>
			        <tbody >
			            <tr class="layer0" >
							<th class="th">신고유형<i class="ion-ios7-checkmark-empty"></i></th>
							<td class="td radio"><!-- 자동차, 이륜, 건설기계 -->
							
							
							
								<label for="dCk1"><input id="dCk1" name="report_type" class="uk-radio" type="radio" value="A" checked=""> 자동차</label>
								<label for="dCk2"><input id="dCk2" name="report_type" class="uk-radio" type="radio" value="B"> 이륜</label>
							
							
							</td>
						</tr>                   
						
			        	<tr>
			                <th class="th">자동차 등록번호<i class="ion-ios7-checkmark-empty"></i></th>
			                <td class="td">
			                	<input id="vehicleNumber" name="car_registration_number" class="uk-input uk-form-width-medium" onkeydown="if(event.keyCode==13) $main.event.vehicleNumberSearch();" type="text" placeholder="예 )서울00나0000">
								
							</td>
			            </tr> 
						<tr>
	                        <th class="th">자동차 모델명<i class="ion-ios7-checkmark-empty"></i></th>
	                        <td class="td"><input id="car_model" name="car_model" class="uk-input uk-form-width-medium" type="text" ></td>
                    	</tr>
						<tr>
	                        <th class="th">자동차 제조사<i class="ion-ios7-checkmark-empty"></i></th>
	                        <td class="td"><input id="car_manufacturer" name="car_manufacturer" class="uk-input uk-form-width-medium" type="text" ></td>
                    	</tr>
						<tr>
	                        <th class="th">제조일자<i class="ion-ios7-checkmark-empty"></i></th>
<!--	                        <td class="td"><input id="car_manufacturing_date" name="car_manufacturing_date"  type="date" ></td>-->
	                        <td class="td"><input id="car_manufacturing_date" name="car_manufacturing_date" class="uk-input uk-form-width-medium" type="date" ></td>
                    	</tr>
						</table>
							
						<div class="text-center">
							<button type="button"  onclick="handleSubmit()">
<!--							<button type="button" class="btn btn-primary" onclick="handleSubmit()">-->
							  자동차 결함 신고
							</button>
						</div>		
	    
      </form>

    </div>
    </div>
  </section>
</main>

<!--<footer id="footer" class="footer accent-background">-->
<!--	<div class="text-center">-->
<!--			<button type="submit" class="btn btn-primary"  onclick="document.querySelector('form').submit(); margin-left:10px >자동차 결함 신고</button>-->
<!--			<button type="button" class="btn btn-primary" onclick="document.querySelector('form').submit();">-->
<!--			<button type="button" class="btn btn-primary" onclick="handleSubmit()">-->
<!--			  자동차 결함 신고-->
<!--			</button>-->
<!--	</div>			-->
	
<!--</footer>-->

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
<script>  //Search 버튼 클릭
$("#searchForm button").on("click",function () {
	// alert("검색");

	//키워드 입력 받을 조건
	if (searchForm.find("option:selected").val() !=""&& !searchForm.find("input[name='keyword']"&& !searchForm.find("input[name='reportDate']").val()) {
		alert("키워드를 입력하세요.");
		return false;
	}
	searchForm.attr("action","defectList").submit();
})//end of searchForm click

//type 콤보박스 변경
$("#searchForm select").on("change",function () {
	//전체일때
	if (searchForm.find("option:selected").val()=="") {
		//키워드를 널값으로 변경
		searchForm.find("input[name='keyword']").val("");
	}
});//end of searchForm click


</script>

<script src="../../vendors/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/main.js"></script>

	<script> //자동차 결함신고 버튼 클릭시 
	function handleSubmit() {
	    // 필수 입력값 체크
	    const name = document.getElementById("name").value.trim();
	    const birth = document.getElementById("residentId").value.trim();
	    const phone = document.getElementById("mobile_number").value.trim();
	    const address = document.getElementById("addrBase").value.trim();
	    const password = document.getElementById("password").value.trim();
	    const carNumber = document.getElementById("vehicleNumber").value.trim();
	    const carModel = document.getElementById("car_model").value.trim();
	    const carMaker = document.getElementById("car_manufacturer").value.trim();

	    if (!name || !birth || !phone || !address || !password || !carNumber || !carModel || !carMaker) {
	        alert("내용을 입력하셔야 합니다");
	        return;
	    }

	    // 폼 제출
	    document.querySelector("form").submit();

	    // defect_reports 페이지로 이동
	    window.location.href = "defect_reports_ok"; // URL은 실제 경로에 맞게 수정
	}
	</script>
	


<script> //비밀번호 눈태그 스크립트
function togglePassword() {
    const passwordInput = document.getElementById("password");
    const eyeIcon = document.getElementById("eyeIcon");

    if (passwordInput.type === "password") {
        passwordInput.type = "text";
        eyeIcon.classList.remove("ion-eye");
        eyeIcon.classList.add("ion-eye-disabled");
    } else {
        passwordInput.type = "password";
        eyeIcon.classList.remove("ion-eye-disabled");
        eyeIcon.classList.add("ion-eye");
    }
}
</script>

<script>
function formatAndStorePhone() {//휴대전화번호 스크립트
  const input = document.getElementById("cellular_display");
  const hidden = document.getElementById("mobile_number");

  // 숫자만 추출
  let raw = input.value.replace(/[^0-9]/g, '');

  // 하이픈 표시용 포맷
  let formatted = raw;
  if (raw.length <= 3) {
    formatted = raw;
  } else if (raw.length <= 7) {
    formatted = raw.slice(0, 3) + '-' + raw.slice(3);
  } else {
    formatted = raw.slice(0, 3) + '-' + raw.slice(3, 7) + '-' + raw.slice(7, 11);
  }

  input.value = formatted;

  // 전송할 값: 하이픈 제거하거나 포함해도 됨
  hidden.value = formatted; // or: hidden.value = raw;
}

function formatAndStoreTelephone() {//전화번호 스크립트
  const input = document.getElementById("telephone_display");
  const hidden = document.getElementById("phone_number");

  let raw = input.value.replace(/[^0-9]/g, '');

  // 지역번호가 02이면 (2자리), 그 외는 3자리로 처리
  let isSeoul = raw.startsWith('02');
  let formatted = raw;

  if (isSeoul) {
    if (raw.length <= 2) {
      formatted = raw;
    } else if (raw.length <= 6) {
      formatted = raw.slice(0, 2) + '-' + raw.slice(2);
    } else {
      formatted = raw.slice(0, 2) + '-' + raw.slice(2, 6) + '-' + raw.slice(6, 10);
    }
  } else {
    if (raw.length <= 3) {
      formatted = raw;
    } else if (raw.length <= 7) {
      formatted = raw.slice(0, 3) + '-' + raw.slice(3);
    } else {
      formatted = raw.slice(0, 3) + '-' + raw.slice(3, 7) + '-' + raw.slice(7, 11);
    }
  }

  input.value = formatted;
  hidden.value = formatted; // or: raw
  }
</script>

<script>
function validatePassword() {
  const passwordInput = document.getElementById("password");
  const msgSpan = document.getElementById("password-msg");
  const password = passwordInput.value;

  const specialChars = "~!@#$*()=+_.|";
  const escapedSpecialChars = specialChars.replace(/[-[\]/{}()*+?.\\^$|]/g, '\\$&');

  const regex = new RegExp(
    "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[" + escapedSpecialChars + "])[A-Za-z\\d" + escapedSpecialChars + "]{9,15}$"
  );

  if (password.length === 0) {
    msgSpan.textContent = "";
    passwordInput.style.borderColor = "";
    return;
  }

  if (!regex.test(password)) {
    msgSpan.textContent = "조건에 맞지 않는 비밀번호입니다.";
    passwordInput.style.borderColor = "red";
    msgSpan.style.color = "red";
  } else {
    msgSpan.textContent = "사용 가능한 비밀번호입니다.";
    passwordInput.style.borderColor = "green";
    msgSpan.style.color = "green";
  }
}
</script>



</body>
</html>
