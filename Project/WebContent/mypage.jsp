<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dto.*"%>
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
            <a href="main.jsp" class="logo m-0 float-start"><img id="logo" src="images/logo.png" style="width: 100px"></a>
            <div style="display: inline-block; padding-top: 13px; padding-left: 10px; color: #fff;">Hello, <%= ((UserDto)session.getAttribute("userDto")).getUserState() %></div>
            <ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
              <li class="active"><a href="mypage.jsp">MyPage</a></li>
              <li class="active"><a href="index.jsp">Logout</a></li>
              <li class="active"><a href="notice.jsp">Notice</a></li>
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
            <h1 class="heading" data-aos="fade-up">My Page</h1>
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
  
            <form novalidate>
            	<div class="mb-3">
		          <label for="userEmail" class="form-label">E-mail</label>
		          <input type="text" class="form-control" id="userEmail" placeholder="E-mail" readonly value="<%= ((UserDto)session.getAttribute("userDto")).getUserEmail() %>"/>
		        </div>
		        <div class="mb-3">
		          <label for="userName" class="form-label">User Name</label>
		          <input type="text" class="form-control" id="userName" placeholder="Name" />
		          <div class="valid-feedback">Valid</div>
		          <div class="invalid-feedback">Enter Correct Name.</div>
		        </div>
		        <div class="mb-3">
		          <label for="userPassword" class="form-label">Password</label>
		          <input
		            type="password"
		            class="form-control"
		            id="userPassword"
		            placeholder="PassWord"
		          />
		          <div class="valid-feedback">Valid</div>
		          <div class="invalid-feedback">Least 1 Symbol, English, Number! At least 8 in length</div>
		        </div>
		        <div class="mb-3">
		          <label for="userPassword2" class="form-label">Password Confirm</label>
		          <input
		            type="password"
		            class="form-control"
		            id="userPassword2"
		            placeholder="Confirm"
		          />
		          <div class="valid-feedback">Valid</div>
		          <div class="invalid-feedback">Inconsistency</div>
		        </div>
		      </form>
  
            <div class="container-login100-form-btn">
              <div class="wrap-login100-form-btn">
                <div class="login100-form-bgbtn"></div>
                <a class="login100-form-btn" id="btnModify">
                  <span>Modify</span>
                </a><br>
                <a class="login100-form-btn" id="btnWithdraw">
                  <span>WITHDRAW</span>
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
        document.querySelector("#userName").focus();

        // 유효성 검사 처리
        document.querySelector("#userName").onblur = function () {
          if (validateUserName(this.value)) {
            // 유효
            this.classList.remove("is-invalid");
            this.classList.add("is-valid");
          } else {
            // 유효 X
            this.classList.remove("is-valid");
            this.classList.add("is-invalid");
          }
        };

        document.querySelector("#userPassword").onblur = function () {
          if (validatePassword(this.value)) {
            // 유효
            this.classList.remove("is-invalid");
            this.classList.add("is-valid");
          } else {
            // 유효 X
            this.classList.remove("is-valid");
            this.classList.add("is-invalid");
          }
        };

        document.querySelector("#userPassword2").onblur = function () {
          if (validatePassword2(this.value)) {
            // 유효
            this.classList.remove("is-invalid");
            this.classList.add("is-valid");
          } else {
            // 유효 X
            this.classList.remove("is-valid");
            this.classList.add("is-invalid");
          }
        };

        document.querySelector("#userEmail").onblur = function () {
          if (validateUserEmail(this.value)) {
            // 유효
            this.classList.remove("is-invalid");
            this.classList.add("is-valid");
          } else {
            // 유효 X
            this.classList.remove("is-valid");
            this.classList.add("is-invalid");
          }
        };
      };

      // 길이가 4이상이면 valid
      function validateUserName(userName) {
        if (userName.length >= 3) return true;
        else return false;
      }

      function validatePassword(userPassword) {
        var patternEngAtListOne = new RegExp(/[a-zA-Z]+/); // + for at least one
        var patternSpeAtListOne = new RegExp(/[~!@#$%^&()+|<>?:{}]+/); // + for at least one
        var patternNumAtListOne = new RegExp(/[0-9]+/); // + for at least one

        if (
          patternEngAtListOne.test(userPassword) &&
          patternSpeAtListOne.test(userPassword) &&
          patternNumAtListOne.test(userPassword) &&
          userPassword.length >= 8
        ) {
          return true;
        } else return false;
      }

      function validatePassword2(userPassword2) {
        if (
          userPassword2 == document.querySelector("#userPassword").value &&
          userPassword2.length >= 8
        )
          return true;
        else return false;
      }

      async function modify() {
        let userNameValue = document.querySelector("#userName").value;
        let userPasswordValue = document.querySelector("#userPassword").value;
        let userEmailValue = document.querySelector("#userEmail").value;
		
        console.log(userNameValue, userPasswordValue, userEmailValue);
        // 파라미터
        let urlParams = new URLSearchParams({
          userName: userNameValue,
          userPassword: userPasswordValue,
          userEmail: userEmailValue,
        });

        // fetch options
        let fetchOptions = {
          method: "POST",
          body: urlParams,
        };

        let response = await fetch("<%= contextPath %>/modify", fetchOptions);
        let data = await response.json();
        console.log(data.result);
        if (data.result == "success") { // register.jsp => login.jsp로 페이지 이동
	       	alertify.alert("Modified!", function(){
	       	 	window.location.href = "<%= contextPath %>/main.jsp";
	       	  });
        } else if (data.result == "fail") {
          alert("Server Error!");
        }
      }

      document.querySelector("#btnModify").onclick = function () {
        if (document.querySelectorAll("form .is-invalid").length > 0) {
          alert("Invalid Input.");
        } else {
        	modify();
        }
      };

	async function withdraw() {
		let userNameValue = document.querySelector("#userName").value;
        let userPasswordValue = document.querySelector("#userPassword").value;
        let userEmailValue = document.querySelector("#userEmail").value;
		
        console.log(userNameValue, userPasswordValue, userEmailValue);
        // 파라미터
        let urlParams = new URLSearchParams({
          userName: userNameValue,
          userPassword: userPasswordValue,
          userEmail: userEmailValue,
        });

        // fetch options
        let fetchOptions = {
          method: "POST",
          body: urlParams,
        };

       let response = await fetch("<%= contextPath %>/withdraw", fetchOptions);
       let data = await response.json();
       console.log(data.result);
       if (data.result == "success") { // register.jsp => login.jsp로 페이지 이동
       	alertify.alert("Withdrawed! Thanks for Using!!", function(){
       	 	window.location.href = "<%= contextPath %>/index.jsp";
       	  });
       } else if (data.result == "fail") {
         alert("Server Error!");
       }
     }

     document.querySelector("#btnWithdraw").onclick = function () {
       if (document.querySelectorAll("form .is-invalid").length > 0) {
         alert("Invalid Input.");
       } else {
    	   withdraw();
       }
     };
    </script>
  </body>
</html>
