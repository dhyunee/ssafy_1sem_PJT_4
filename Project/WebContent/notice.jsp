<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dto.*"%>
<% String contextPath = request.getContextPath();%>
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
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
            integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
            integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
            crossorigin="anonymous"></script>
    
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
    <style>
    	#btnSearchWord:hover, #btnSearchWord:active, #btnSearchWord:disabled, #btnSearchWord:enabled, #btnSearchWord:visited {
    		background-color: #005555;
    	}
    	.page-link {
		  color: #005555; 
		  background-color: #fff;
		  border-color: #fff;
		}
		
		.page-item.active .page-link {
		 z-index: 1;
		 color: #fff;
		 font-weight:bold;
		 background-color: #005555; 
		  border-color: #005555; 
		 
		}
		
		.page-link:focus, .page-link:hover {
		  color: #fff;
		  background-color: #005555; 
		  border-color: #005555; 
		}
    </style>
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
            <h1 class="heading" data-aos="fade-up">Notice</h1>
          </div>
        </div>
      </div>
    </div>
    <div class="container" style="margin-top: 50px;">    
	      <table class="table table-hover">
	        <thead>
	            <tr>
	                <th scope="col">AptNo</th>
	                <th scope="col">Dong</th>
	                <th scope="col">RoadName</th>
	                <th scope="col">AptName</th>
	                <th scope="col">Size</th>
	                <th scope="col">DealAmount</th>
	            </tr>
	        </thead>
	       	<tbody id="boardTbody"></tbody>
	      </table>
      <div id="paginationWrapper"></div>
    </div><br><br><br>
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
    <script src="<%=contextPath %>/js/util.js"></script>

    <script>
        var OFFSET = 0;
        var SEARCH_WORD = '';
        // pagination
        var LIST_ROW_COUNT = 20; // limit
        var PAGE_LINK_COUNT = 20; // pagination link 갯수
        var CURRENT_PAGE_INDEX = 1;
        var TOTAL_LIST_ITEM_COUNT = 0; // 총 건수

        window.onload = function(){
            boardList();

            document.querySelector("#btnSearchWord").onclick = function(){
                SEARCH_WORD = document.querySelector("#inputSearchWord").value;
                // 초기화
                OFFSET = 0;
                CURRENT_PAGE_INDEX = 1;
                boardList();
            }
        }

        // GET
        async function boardList(){
            let url = '<%= contextPath %>/aptdeal';
            let urlParams = '?limit=' + LIST_ROW_COUNT + '&offset=' + OFFSET;
            //let urlParams = ?limit=${LIST_ROW_COUNT}&offset=${OFFSET}; // jsp el 표기법과 javascript es6 literal template 과 충돌
            let fetchOptions = {
                method: 'GET',
            }

            try{
                let response = await fetch( url + urlParams, fetchOptions);
                let data = await response.json();
                console.log( data );
                makeListHtml( data );

            }catch( error ){
                console.log(error);
                alertify.error('글 조회 과정에서 문제가 생겼습니다.')
            }
        }

        // javascript array 를 이용해서 테이블 <tr> 을 반복적으로 만들어서 목록을 완성
        function makeListHtml( list ){
            let listHtml = ``;

            list.forEach( el => {
                let aptNo = el.code;
                let dong = el.dong;
                let roadName = el.roadName;
                let aptName = el.aptName;
                let size = el.size;
                let dealAmount = el.dealAmount;

                listHtml +=
                    `<tr style="cursor:pointer" data-boardId=\${aptNo}><td>\${aptNo}</td><td>\${dong}</td><td>\${roadName}</td><td>\${aptName}</td><td>\${size} <b>m²</b></td><td>\${dealAmount}</td>`;
            });

            document.querySelector("#boardTbody").innerHTML = listHtml;
            //makeListHtmlEventHandler();
            //boardListTotalCnt();
        }
        
        function makeListHtmlEventHandler(){
        	document.querySelectorAll("#boardTbody tr").forEach( el => {
        		el.onclick = function(){
        			let boardId = this.getAttribute("data-boardId");
        			boardDetail(boardId);
        			
        			let url = '<%= contextPath %>/properties/prop.jsp';
                    let url_param = '?aptNo='+boardId; 
        			location.href= url + url_param;
        		}
        	})
        }

        // GET
        async function boardListTotalCnt(){
            let url = '<%= contextPath %>/board/boardListTotalCnt';
            let urlParams = '?searchWord=' + SEARCH_WORD;
            //let urlParams = ?limit=${LIST_ROW_COUNT}&offset=${OFFSET}; // jsp el 표기법과 javascript es6 literal template 과 충돌
            let fetchOptions = {
                method: 'GET',
            }

            try{
                let response = await fetch( url + urlParams, fetchOptions);
                let data = await response.json();
                console.log( data );
                TOTAL_LIST_ITEM_COUNT = data.totalCnt;
                makePaginationHtml( LIST_ROW_COUNT, PAGE_LINK_COUNT, CURRENT_PAGE_INDEX, TOTAL_LIST_ITEM_COUNT, "paginationWrapper" );

            }catch( error ){
                console.log(error);
                alertify.error('글 조회 과정에서 문제가 생겼습니다.')
            }
        }

        function movePage(pageIndex){
            OFFSET = (pageIndex - 1) * LIST_ROW_COUNT;
            CURRENT_PAGE_INDEX = pageIndex;
            boardList();
        }
	</script>
    
  </body>
</html>
