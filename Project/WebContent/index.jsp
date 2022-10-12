<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <a href="#" class="logo m-0 float-start"><img id="logo" src="images/logo.png" style="width: 100px"></a>
            <ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
              <li class="active"><a href="login.jsp">Login</a></li>
              <li class="active"><a href="register.jsp">Register</a></li>
              <li><a href="notice.jsp">Notice</a></li>
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

    <div class="hero">
      <div class="hero-slide">
        <div class="img overlay" style="background-image: url('images/hero_bg_3.jpg')"></div>
        <div class="img overlay" style="background-image: url('images/hero_bg_2.jpg')"></div>
        <div class="img overlay" style="background-image: url('images/hero_bg_1.jpg')"></div>
      </div>

      <div class="container">
        <div class="row justify-content-center align-items-center">
          <div class="col-lg-9 text-center">
            <h1 class="heading" data-aos="fade-up">The Easiest Way To Find My Home</h1>
          </div>
        </div>
      </div>
    </div>

    <div class="section">
      <div class="container">
        <div class="row mb-5 align-items-center">
          <div class="col-lg-6">
            <h2 class="font-weight-bold text-primary heading">Pupular Property</h2>
          </div>
          <div class="col-lg-6 text-lg-end">
            <p>
              <a href="login.jsp" class="btn btn-primary text-white py-3 px-4"
                >See All Property</a
              >
            </p>
          </div>
        </div>
        <div class="row">
          <div class="col-12">
            <div class="property-slider-wrap">
              <div class="property-slider">
                <div class="property-item">
                  <a href="login.jsp" class="img">
                    <img src="images/img_1.jpg" alt="Image" class="img-fluid" />
                  </a>

                  <div class="property-content">
                    <div class="price mb-2"><span>13,500만원</span></div>
                    <div>
                      <span class="d-block mb-2 text-black-50"
                        >서울특별시 종로구 충신동 62-2</span
                      >
                      <span class="city d-block mb-3">충신동 CS타워</span>

                      <div class="specs d-flex mb-4">
                        <span class="d-block d-flex align-items-center me-3">
                          <span class="caption">면적: 22.17</span>
                        </span>
                      </div>

                      <a href="login.jsp" class="btn btn-primary py-2 px-3"
                        >See details</a
                      >
                    </div>
                  </div>
                </div>
                <!-- .item -->

                <div class="property-item">
                  <a href="login.jsp" class="img">
                    <img src="images/img_2.jpg" alt="Image" class="img-fluid" />
                  </a>

                  <div class="property-content">
                    <div class="price mb-2"><span>26,000만원</span></div>
                    <div>
                      <span class="d-block mb-2 text-black-50"
                        >서울특별시 종로구 행촌동 사직로 21</span
                      >
                      <span class="city d-block mb-3">행촌동 대성맨션</span>

                      <div class="specs d-flex mb-4">
                        <span class="d-block d-flex align-items-center me-3">
                          <span class="caption">면적: 19.27</span>
                        </span>
                      </div>

                      <a href="login.jsp" class="btn btn-primary py-2 px-3"
                        >See details</a
                      >
                    </div>
                  </div>
                </div>
                <!-- .item -->

                <div class="property-item">
                  <a href="login.jsp" class="img">
                    <img src="images/img_3.jpg" alt="Image" class="img-fluid" />
                  </a>

                  <div class="property-content">
                    <div class="price mb-2"><span>139,900만원</span></div>
                    <div>
                      <span class="d-block mb-2 text-black-50"
                        >서울특별시 종로구 무악동 통일로18길 9</span
                      >
                      <span class="city d-block mb-3">무악동 인왕산아이파크</span>

                      <div class="specs d-flex mb-4">
                        <span class="d-block d-flex align-items-center me-3">
                          <span class="icon-bed me-2"></span>
                          <span class="caption">면적: 84.858</span>
                        </span>
                      </div>

                      <a href="login.jsp" class="btn btn-primary py-2 px-3"
                        >See details</a
                      >
                    </div>
                  </div>
                </div>
                <!-- .item -->

                <div class="property-item">
                  <a href="login.jsp" class="img">
                    <img src="images/img_4.jpg" alt="Image" class="img-fluid" />
                  </a>

                  <div class="property-content">
                    <div class="price mb-2"><span>19,000만원</span></div>
                    <div>
                      <span class="d-block mb-2 text-black-50"
                        >서울특별시 종로구 효제동 대학로 33</span
                      >
                      <span class="city d-block mb-3">효제동 포레스트힐시티</span>

                      <div class="specs d-flex mb-4">
                        <span class="d-block d-flex align-items-center me-3">
                          <span class="caption">면적: 18.7352</span>
                        </span>
                      </div>

                      <a href="login.jsp" class="btn btn-primary py-2 px-3"
                        >See details</a
                      >
                    </div>
                  </div>
                </div>
                <!-- .item -->

                <div class="property-item">
                  <a href="login.jsp" class="img">
                    <img src="images/img_5.jpg" alt="Image" class="img-fluid" />
                  </a>

                  <div class="property-content">
                    <div class="price mb-2"><span>67,500만원</span></div>
                    <div>
                      <span class="d-block mb-2 text-black-50"
                        >서울특별시 종로구 창신3동 낙산길 198</span
                      >
                      <span class="city d-block mb-3">창신동 창신쌍용 2단지</span>

                      <div class="specs d-flex mb-4">
                        <span class="d-block d-flex align-items-center me-3">
                          <span class="caption">면적: 54.7</span>
                        </span>
                      </div>

                      <a href="login.jsp" class="btn btn-primary py-2 px-3"
                        >See details</a
                      >
                    </div>
                  </div>
                </div>
                <!-- .item -->

                <div class="property-item">
                  <a href="login.jsp" class="img">
                    <img src="images/img_6.jpg" alt="Image" class="img-fluid" />
                  </a>

                  <div class="property-content">
                    <div class="price mb-2"><span>11,900만원</span></div>
                    <div>
                      <span class="d-block mb-2 text-black-50"
                        >서울특별시 동대문구 114 43</span
                      >
                      <span class="city d-block mb-3">숭인동 한양립스</span>

                      <div class="specs d-flex mb-4">
                        <span class="d-block d-flex align-items-center me-3">
                          <span class="caption">면적: 12.78</span>
                        </span>
                      </div>

                      <a href="login.jsp" class="btn btn-primary py-2 px-3"
                        >See details</a
                      >
                    </div>
                  </div>
                </div>
                <!-- .item -->

                <div class="property-item">
                  <a href="login.jsp" class="img">
                    <img src="images/img_7.jpg" alt="Image" class="img-fluid" />
                  </a>

                  <div class="property-content">
                    <div class="price mb-2"><span>55,000만원</span></div>
                    <div>
                      <span class="d-block mb-2 text-black-50"
                        >서울특별시 종로구 종로1가</span
                      >
                      <span class="city d-block mb-3">익선동 운현신화타워</span>

                      <div class="specs d-flex mb-4">
                        <span class="d-block d-flex align-items-center me-3">
                          <span class="caption">면적: 57.18</span>
                        </span>
                      </div>

                      <a href="login.jsp" class="btn btn-primary py-2 px-3"
                        >See details</a
                      >
                    </div>
                  </div>
                </div>
                <!-- .item -->

                <div class="property-item">
                  <a href="login.jsp" class="img">
                    <img src="images/img_8.jpg" alt="Image" class="img-fluid" />
                  </a>

                  <div class="property-content">
                    <div class="price mb-2"><span>19,500만원</span></div>
                    <div>
                      <span class="d-block mb-2 text-black-50"
                        >서울특별시 종로구 연건동 195-10</span
                      >
                      <span class="city d-block mb-3">연건동 이화에수풀</span>

                      <div class="specs d-flex mb-4">
                        <span class="d-block d-flex align-items-center me-3">
                          <span class="caption">면적: 16.98</span>
                        </span>
                      </div>

                      <a href="login.jsp" class="btn btn-primary py-2 px-3"
                        >See details</a
                      >
                    </div>
                  </div>
                </div>
                <!-- .item -->

                <div class="property-item">
                  <a href="login.jsp" class="img">
                    <img src="images/img_9.jpg" alt="Image" class="img-fluid" />
                  </a>

                  <div class="property-content">
                    <div class="price mb-2"><span>45,000만원</span></div>
                    <div>
                      <span class="d-block mb-2 text-black-50"
                        >서울특별시 종로구 익선동 55</span
                      >
                      <span class="city d-block mb-3">익선동 현대뜨레비앙</span>

                      <div class="specs d-flex mb-4">
                        <span class="d-block d-flex align-items-center me-3">
                          <span class="caption">면적: 48.54</span>
                        </span>
                      </div>

                      <a href="login.jsp" class="btn btn-primary py-2 px-3"
                        >See details</a
                      >
                    </div>
                  </div>
                </div>
                <!-- .item -->
              </div>

              <div id="property-nav" class="controls" tabindex="0" aria-label="Carousel Navigation">
                <span class="prev" data-controls="prev" aria-controls="property" tabindex="-1"
                  >Prev</span
                >
                <span class="next" data-controls="next" aria-controls="property" tabindex="-1"
                  >Next</span
                >
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="section sec-testimonials">
      <div class="container">
        <div class="row mb-5 align-items-center">
          <div class="col-md-6">
            <h2 class="font-weight-bold heading text-primary mb-4 mb-md-0">Review of Use</h2>
          </div>
          <div class="col-md-6 text-md-end">
            <div id="testimonial-nav">
              <span class="prev" data-controls="prev">Prev</span>

              <span class="next" data-controls="next">Next</span>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-4"></div>
        </div>
        <div class="testimonial-slider-wrap">
          <div class="testimonial-slider">
            <div class="item">
              <div class="testimonial">
                <img
                  src="images/person_1-min.jpg"
                  alt="Image"
                  class="img-fluid rounded-circle w-25 mb-4"
                />
                <div class="rate">
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                </div>
                <h3 class="h5 text-primary mb-4">James Smith</h3>
                <blockquote>
                  <p>
                    &ldquo;Far far away, behind the word mountains, far from the countries Vokalia
                    and Consonantia, there live the blind texts. Separated they live in
                    Bookmarksgrove right at the coast of the Semantics, a large language
                    ocean.&rdquo;
                  </p>
                </blockquote>
                <p class="text-black-50">Designer, Co-founder</p>
              </div>
            </div>

            <div class="item">
              <div class="testimonial">
                <img
                  src="images/person_2-min.jpg"
                  alt="Image"
                  class="img-fluid rounded-circle w-25 mb-4"
                />
                <div class="rate">
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                </div>
                <h3 class="h5 text-primary mb-4">Mike Houston</h3>
                <blockquote>
                  <p>
                    &ldquo;Far far away, behind the word mountains, far from the countries Vokalia
                    and Consonantia, there live the blind texts. Separated they live in
                    Bookmarksgrove right at the coast of the Semantics, a large language
                    ocean.&rdquo;
                  </p>
                </blockquote>
                <p class="text-black-50">Designer, Co-founder</p>
              </div>
            </div>

            <div class="item">
              <div class="testimonial">
                <img
                  src="images/person_3-min.jpg"
                  alt="Image"
                  class="img-fluid rounded-circle w-25 mb-4"
                />
                <div class="rate">
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                </div>
                <h3 class="h5 text-primary mb-4">Cameron Webster</h3>
                <blockquote>
                  <p>
                    &ldquo;Far far away, behind the word mountains, far from the countries Vokalia
                    and Consonantia, there live the blind texts. Separated they live in
                    Bookmarksgrove right at the coast of the Semantics, a large language
                    ocean.&rdquo;
                  </p>
                </blockquote>
                <p class="text-black-50">Designer, Co-founder</p>
              </div>
            </div>

            <div class="item">
              <div class="testimonial">
                <img
                  src="images/person_4-min.jpg"
                  alt="Image"
                  class="img-fluid rounded-circle w-25 mb-4"
                />
                <div class="rate">
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                </div>
                <h3 class="h5 text-primary mb-4">Dave Smith</h3>
                <blockquote>
                  <p>
                    &ldquo;Far far away, behind the word mountains, far from the countries Vokalia
                    and Consonantia, there live the blind texts. Separated they live in
                    Bookmarksgrove right at the coast of the Semantics, a large language
                    ocean.&rdquo;
                  </p>
                </blockquote>
                <p class="text-black-50">Designer, Co-founder</p>
              </div>
            </div>
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

    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/tiny-slider.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/navbar.js"></script>
    <script src="js/counter.js"></script>
    <script src="js/custom.js"></script>
  </body>
</html>
