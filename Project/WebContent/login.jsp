<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">
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

    <link rel="stylesheet" href="fonts/icomoon/style.css" />
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css" />

    <link rel="stylesheet" href="css/tiny-slider.css" />
    <link rel="stylesheet" href="css/aos.css" />
    <link rel="stylesheet" href="css/style.css" />
	<!-- JavaScript -->
	<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
	
	<!-- CSS -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
	<!-- Default theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
	<!-- Semantic UI theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
	<!-- Bootstrap theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
    
    <title>Property &mdash; Free Bootstrap 5 Website Template by Untree.co</title>
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
            <a href="index.jsp" class="logo m-0 float-start"><img id="logo" src="images/logo.png" style="width: 100px"></a>
            <ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
              <li class="active"><a href="login.jsp">Login</a></li>
              <li class="active"><a href="register.jsp">Register</a></li>
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
    <div class="hero page-inner overlay" style="background-image: url('images/hero_bg_3.jpg')">
      <div class="container">
        <div class="row justify-content-center align-items-center">
          <div class="col-lg-9 text-center mt-5">
            <h1 class="heading" data-aos="fade-up">Login</h1>
          </div>
        </div>
      </div>
    </div>
    <div class="limiter">
      <div class="container-login100">
        <div class="wrap-login100">
          <form class="login100-form validate-form">
            <span class="login100-form-title p-b-48">
              <i class="zmdi zmdi-font"></i>
            </span>
  
            <div class="mb-3">
		        <label for="exampleFormControlInput1" class="form-label">Email address</label>
		        <input
		          type="email"
		          class="form-control"
		          id="userEmail"
		          value="admin@ssafy.com"
		          placeholder="이메일을 입력하세요"
		        />
	        </div>
	        <div class="mb-3">
		        <label for="exampleFormControlInput1" class="form-label">Password</label>
		        <input
		          type="password"
		          class="form-control"
		          id="userPassword"
		          value="admin1234!"
		          placeholder="비밀번호를 압력하세요"
		        />
	        </div>
  
            <div class="container-login100-form-btn">
              <div class="wrap-login100-form-btn">
                <div class="login100-form-bgbtn"></div>
                <a class="login100-form-btn" id="btnLogin">
                  <span>Login</span>
                </a>
              </div>
            </div>
          </form>
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

    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/tiny-slider.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/navbar.js"></script>
    <script src="js/counter.js"></script>
    <script src="js/custom.js"></script>
    <script>
      window.onload = function () {
        document.querySelector("#btnLogin").onclick = function () {
          let userEmailValue = document.querySelector("#userEmail").value;
          let userPasswordValue = document.querySelector("#userPassword").value;
          console.log(userEmailValue, userPasswordValue);
          // 유효성 검사 => post 전송
          if (validate()) {
            login();
          } else {
            // 유효성 검사 실패에 대한 UI 처리
        	  alertify.error('아이디 또는 패스워드를 확인하세요. ');
          }
        };
      };
      function validate() {
        // return true / false
        let isUserEmailValid = false;
        let isUserPasswordValid = false;

        let userEmailValue = document.querySelector("#userEmail").value;
        if (userEmailValue.length > 0) {
          isUserEmailValid = true;
        }

        let userPasswordValue = document.querySelector("#userPassword").value;
        if (userPasswordValue.length > 0) {
          isUserPasswordValid = true;
        }

        if (isUserEmailValid && isUserPasswordValid) {
          return true;
        }
        return false;
      }

      async function login() {
        // validate() 가 true 를 리턴하면 수행
        // 백엔드로 전송한 데이터(파라미터) 준비
        // 비동기로 요청
        // POST
        // 로그인 성공 => 게시판 메인 페이지로 이동 ( /board/boardMain )
        // 로그인 실패 => alert

        let userEmailValue = document.querySelector("#userEmail").value;
        let userPasswordValue = document.querySelector("#userPassword").value;

        // parameter
        let urlParams = new URLSearchParams({
          userEmail: userEmailValue,
          userPassword: userPasswordValue,
        });
        // fetch options
        let fetchOptions = {
          method: "POST",
          body: urlParams,
        };
        let response = await fetch("<%=contextPath%>/login", fetchOptions);
        let data = await response.json(); // json => javascript object <= JSON.pares()
        if (data.result == "success") {
          let userId = document.querySelector("#userEmail").value.split('@')[0];
  		  let msg = "Login Success! Hello, " + userId + "!!";
  		  alert(msg);
          // login.jsp => boardMain.jsp로 페이지 이동 (새로운 페이지(html...) 요청)
          window.location.href = "<%=contextPath%>/main.jsp";
        } else if (data.result == "fail") {
          alertify.error('Login Fail! Check Your ID or PW');
        }
        // fetch(url, option)
      }
    </script>
  </body>
</html>
