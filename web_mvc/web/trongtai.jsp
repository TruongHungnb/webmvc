<%-- 
    Document   : trongtai
    Created on : Dec 5, 2021, 4:12:06 PM
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
                        <li class="breadcrumb-item active">Thanh toán trọng tài</li>
                    </ol>
                </nav>
            </div><!-- End Page Title -->

            <section class="section">
                <div class="row">
                    <div class="col-lg-12">

                        <div class="search-bar" >
                            <form class="search-form d-flex align-items-center" method="POST" action="search">
                                <input class="col-lg-5" type="text" name="txtname" placeholder="Tìm kiếm">
                                <button type="submit" title=""><i class="bi bi-search"> </i>Tìm kiếm</button>
                            </form>
                        </div>
<!--                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <i class="bi bi-check-circle me-1"></i>
                            ${imess}
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>-->

                        <!--                    s<div class="alert alert-success">
                        ${imess}                      
                    </div>-->
                        <br>
                        <div class="card">
                            <div class="card-body">
                                <table class="table">
                                    <tr>
                                        <!--<th scope="col">STT</th>-->
                                        <th scope="col" style="text-align: center; width: 25%" >Mã trọng tài</th>
                                        <th scope="col" style="text-align: center" >Tên trọng tài</th>
                                        <th scope="col" style="text-align: center" >SĐT</th>
                                    </tr>
                                    <c:forEach items="${listtt}" var="o">
                                        <tr >          
                                            <!--<th scope="row">1</th>-->
                                            <td style="text-align: center"><a href="load?pid=${o.id}" style="color: black">${o.id}</a></td>
                                            <td><a href="load?pid=${o.id}" style="color: black">${o.ten}</a></td>                        
                                            <td style="text-align: right"><a href="load?pid=${o.id}" style="color: black">${o.sdt}</a></td>                                       
                                        </tr>
                                    </c:forEach>
                                </table>
                                <!-- End Default Table Example -->
                            </div>
                        </div>
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