<%-- 
    Document   : thanhtoan
    Created on : Dec 6, 2021, 9:25:27 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <c:if test="${sessionScope.acc != null}">
        <head>
            <meta charset="utf-8">
            <meta content="width=device-width, initial-scale=1.0" name="viewport">

            <title>Thanh toán trọng tài</title>
            <meta content="" name="description">
            <meta content="" name="keywords">

            <!-- Favicons -->
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

            <!-- =======================================================
            * Template Name: NiceAdmin - v2.2.0
            * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
            * Author: BootstrapMade.com
            * License: https://bootstrapmade.com/license/
            ======================================================== -->
        </head>

        <body>

            <!-- ======= Header ======= -->
            <header id="header" class="header fixed-top d-flex align-items-center">

                <div class="d-flex align-items-center justify-content-between">
                    <a href="home.jsp" class="logo d-flex align-items-center">
                        <img src="assets/img/logo.png" alt="">
                        <span class="d-none d-lg-block">Quản lý bóng đá</span>
                    </a>
                    <i class="bi bi-list toggle-sidebar-btn"></i>
                </div><!-- End Logo -->

                <!--            <div class="search-bar">
                                <form class="search-form d-flex align-items-center" method="POST" action="#">
                                    <input type="text" name="query" placeholder="Search" title="Enter search keyword">
                                    <button type="submit" title="Search"><i class="bi bi-search"></i></button>
                                </form>
                            </div> End Search Bar -->

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

            <!-- ======= Sidebar ======= -->
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
                        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
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
                <h1>Thanh Toán Trọng Tài</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="home.html">Trang chủ</a></li>
                        <li class="breadcrumb-item">Thanh toán</li>
                        <li class="breadcrumb-item active"><a href="trongtai">Thanh toán trọng tài</a></li>
                    </ol>
                </nav>
            </div><!-- End Page Title -->

            <section class="section">
                <div class="row">
                    <div class="col-lg-12">

                        <!--                    <div class="search-bar">
                                                <form class="search-form d-flex align-items-center" method="POST" action="#">
                                                    <input class="col-lg-5" type="text" name="query" placeholder="Tìm kiếm" title="Enter search keyword">
                                                    <button type="submit" title="Search"><i class="bi bi-search"> </i>Tìm kiếm</button>
                                                </form>
                                            </div>-->
                        <br>

                        <div>
                            <h4 style="float: left; width: 60%">Tên trọng tài: ${tentt}</h4>
                            <h4 style="float: left; width: 40%">Mã trọng tài: ${matt}</h4>

                        </div>
                        <!--                    <div class="card">
                                                <div class="card-body">-->
                        <table class="table">
                            <tr>
                                <!--<th scope="col">STT</th>-->
                                <th scope="col" style="text-align: center" >Mã trận đấu</th>
                                <th scope="col" style="text-align: center" >Ngày diễn ra</th>
                                <th scope="col" style="text-align: center" >Tên trận đấu</th>
                                <th scope="col" style="text-align: center" >Vị trí</th>
                                <th scope="col" style="text-align: center" >Tiền công</th>
                            </tr>
                            <c:forEach items="${listP}" var="tmp">
                                <tr>          
                                    <!--<th scope="row">1</th>-->
                                    <td style="text-align: center" >${tmp.idtrandau}</td>
                                    <td style="text-align: center" >${tmp.ngaydienra}</td>
                                    <td>${tmp.tentrandau}</td>
                                    <td >${tmp.vitri}</td>                        
                                    <td style="text-align: right" >${tmp.tiencong}đ</td>                                       
                                </tr>
                            </c:forEach>


                        </table>
                        <!-- End Default Table Example -->
                        <!--                        </div>
                                            </div>-->
                        <div style="float: right"> Tổng tiền: ${tongtien}đ</div>
                        <br>
                        <br>
                        <button style="float: right; width: 200px" type="button" class="btn btn-primary"><a href="confirm?pids=${matt}" style="color: #ffffff">Xác nhận</a></button>
                        <!--<a href="#modal1" style="color: #ffffff" data-toggle="modal">Xác nhận</a>-->
                        <!--                    <script>
                                                function abc() {
                                                    if (confirm("Xác nhận thanh toán") == true) {
                                                        document.getElementById("demo").innerHTML = "Bạn muốn tiếp tục";
                                                    } else {
                                                        document.getElementById("demo").innerHTML =
                                                                "Bạn không muốn tiếp tục";
                                                    }
                                                }
                                            </script>-->
                        <!--                    <div class="modal" tabindex="-1" id="modal1">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title">Modal title</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p>Modal body text goes here.</p>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                            <button type="button" class="btn btn-primary"><a href="confirm?pids=${matt}">Save changes</a></button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>-->
                    </div>

                </div>
            </section>

        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer">

        </footer><!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
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
