<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- /*
* Template Name: Property
* Template Author: Untree.co
* Template URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!DOCTYPE html>
<html lang="kor">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="author" content="Untree.co" />
    <link rel="shortcut icon" href="favicon.png" />

    <meta name="description" content="" />
    <meta name="keywords" content="bootstrap, bootstrap5" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap"
      rel="stylesheet"
    />

    <link rel="stylesheet" href="../fonts/icomoon/style.css" />
    <link rel="stylesheet" href="../fonts/flaticon/font/flaticon.css" />

    <link rel="stylesheet" href="../css/tiny-slider.css" />
    <link rel="stylesheet" href="../css/aos.css" />
    <link rel="stylesheet" href="../css/style.css" />

    <title>Property &mdash; Free Bootstrap 5 Website Template by Untree.co</title>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5e85aecd7b4d8854b9e640548762b532"></script>
  </head>
  <body>
    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close">
          <span class="icofont-close js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>

    <nav class="site-nav">
      <div class="container">
        <div class="menu-bg-wrap">
          <div class="site-navigation">
            <a href="../main.jsp" class="logo m-0 float-start"><img id="logo" src="../images/logo.png" style="width: 100px"></a>
            <ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
              <li class="active"><a href="login.jsp">Manage</a></li>
              <li class="active"><a href="login.jsp">Logout</a></li>
              <li><a href="#">Notice</a></li>
            </ul>

            <a
              href="#"
              class="burger light me-auto float-end mt-1 site-menu-toggle js-menu-toggle d-inline-block d-lg-none"
              data-toggle="collapse"
              data-target="#main-navbar"
            >
              <span></span>
            </a>
          </div>
        </div>
      </div>
    </nav>

    <div class="hero page-inner overlay" style="background-image: url('../images/hero_bg_3.jpg')">
      <div class="container">
        <div class="row justify-content-center align-items-center">
          <div class="col-lg-9 text-center mt-5">
            <h1 class="heading" data-aos="fade-up">숭인동 한양립스</h1>

            <nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
              <ol class="breadcrumb text-center justify-content-center">
                <li class="breadcrumb-item active text-white-50" aria-current="page">
                  서울특별시 동대문구 114 43
                </li>
              </ol>
            </nav>
          </div>
        </div>
      </div>
    </div>

    <div class="section">
      <div class="container" id="map">
        <div class="row justify-content-between">
          <div class="col-lg-7">
            <div class="img-property-slide-wrap">
              <img src="../images/img_6.jpg" alt="Image" class="img-fluid" />
            </div>
            <div class="blank"></div>
            <h5 class="heading text-primary"><strong>숭인동 한양립스</strong></h5>
            <p class="meta">서울특별시 동대문구 114 43</p>
            <p class="text-black-50">
              거래 금액: 11,900만원
            </p>
            <p class="text-black-50">
              면적: 12.78
            </p>
            <p class="text-black-50">
              매매 신고일: 2022.02.25
            </p>
          </div>
        </div>
      </div>
    </div>

    <div class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <div class="widget">
              <h3>Contact</h3>
              <address>부산광역시 강서구 녹산산업중로 333</address>
              <ul class="list-unstyled links">
                <li><a href="tel://11234567890">+82(010)-5448-2069</a></li>
                <li>
                  <a href="mailto:indl1670@gmail.com">indl1670@gmail.com</a>
                </li>
              </ul>
            </div>
            <!-- /.widget -->
          </div>
        <div class="row mt-5">
          <div class="col-12 text-center">
            <p>
              Copyright &copy;
              <script>
                document.write(new Date().getFullYear());
              </script>
              . All Rights Reserved.
            </p>
          </div>
        </div>
      </div>
      <!-- /.container -->
    </div>
    <!-- /.site-footer -->

    <!-- Preloader -->
    <div id="overlayer"></div>
    <div class="loader">
      <div class="spinner-border" role="status">
        <span class="visually-hidden">Loading...</span>
      </div>
    </div>

    <script src="../js/bootstrap.bundle.min.js"></script>
    <script src="../js/tiny-slider.js"></script>
    <script src="../js/aos.js"></script>
    <script src="../js/navbar.js"></script>
    <script src="../js/counter.js"></script>
    <script src="../js/custom.js"></script>
    <script>
      var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
      var mapOption = { 
          center: new kakao.maps.LatLng(37.5725, 127.0236), // 지도의 중심좌표
          level: 3 // 지도의 확대 레벨
      };

      var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

      // 마커가 표시될 위치입니다 
      var markerPosition  = new kakao.maps.LatLng(37.5725, 127.0236); 

      // 마커를 생성합니다
      var marker = new kakao.maps.Marker({
          position: markerPosition,
          clickable: true,
      });

      // 마커가 지도 위에 표시되도록 설정합니다
      marker.setMap(map);
      
      // 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
      var iwContent = `<div style="padding: 5px;">
        <div class="wishButton">
          <p class="btnText">WISH?</p>
          <div class="btnTwo">
            <p class="btnText2">YES!</p>
          </div>
        </div>`, // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
      iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

      // 인포윈도우를 생성합니다
      var infowindow = new kakao.maps.InfoWindow({
        content : iwContent,
        removable : iwRemoveable
      });

      // 마커에 클릭이벤트를 등록합니다
      kakao.maps.event.addListener(marker, 'click', function() {
        // 마커 위에 인포윈도우를 표시합니다
        infowindow.open(map, marker);  
      });

      document.getElementById('#resetBtn').onclick = function() {
        var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
        var mapOption = { 
            center: new kakao.maps.LatLng(37.5752, 127.004), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };

        var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

        // 마커가 표시될 위치입니다 
        var markerPosition  = new kakao.maps.LatLng(37.5752, 127.004); 

        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            position: markerPosition,
            clickable: true,
        });

        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
      }
    </script>
  </body>
</html>
