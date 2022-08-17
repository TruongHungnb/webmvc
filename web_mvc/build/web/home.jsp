<%-- 
    Document   : home
    Created on : Nov 30, 2021, 10:02:52 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <c:if test="${sessionScope.acc != null}">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta content="width=device-width, initial-scale=1.0" name="viewport">
            <title>Trang chủ</title>
            <meta content="" name="description">
            <meta content="" name="keywords">
            <link href="assets/img/favicon.png" rel="icon">
            <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

            <!-- Google Fonts -->
            <link href="https://fonts.gstatic.com" rel="preconnect">
            <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

            <!-- Vendor CSS Files -->
            <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
            <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
            <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
            <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
            <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
            <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
            <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

            <!-- Template Main CSS File -->
            <link href="assets/css/style.css" rel="stylesheet">
        </head>
        <body>
            <header id="header" class="header fixed-top d-flex align-items-center">

                <div class="d-flex align-items-center justify-content-between">
                    <a href="home.jsp" class="logo d-flex align-items-center">
                        <img src="assets/img/logo.png" alt="">
                        <span class="d-none d-lg-block">Quản lý bóng đá</span>
                    </a>
                    <i class="bi bi-list toggle-sidebar-btn"></i>
                </div><!-- End Logo -->

                <div class="search-bar">
                    <form class="search-form d-flex align-items-center" method="POST" action="#">
                        <input type="text" name="query" placeholder="Tìm kiếm" title="Nhập từ khoá cần tìm kiếm">
                        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
                    </form>
                </div><!-- End Search Bar -->

                <nav class="header-nav ms-auto">
                    <ul class="d-flex align-items-center">

                        <li class="nav-item d-block d-lg-none">
                            <a class="nav-link nav-icon search-bar-toggle " href="#">
                                <i class="bi bi-search"></i>
                            </a>
                        </li><!-- End Search Icon-->               

                        <li class="nav-item dropdown pe-3">

                            <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                                <!--                            <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">-->
                                <span class="d-none d-md-block dropdown-toggle ps-2">Xin chào ${sessionScope.acc.username}</span>
                            </a><!-- End Profile Iamge Icon -->



                            <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                                <li class="dropdown-header">
                                    <h6>${sessionScope.acc.username}</h6>
                                    <!--<span>Web Designer</span>-->
                                </li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>

                                <li>
                                    <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                                        <i class="bi bi-person"></i>
                                        <span>Thông tin tài khoản</span>
                                    </a>
                                </li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>

                                <li>
                                    <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                                        <i class="bi bi-gear"></i>
                                        <span>Cài đặt tài khoản</span>
                                    </a>
                                </li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>


                                <li>
                                    <hr class="dropdown-divider">
                                </li>

                                <li>
                                    <a class="dropdown-item d-flex align-items-center" href="logout">
                                        <i class="bi bi-box-arrow-right"></i>
                                        <span>Đăng suất</span>
                                    </a>
                                </li>

                            </ul><!-- End Profile Dropdown Items -->

                        </li><!-- End Profile Nav -->

                    </ul>
                </nav><!-- End Icons Navigation -->

            </header><!-- End Header -->
            <aside id="sidebar" class="sidebar">

                <ul class="sidebar-nav" id="sidebar-nav">

                    <li class="nav-item">
                        <a class="nav-link collapsed" href="home.jsp">
                            <i class="bi bi-grid"></i>
                            <span>Trang chủ</span>
                        </a>
                    </li><!-- End Dashboard Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                            <i class="bi bi-menu-button-wide"></i><span>Lên lịch thi đấu</span>
                        </a>

                    </li><!-- End Components Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
                            <i class="bi bi-journal-text"></i><span>Đăng kí cầu thủ</span>
                        </a>
                    </li><!-- End Forms Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" data-bs-target="#" data-bs-toggle="collapse" href="#">
                            <i class="bi bi-layout-text-window-reverse"></i><span>Phân công trọng tài</span>
                        </a>

                    </li><!-- End Tables Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
                            <i class="bi bi-bar-chart"></i><span>Hợp đồng bản quyền truyền hình</span>
                        </a>

                    </li><!-- End Charts Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                            <i class="bi bi-menu-button-wide"></i><span>Thanh toán</span><i class="bi bi-chevron-down ms-auto"></i>
                        </a>
                        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                            <li>
                                <a href="#">
                                    <i class="bi bi-circle"></i><span>Thanh toán đội bóng</span>
                                </a>
                            </li>
                            <li>
                                <a href="trongtai">
                                    <i class="bi bi-circle"></i><span>Thanh toán trọng tài</span>
                                </a>
                            </li>
                        </ul>
                    </li><!-- End Components Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
                            <i class="bi bi-gem"></i><span>Thống kê</span><i class="bi bi-chevron-down ms-auto"></i>
                        </a>
                        <ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                            <li>
                                <a href="#">
                                    <i class="bi bi-circle"></i><span>Bảng xếp hạng</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="bi bi-circle"></i><span>Cầu thủ ghi nhiều bàn thắng</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="bi bi-circle"></i><span>Thẻ phạt của các đội bóng</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="bi bi-circle"></i><span>Các sân theo số lượng khán giả</span>
                                </a>
                            </li>
                        </ul>
                    </li><!-- End Icons Nav -->


                </ul>

            </aside><!-- End Sidebar-->
        <main id="main" class="main">
            <div class="pagetitle">
                <h1>Trang chủ</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="home.jsp">Trang chủ</a></li>

                    </ol>
                </nav>
            </div><!-- End Page Title -->
            <section class="section dashboard">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="row">
                            <div class="w3-content w3-section">
                                <img class="mySlides" src="https://media.vov.vn/sites/default/files/styles/large/public/2021-01/b.jpg" style="width:100%">
                                <img class="mySlides" src="https://cdn.baogiaothong.vn/upload/images/2021-4/article_img/2021-11-21/img-bgt-2021--viet-nam-nhan-mua-tien-thuong-1637493582-width1200height800.jpg" style="width:100%; ">
                                <img class="mySlides" src="http://skydo.vn/wp-content/uploads/2020/10/giay-da-banh-cua-quang-hai.jpg" style="width:100%; ">
                                <img class="mySlides" src="https://vtv1.mediacdn.vn/2016/img20161206112340884.jpg" style="width:100%; ">
                            </div>

                            <script>
                                var myIndex = 0;
                                carousel();
                                function carousel() {
                                    var i;
                                    var x = document.getElementsByClassName("mySlides");
                                    for (i = 0; i < x.length; i++) {
                                        x[i].style.display = "none";
                                    }
                                    myIndex++;
                                    if (myIndex > x.length) {
                                        myIndex = 1
                                    }
                                    x[myIndex - 1].style.display = "block";
                                    setTimeout(carousel, 2000); // Change image every 2 seconds
                                }
                            </script>
                        </div>
                        <br>
                        <div>
                            <hr class="dropdown-divider">
                        </div>
                        <br>
                        <div class="head_news"><a href="#">Bóng đá Việt Nam</a></div>
                        <div class="pkg">
                            <div class="col48per fl" data-vr-contentbox="position_1" data-vr-contentbox-url="https://www.bongda.com.vn/hlv-park-hang-seo-thang-campuchia-gap-ai-o-ban-ket-cung-duoc-d623603.html" data-vr-global-position="120">
                                <a href="#" class="thumbblock thumb240 mar_bottom10" title="HLV Park Hang Seo: Thắng Campuchia, gặp ai ở bán kết cũng được"><img class="" src="https://media.bongda.com.vn/resize/343x220/files/news/2021/12/18/hlv-park-hang-seo-thang-campuchia-gap-ai-o-ban-ket-cung-duoc-122238.jpg" width="343" height="220" alt="HLV Park Hang Seo: Thắng Campuchia, gặp ai ở bán kết cũng được"></a>        <h2><a href="https://www.bongda.com.vn/hlv-park-hang-seo-thang-campuchia-gap-ai-o-ban-ket-cung-duoc-d623603.html" class="fontOPB f22" title="HLV Park Hang Seo: Thắng Campuchia, gặp ai ở bán kết cũng được"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="4035517176">HLV Park Hang Seo: Thắng Campuchia, gặp ai ở bán kết cũng được</span></a></h2>        <div class="time_comment mar_top7 mar_bottom7">
                                    <span style="display: none;">1 giờ </span>
                                </div>
                                <div class="sapo_news">HLV Park Hang Seo tuyên bố tuyển Việt Nam cần đánh bại Campuchia, còn đụng độ đối thủ nào ở bán kết AFF Cup 2020 không quan trọng.</div>

                            </div>
                            <div>
                                <hr class="dropdown-divider">
                            </div>
                            <div class="col48per fr">
                                <div class="list_news_show_home custom_scroll" data-height="388">

                                    <div class="first pkg" data-vr-contentbox="position_2" data-vr-contentbox-url="#" data-vr-global-position="121">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="HAGL nóng lòng đón Kiatisuk trở lại"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/18/hagl-nong-long-don-kiatisuk-tro-lai-115255.jpg" width="140" height="90" alt="HAGL nóng lòng đón Kiatisuk trở lại"></a>            <h6><a href="#" class="f18" title="HAGL nóng lòng đón Kiatisuk trở lại"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="1824573481">HAGL nóng lòng đón Kiatisuk trở lại</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">2 giờ </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_3" data-vr-contentbox-url="#" data-vr-global-position="122">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="4 nhân tố ĐT Việt Nam có thể tỏa sáng trận Campuchia"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/18/4-nhan-to-dt-viet-nam-duoc-cho-doi-se-toa-sang-tran-campuchia-061958.jpg" width="140" height="90" alt="4 nhân tố ĐT Việt Nam có thể tỏa sáng trận Campuchia"></a>            <h6><a href="#" class="f18" title="4 nhân tố ĐT Việt Nam có thể tỏa sáng trận Campuchia"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="1442446175">4 nhân tố ĐT Việt Nam có thể tỏa sáng trận Campuchia</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">6 giờ </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_4" data-vr-contentbox-url="#" data-vr-global-position="123">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="Tuyển Việt Nam: Thầy Park đánh thức hàng công bằng cách nào?"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/18/tuyen-viet-nam-thay-park-danh-thuc-hang-cong-bang-cach-nao-061645.jpg" width="140" height="90" alt="Tuyển Việt Nam: Thầy Park đánh thức hàng công bằng cách nào?"></a>            <h6><a href="#" class="f18" title="Tuyển Việt Nam: Thầy Park đánh thức hàng công bằng cách nào?"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="560407803">Tuyển Việt Nam: Thầy Park đánh thức hàng công bằng cách nào?</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">6 giờ </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_5" data-vr-contentbox-url="#" data-vr-global-position="124">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="Campuchia: 'Quân xanh' phù hợp cho tuyển Việt Nam"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/nhat.nguyen/2021/12/17/c1-2006.jpg" width="140" height="90" alt="Campuchia: 'Quân xanh' phù hợp cho tuyển Việt Nam"></a>            <h6><a href="#" class="f18" title="Campuchia: 'Quân xanh' phù hợp cho tuyển Việt Nam"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="1505631554">Campuchia: 'Quân xanh' phù hợp cho tuyển Việt Nam</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">17 giờ </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_6" data-vr-contentbox-url="#" data-vr-global-position="125">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="Vì sao Tiến Linh chưa ghi bàn ở AFF Cup 2020?"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/nhat.nguyen/2021/12/17/l1-1952.jpg" width="140" height="90" alt="Vì sao Tiến Linh chưa ghi bàn ở AFF Cup 2020?"></a>            <h6><a href="#" class="f18" title="Vì sao Tiến Linh chưa ghi bàn ở AFF Cup 2020?"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="4053738545">Vì sao Tiến Linh chưa ghi bàn ở AFF Cup 2020?</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">18 giờ </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_7" data-vr-contentbox-url="#" data-vr-global-position="126">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="4 điều đáng chờ đợi trận ĐT Việt Nam vs Campuchia: Tấm vé vào bán kết"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/4-dieu-dang-cho-doi-tran-dt-viet-nam-vs-campuchia-tam-ve-vao-ban-ket-184645.jpg" width="140" height="90" alt="4 điều đáng chờ đợi trận ĐT Việt Nam vs Campuchia: Tấm vé vào bán kết"></a>            <h6><a href="https://www.bongda.com.vn/4-dieu-dang-cho-doi-tran-dt-viet-nam-vs-campuchia-tam-ve-vao-ban-ket-d623515.html" class="f18" title="4 điều đáng chờ đợi trận ĐT Việt Nam vs Campuchia: Tấm vé vào bán kết"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="2188941289">4 điều đáng chờ đợi trận ĐT Việt Nam vs Campuchia: Tấm vé vào bán kết</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">19 giờ </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_8" data-vr-contentbox-url="" data-vr-global-position="127">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="Chuyên gia ESPN: 'Quang Hải xứng danh Messi Việt Nam'"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/chuyen-gia-espn-quang-hai-xung-danh-messi-viet-nam-175905.jpg" width="140" height="90" alt="Chuyên gia ESPN: 'Quang Hải xứng danh Messi Việt Nam'"></a>            <h6><a href="#" class="f18" title="Chuyên gia ESPN: 'Quang Hải xứng danh Messi Việt Nam'"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="3241867847">Chuyên gia ESPN: "Quang Hải xứng danh Messi Việt Nam"</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">20 giờ </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_9" data-vr-contentbox-url="#" data-vr-global-position="128">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="'Nếu chủ quan, ĐT Việt Nam sẽ phải trả giá trước Campuchia'"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/neu-chu-quan-dt-viet-nam-se-phai-tra-gia-truoc-campuchia-172750.jpg" width="140" height="90" alt="'Nếu chủ quan, ĐT Việt Nam sẽ phải trả giá trước Campuchia'"></a>            <h6><a href="#" class="f18" title="'Nếu chủ quan, ĐT Việt Nam sẽ phải trả giá trước Campuchia'"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="3553531532">"Nếu chủ quan, ĐT Việt Nam sẽ phải trả giá trước Campuchia"</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">20 giờ </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_10" data-vr-contentbox-url="#" data-vr-global-position="129">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="HLV Thái Lan và Singapore sẵn sàng nghênh chiến ĐT Việt Nam"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/hlv-thai-lan-va-singapore-san-sang-nghenh-chien-dt-viet-nam-164954.jpg" width="140" height="90" alt="HLV Thái Lan và Singapore sẵn sàng nghênh chiến ĐT Việt Nam"></a>            <h6><a href="#" class="f18" title="HLV Thái Lan và Singapore sẵn sàng nghênh chiến ĐT Việt Nam"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="3418668122">HLV Thái Lan và Singapore sẵn sàng nghênh chiến ĐT Việt Nam</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">21 giờ </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_11" data-vr-contentbox-url="#" data-vr-global-position="130">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="3 lý do tin rằng ĐT Việt Nam sẽ giành thắng lợi trước Campuchia"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/3-ly-do-tin-rang-dt-viet-nam-se-gianh-thang-loi-truoc-campuchia-095804.jpg" width="140" height="90" alt="3 lý do tin rằng ĐT Việt Nam sẽ giành thắng lợi trước Campuchia"></a>            <h6><a href="#" class="f18" title="3 lý do tin rằng ĐT Việt Nam sẽ giành thắng lợi trước Campuchia"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="2797825155">3 lý do tin rằng ĐT Việt Nam sẽ giành thắng lợi trước Campuchia</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">1 ngày </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_12" data-vr-contentbox-url="#" data-vr-global-position="131">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="3 nhân tố có thể tạo đột biến trong tấn công của ĐT Việt Nam"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/3-nhan-to-co-the-cai-thien-loi-choi-tan-cong-cua-dt-viet-nam-082526.jpg" width="140" height="90" alt="3 nhân tố có thể tạo đột biến trong tấn công của ĐT Việt Nam"></a>            <h6><a href="#" class="f18" title="3 nhân tố có thể tạo đột biến trong tấn công của ĐT Việt Nam"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="133316597">3 nhân tố có thể tạo đột biến trong tấn công của ĐT Việt Nam</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">1 ngày </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_13" data-vr-contentbox-url="#" data-vr-global-position="132">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="Tuyển Việt Nam tại AFF Cup 2020: Thay đổi thôi, thầy Park"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/tuyen-viet-nam-tai-aff-cup-2020-thay-doi-thoi-thay-park-071333.jpg" width="140" height="90" alt="Tuyển Việt Nam tại AFF Cup 2020: Thay đổi thôi, thầy Park"></a>            <h6><a href="#" class="f18" title="Tuyển Việt Nam tại AFF Cup 2020: Thay đổi thôi, thầy Park"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="2588712663">Tuyển Việt Nam tại AFF Cup 2020: Thay đổi thôi, thầy Park</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">1 ngày </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_14" data-vr-contentbox-url="#" data-vr-global-position="133">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="'ĐT Việt Nam đang có một vấn đề lớn'"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/dt-viet-nam-dang-co-mot-van-de-lon-065049.jpg" width="140" height="90" alt="'ĐT Việt Nam đang có một vấn đề lớn'"></a>            <h6><a href="#" class="f18" title="'ĐT Việt Nam đang có một vấn đề lớn'"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="4135127547">"ĐT Việt Nam đang có một vấn đề lớn"</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">1 ngày </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_15" data-vr-contentbox-url="#" data-vr-global-position="134">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="Rõ khả năng ra sân của Công Phượng trận gặp Campuchia"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/ro-kha-nang-ra-san-cua-cong-phuong-tran-gap-campuchia-061425.jpg" width="140" height="90" alt="Rõ khả năng ra sân của Công Phượng trận gặp Campuchia"></a>            <h6><a href="#" class="f18" title="Rõ khả năng ra sân của Công Phượng trận gặp Campuchia"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="2861781634">Rõ khả năng ra sân của Công Phượng trận gặp Campuchia</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">1 ngày </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_16" data-vr-contentbox-url="#" data-vr-global-position="135">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="Văn Hậu cảnh báo ĐT Việt Nam về 2 cầu thủ đáng gờm tại AFF Cup 2020"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/van-hau-canh-bao-dt-viet-nam-ve-2-cau-thu-dang-gom-tai-aff-cup-2020-054728.jpg" width="140" height="90" alt="Văn Hậu cảnh báo ĐT Việt Nam về 2 cầu thủ đáng gờm tại AFF Cup 2020"></a>            <h6><a href="#" class="f18" title="Văn Hậu cảnh báo ĐT Việt Nam về 2 cầu thủ đáng gờm tại AFF Cup 2020"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="35526530">Văn Hậu cảnh báo ĐT Việt Nam về 2 cầu thủ đáng gờm tại AFF Cup 2020</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">1 ngày </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_17" data-vr-contentbox-url="#" data-vr-global-position="136">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="Văn Lâm sẵn sàng trở lại Nhật Bản tập luyện"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/quan.le/2021/12/16/van-lam-01-2322.jpg" width="140" height="90" alt="Văn Lâm sẵn sàng trở lại Nhật Bản tập luyện"></a>            <h6><a href="#" class="f18" title="Văn Lâm sẵn sàng trở lại Nhật Bản tập luyện"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="2574504050">Văn Lâm sẵn sàng trở lại Nhật Bản tập luyện</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">1 ngày </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_18" data-vr-contentbox-url="#" data-vr-global-position="137">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="Australia đổi sân trận tiếp tuyển Việt Nam"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/quan.le/2021/12/16/australia-vn-01-2307.jpg" width="140" height="90" alt="Australia đổi sân trận tiếp tuyển Việt Nam"></a>            <h6><a href="#" class="f18" title="Australia đổi sân trận tiếp tuyển Việt Nam"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="653802182">Australia đổi sân trận tiếp tuyển Việt Nam</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">1 ngày </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_19" data-vr-contentbox-url="#" data-vr-global-position="138">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="CĐV Indo mạnh miệng chế giễu Việt Nam dù chơi tử thủ"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/16/cdv-indo-manh-mieng-che-gieu-viet-nam-du-choi-tu-thu-205147.png" width="140" height="90" alt="CĐV Indo mạnh miệng chế giễu Việt Nam dù chơi tử thủ"></a>            <h6><a href="#" class="f18" title="CĐV Indo mạnh miệng chế giễu Việt Nam dù chơi tử thủ"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="3310117892">CĐV Indo mạnh miệng chế giễu Việt Nam dù chơi tử thủ</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">1 ngày </span>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="first pkg" data-vr-contentbox="position_20" data-vr-contentbox-url="#" data-vr-global-position="139">
                                        <a href="#" class="thumbblock thumb140x90 fl" title="4 điều ĐT Việt Nam cần làm để quật ngã Campuchia"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/16/4-dieu-dt-viet-nam-can-lam-de-quat-nga-campuchia-175133.jpg" width="140" height="90" alt="4 điều ĐT Việt Nam cần làm để quật ngã Campuchia"></a>            <h6><a href="#" class="f18" title="4 điều ĐT Việt Nam cần làm để quật ngã Campuchia"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="1119255884">4 điều ĐT Việt Nam cần làm để quật ngã Campuchia</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">1 ngày </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card">                         

                            <div class="card-body">                              
                                <h3 class="card-title">Tin nóng</h3>

                                <div class="activity">

                                    <div class="activity-item d-flex">

                                        <div class="activity-content">
                                            <a href="#" class="fw-bold text-dark" title="Lịch thi đấu bóng đá ngày 17/12">Lịch thi đấu bóng đá ngày 17/12</a>
                                        </div>
                                    </div> 
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="activity-item d-flex">

                                        <div class="activity-content">
                                            <a href="#" class="fw-bold text-dark" title="Dự đoán kết quả vòng 18 Ngoại hạng Anh: Man City và Liverpool cùng tiến, Chelsea lại hụt bước">Dự đoán kết quả vòng 18 Ngoại hạng Anh: Man City và Liverpool cùng tiến, Chelsea lại hụt bước</a>
                                        </div>
                                    </div> 
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="activity-item d-flex">

                                        <div class="activity-content">
                                            <a href="#" class="fw-bold text-dark" title="Tiến Linh 'đấu' Son Heung Min ở giải thưởng Cầu thủ xuất sắc nhất châu Á 2021">Tiến Linh 'đấu' Son Heung Min ở giải thưởng Cầu thủ xuất sắc nhất châu Á 2021</a>
                                        </div>
                                    </div> 
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="activity-item d-flex">

                                        <div class="activity-content">
                                            <a href="#" class="fw-bold text-dark" title="Ronaldo chỉ xếp thứ 9 trong Top cầu thủ hay nhất Premier League">Ronaldo chỉ xếp thứ 9 trong Top cầu thủ hay nhất Premier League</a>
                                        </div>
                                    </div> 
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="activity-item d-flex">

                                        <div class="activity-content">
                                            <a href="#" class="fw-bold text-dark" title="Đội hình dự kiến Leeds vs Arsenal: Dấu hỏi về Aubameyang">Đội hình dự kiến Leeds vs Arsenal: Dấu hỏi về Aubameyang</a>
                                        </div>
                                    </div>
                                    <div>
                                        <hr class="dropdown-divider">
                                    </div>
                                    <div class="activity-item d-flex">

                                        <div class="activity-content">
                                            <a href="#" class="fw-bold text-dark" title="Chelsea tụt lại ở cuộc đua vô địch: Công không được mà thủ cũng chẳng xong">Chelsea tụt lại ở cuộc đua vô địch: Công không được mà thủ cũng chẳng xong</a>
                                        </div>
                                    </div> 

                                </div>

                            </div>
                        </div>

                    </div>
                </div>




            </section>
            <section class="box_left_home" data-vr-zone="Homepage_Bóng đá Việt Nam">
                <!--                <div class="head_news"><a href="#">Bóng đá Việt Nam</a></div>
                                <div class="pkg">
                                    <div class="col48per fl" data-vr-contentbox="position_1" data-vr-contentbox-url="https://www.bongda.com.vn/hlv-park-hang-seo-thang-campuchia-gap-ai-o-ban-ket-cung-duoc-d623603.html" data-vr-global-position="120">
                                        <a href="#" class="thumbblock thumb240 mar_bottom10" title="HLV Park Hang Seo: Thắng Campuchia, gặp ai ở bán kết cũng được"><img class="" src="https://media.bongda.com.vn/resize/343x220/files/news/2021/12/18/hlv-park-hang-seo-thang-campuchia-gap-ai-o-ban-ket-cung-duoc-122238.jpg" width="343" height="220" alt="HLV Park Hang Seo: Thắng Campuchia, gặp ai ở bán kết cũng được"></a>        <h2><a href="https://www.bongda.com.vn/hlv-park-hang-seo-thang-campuchia-gap-ai-o-ban-ket-cung-duoc-d623603.html" class="fontOPB f22" title="HLV Park Hang Seo: Thắng Campuchia, gặp ai ở bán kết cũng được"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="4035517176">HLV Park Hang Seo: Thắng Campuchia, gặp ai ở bán kết cũng được</span></a></h2>        <div class="time_comment mar_top7 mar_bottom7">
                                            <span style="display: none;">1 giờ </span>
                                        </div>
                                        <div class="sapo_news">HLV Park Hang Seo tuyên bố tuyển Việt Nam cần đánh bại Campuchia, còn đụng độ đối thủ nào ở bán kết AFF Cup 2020 không quan trọng.</div>
                
                                    </div>
                
                                    <div class="col48per fr">
                                        <div class="list_news_show_home custom_scroll" data-height="388">
                
                                            <div class="first pkg" data-vr-contentbox="position_2" data-vr-contentbox-url="#" data-vr-global-position="121">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="HAGL nóng lòng đón Kiatisuk trở lại"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/18/hagl-nong-long-don-kiatisuk-tro-lai-115255.jpg" width="140" height="90" alt="HAGL nóng lòng đón Kiatisuk trở lại"></a>            <h6><a href="https://www.bongda.com.vn/hagl-nong-long-don-kiatisuk-tro-lai-d623601.html" class="f18" title="HAGL nóng lòng đón Kiatisuk trở lại"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="1824573481">HAGL nóng lòng đón Kiatisuk trở lại</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">2 giờ </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_3" data-vr-contentbox-url="#" data-vr-global-position="122">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="4 nhân tố ĐT Việt Nam có thể tỏa sáng trận Campuchia"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/18/4-nhan-to-dt-viet-nam-duoc-cho-doi-se-toa-sang-tran-campuchia-061958.jpg" width="140" height="90" alt="4 nhân tố ĐT Việt Nam có thể tỏa sáng trận Campuchia"></a>            <h6><a href="https://www.bongda.com.vn/4-nhan-to-dt-viet-nam-co-the-toa-sang-tran-campuchia-d623551.html" class="f18" title="4 nhân tố ĐT Việt Nam có thể tỏa sáng trận Campuchia"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="1442446175">4 nhân tố ĐT Việt Nam có thể tỏa sáng trận Campuchia</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">6 giờ </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_4" data-vr-contentbox-url="#" data-vr-global-position="123">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="Tuyển Việt Nam: Thầy Park đánh thức hàng công bằng cách nào?"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/18/tuyen-viet-nam-thay-park-danh-thuc-hang-cong-bang-cach-nao-061645.jpg" width="140" height="90" alt="Tuyển Việt Nam: Thầy Park đánh thức hàng công bằng cách nào?"></a>            <h6><a href="https://www.bongda.com.vn/tuyen-viet-nam-thay-park-danh-thuc-hang-cong-bang-cach-nao-d623553.html" class="f18" title="Tuyển Việt Nam: Thầy Park đánh thức hàng công bằng cách nào?"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="560407803">Tuyển Việt Nam: Thầy Park đánh thức hàng công bằng cách nào?</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">6 giờ </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_5" data-vr-contentbox-url="#" data-vr-global-position="124">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="Campuchia: 'Quân xanh' phù hợp cho tuyển Việt Nam"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/nhat.nguyen/2021/12/17/c1-2006.jpg" width="140" height="90" alt="Campuchia: 'Quân xanh' phù hợp cho tuyển Việt Nam"></a>            <h6><a href="https://www.bongda.com.vn/campuchia-quan-xanh-phu-hop-cho-tuyen-viet-nam-d623520.html" class="f18" title="Campuchia: 'Quân xanh' phù hợp cho tuyển Việt Nam"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="1505631554">Campuchia: 'Quân xanh' phù hợp cho tuyển Việt Nam</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">17 giờ </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_6" data-vr-contentbox-url="#" data-vr-global-position="125">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="Vì sao Tiến Linh chưa ghi bàn ở AFF Cup 2020?"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/nhat.nguyen/2021/12/17/l1-1952.jpg" width="140" height="90" alt="Vì sao Tiến Linh chưa ghi bàn ở AFF Cup 2020?"></a>            <h6><a href="https://www.bongda.com.vn/vi-sao-tien-linh-chua-ghi-ban-o-aff-cup-2020-d623519.html" class="f18" title="Vì sao Tiến Linh chưa ghi bàn ở AFF Cup 2020?"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="4053738545">Vì sao Tiến Linh chưa ghi bàn ở AFF Cup 2020?</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">18 giờ </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_7" data-vr-contentbox-url="#" data-vr-global-position="126">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="4 điều đáng chờ đợi trận ĐT Việt Nam vs Campuchia: Tấm vé vào bán kết"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/4-dieu-dang-cho-doi-tran-dt-viet-nam-vs-campuchia-tam-ve-vao-ban-ket-184645.jpg" width="140" height="90" alt="4 điều đáng chờ đợi trận ĐT Việt Nam vs Campuchia: Tấm vé vào bán kết"></a>            <h6><a href="https://www.bongda.com.vn/4-dieu-dang-cho-doi-tran-dt-viet-nam-vs-campuchia-tam-ve-vao-ban-ket-d623515.html" class="f18" title="4 điều đáng chờ đợi trận ĐT Việt Nam vs Campuchia: Tấm vé vào bán kết"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="2188941289">4 điều đáng chờ đợi trận ĐT Việt Nam vs Campuchia: Tấm vé vào bán kết</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">19 giờ </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_8" data-vr-contentbox-url="" data-vr-global-position="127">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="Chuyên gia ESPN: 'Quang Hải xứng danh Messi Việt Nam'"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/chuyen-gia-espn-quang-hai-xung-danh-messi-viet-nam-175905.jpg" width="140" height="90" alt="Chuyên gia ESPN: 'Quang Hải xứng danh Messi Việt Nam'"></a>            <h6><a href="https://www.bongda.com.vn/chuyen-gia-espn-quang-hai-xung-danh-messi-viet-nam-d623510.html" class="f18" title="Chuyên gia ESPN: 'Quang Hải xứng danh Messi Việt Nam'"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="3241867847">Chuyên gia ESPN: "Quang Hải xứng danh Messi Việt Nam"</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">20 giờ </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_9" data-vr-contentbox-url="#" data-vr-global-position="128">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="'Nếu chủ quan, ĐT Việt Nam sẽ phải trả giá trước Campuchia'"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/neu-chu-quan-dt-viet-nam-se-phai-tra-gia-truoc-campuchia-172750.jpg" width="140" height="90" alt="'Nếu chủ quan, ĐT Việt Nam sẽ phải trả giá trước Campuchia'"></a>            <h6><a href="https://www.bongda.com.vn/neu-chu-quan-dt-viet-nam-se-phai-tra-gia-truoc-campuchia-d623506.html" class="f18" title="'Nếu chủ quan, ĐT Việt Nam sẽ phải trả giá trước Campuchia'"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="3553531532">"Nếu chủ quan, ĐT Việt Nam sẽ phải trả giá trước Campuchia"</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">20 giờ </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_10" data-vr-contentbox-url="#" data-vr-global-position="129">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="HLV Thái Lan và Singapore sẵn sàng nghênh chiến ĐT Việt Nam"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/hlv-thai-lan-va-singapore-san-sang-nghenh-chien-dt-viet-nam-164954.jpg" width="140" height="90" alt="HLV Thái Lan và Singapore sẵn sàng nghênh chiến ĐT Việt Nam"></a>            <h6><a href="https://www.bongda.com.vn/hlv-thai-lan-va-singapore-san-sang-nghenh-chien-dt-viet-nam-d623505.html" class="f18" title="HLV Thái Lan và Singapore sẵn sàng nghênh chiến ĐT Việt Nam"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="3418668122">HLV Thái Lan và Singapore sẵn sàng nghênh chiến ĐT Việt Nam</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">21 giờ </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_11" data-vr-contentbox-url="#" data-vr-global-position="130">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="3 lý do tin rằng ĐT Việt Nam sẽ giành thắng lợi trước Campuchia"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/3-ly-do-tin-rang-dt-viet-nam-se-gianh-thang-loi-truoc-campuchia-095804.jpg" width="140" height="90" alt="3 lý do tin rằng ĐT Việt Nam sẽ giành thắng lợi trước Campuchia"></a>            <h6><a href="https://www.bongda.com.vn/3-ly-do-tin-rang-dt-viet-nam-se-gianh-thang-loi-truoc-campuchia-d623459.html" class="f18" title="3 lý do tin rằng ĐT Việt Nam sẽ giành thắng lợi trước Campuchia"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="2797825155">3 lý do tin rằng ĐT Việt Nam sẽ giành thắng lợi trước Campuchia</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">1 ngày </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_12" data-vr-contentbox-url="#" data-vr-global-position="131">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="3 nhân tố có thể tạo đột biến trong tấn công của ĐT Việt Nam"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/3-nhan-to-co-the-cai-thien-loi-choi-tan-cong-cua-dt-viet-nam-082526.jpg" width="140" height="90" alt="3 nhân tố có thể tạo đột biến trong tấn công của ĐT Việt Nam"></a>            <h6><a href="https://www.bongda.com.vn/3-nhan-to-co-the-tao-dot-bien-trong-tan-cong-cua-dt-viet-nam-d623422.html" class="f18" title="3 nhân tố có thể tạo đột biến trong tấn công của ĐT Việt Nam"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="133316597">3 nhân tố có thể tạo đột biến trong tấn công của ĐT Việt Nam</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">1 ngày </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_13" data-vr-contentbox-url="#" data-vr-global-position="132">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="Tuyển Việt Nam tại AFF Cup 2020: Thay đổi thôi, thầy Park"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/tuyen-viet-nam-tai-aff-cup-2020-thay-doi-thoi-thay-park-071333.jpg" width="140" height="90" alt="Tuyển Việt Nam tại AFF Cup 2020: Thay đổi thôi, thầy Park"></a>            <h6><a href="https://www.bongda.com.vn/tuyen-viet-nam-tai-aff-cup-2020-thay-doi-thoi-thay-park-d623434.html" class="f18" title="Tuyển Việt Nam tại AFF Cup 2020: Thay đổi thôi, thầy Park"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="2588712663">Tuyển Việt Nam tại AFF Cup 2020: Thay đổi thôi, thầy Park</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">1 ngày </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_14" data-vr-contentbox-url="#" data-vr-global-position="133">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="'ĐT Việt Nam đang có một vấn đề lớn'"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/dt-viet-nam-dang-co-mot-van-de-lon-065049.jpg" width="140" height="90" alt="'ĐT Việt Nam đang có một vấn đề lớn'"></a>            <h6><a href="https://www.bongda.com.vn/dt-viet-nam-dang-co-mot-van-de-lon-d623429.html" class="f18" title="'ĐT Việt Nam đang có một vấn đề lớn'"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="4135127547">"ĐT Việt Nam đang có một vấn đề lớn"</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">1 ngày </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_15" data-vr-contentbox-url="#" data-vr-global-position="134">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="Rõ khả năng ra sân của Công Phượng trận gặp Campuchia"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/ro-kha-nang-ra-san-cua-cong-phuong-tran-gap-campuchia-061425.jpg" width="140" height="90" alt="Rõ khả năng ra sân của Công Phượng trận gặp Campuchia"></a>            <h6><a href="https://www.bongda.com.vn/ro-kha-nang-ra-san-cua-cong-phuong-tran-gap-campuchia-d623424.html" class="f18" title="Rõ khả năng ra sân của Công Phượng trận gặp Campuchia"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="2861781634">Rõ khả năng ra sân của Công Phượng trận gặp Campuchia</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">1 ngày </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_16" data-vr-contentbox-url="#" data-vr-global-position="135">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="Văn Hậu cảnh báo ĐT Việt Nam về 2 cầu thủ đáng gờm tại AFF Cup 2020"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/17/van-hau-canh-bao-dt-viet-nam-ve-2-cau-thu-dang-gom-tai-aff-cup-2020-054728.jpg" width="140" height="90" alt="Văn Hậu cảnh báo ĐT Việt Nam về 2 cầu thủ đáng gờm tại AFF Cup 2020"></a>            <h6><a href="https://www.bongda.com.vn/van-hau-canh-bao-dt-viet-nam-ve-2-cau-thu-dang-gom-tai-aff-cup-2020-d623418.html" class="f18" title="Văn Hậu cảnh báo ĐT Việt Nam về 2 cầu thủ đáng gờm tại AFF Cup 2020"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="35526530">Văn Hậu cảnh báo ĐT Việt Nam về 2 cầu thủ đáng gờm tại AFF Cup 2020</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">1 ngày </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_17" data-vr-contentbox-url="#" data-vr-global-position="136">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="Văn Lâm sẵn sàng trở lại Nhật Bản tập luyện"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/quan.le/2021/12/16/van-lam-01-2322.jpg" width="140" height="90" alt="Văn Lâm sẵn sàng trở lại Nhật Bản tập luyện"></a>            <h6><a href="https://www.bongda.com.vn/van-lam-san-sang-tro-lai-nhat-ban-tap-luyen-d623414.html" class="f18" title="Văn Lâm sẵn sàng trở lại Nhật Bản tập luyện"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="2574504050">Văn Lâm sẵn sàng trở lại Nhật Bản tập luyện</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">1 ngày </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_18" data-vr-contentbox-url="#" data-vr-global-position="137">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="Australia đổi sân trận tiếp tuyển Việt Nam"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/quan.le/2021/12/16/australia-vn-01-2307.jpg" width="140" height="90" alt="Australia đổi sân trận tiếp tuyển Việt Nam"></a>            <h6><a href="https://www.bongda.com.vn/australia-doi-san-tran-tiep-tuyen-viet-nam-d623413.html" class="f18" title="Australia đổi sân trận tiếp tuyển Việt Nam"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="653802182">Australia đổi sân trận tiếp tuyển Việt Nam</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">1 ngày </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_19" data-vr-contentbox-url="#" data-vr-global-position="138">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="CĐV Indo mạnh miệng chế giễu Việt Nam dù chơi tử thủ"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/16/cdv-indo-manh-mieng-che-gieu-viet-nam-du-choi-tu-thu-205147.png" width="140" height="90" alt="CĐV Indo mạnh miệng chế giễu Việt Nam dù chơi tử thủ"></a>            <h6><a href="https://www.bongda.com.vn/cdv-indo-manh-mieng-che-gieu-viet-nam-du-choi-tu-thu-d623393.html" class="f18" title="CĐV Indo mạnh miệng chế giễu Việt Nam dù chơi tử thủ"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="3310117892">CĐV Indo mạnh miệng chế giễu Việt Nam dù chơi tử thủ</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">1 ngày </span>
                                                </div>
                                            </div>
                
                                            <div class="first pkg" data-vr-contentbox="position_20" data-vr-contentbox-url="#" data-vr-global-position="139">
                                                <a href="#" class="thumbblock thumb140x90 fl" title="4 điều ĐT Việt Nam cần làm để quật ngã Campuchia"><img class="" src="https://media.bongda.com.vn/resize/140x90/files/news/2021/12/16/4-dieu-dt-viet-nam-can-lam-de-quat-nga-campuchia-175133.jpg" width="140" height="90" alt="4 điều ĐT Việt Nam cần làm để quật ngã Campuchia"></a>            <h6><a href="https://www.bongda.com.vn/4-dieu-dt-viet-nam-can-lam-de-quat-nga-campuchia-d623364.html" class="f18" title="4 điều ĐT Việt Nam cần làm để quật ngã Campuchia"><span data-vr-headline="" data-vr-contentbox-dynamic-hash="1119255884">4 điều ĐT Việt Nam cần làm để quật ngã Campuchia</span></a></h6>            <div class="time_comment mar_top7 mar_bottom7">
                                                    <span style="display: none;">1 ngày </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>-->
            </section>
        </main>
        <footer id="footer" class="footer">

            <div class="credits">

            </div>
        </footer><!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
        <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/chart.js/chart.min.js"></script>
        <script src="assets/vendor/echarts/echarts.min.js"></script>
        <script src="assets/vendor/quill/quill.min.js"></script>
        <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
        <script src="assets/vendor/tinymce/tinymce.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>
    </body>
</c:if>
</html>
