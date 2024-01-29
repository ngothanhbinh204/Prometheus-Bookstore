<?php
ob_start();
?>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/x-icon" href="./publics/img/favicon.svg">
    <title>Prometheus</title>

    <!-- Google Font -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="./publics/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="./publics/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="./publics/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="./publics/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="./publics/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="./publics/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="./publics/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="./publics/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder
    <div id="preloder">
        <div class="loader"></div>
    </div> -->

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__close">+</div>
        <ul class="offcanvas__widget">
            <li><span class="icon_search search-switch"></span></li>
            <li><a href="#"><span class="icon_heart_alt"></span>
                    <div class="tip">0</div>
                </a></li>
            <li><a href="#"><span class="icon_bag_alt"></span>
                    <div class="tip">0</div>
                </a></li>
        </ul>
        <div class="offcanvas__logo">
            <a href="index.php"><img src="./publics/img/logo.svg" alt=""></a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__auth">
            <a href="index.php?pgs=login">Login</a>
            <a href="#">Register</a>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-3 col-lg-2">
                    <div class="header__logo">
                        <a href="index.php"><img src="./publics/img/logo.svg" alt=""></a>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-7">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="index.php">Trang chủ</a></li>
                            <li><a href="index.php?pgs=books">Sách giấy</a></li>
                            <li><a href="index.php?pgs=eBooks">eBooks</a></li>
                            <li><a href="index.php?pgs=audioBooks">Sách nói</a></li>
                            <li><a href="index.php?pgs=blog">Tin tức</a></li>
                            <li><a href="index.php?pgs=contact">Liên Hệ</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__right">
                        <div class="header__right__auth">
                            <?php
                            if (isset($_SESSION['user'])) {
                                extract($_SESSION['user']);
                                $avatar_path = "publics/img/user/" . $avatar;
                                if (is_file($avatar_path)) {
                                    $avatar = "<img style=' width:60%; text-align:center; border-radius: 50%;' src='" . $avatar_path . "'>";
                                } else {
                                    $avatar = "No img";
                                }
                                ?>
                                <nav class="header__menu user_info_container">
                                    <ul class="user_infor">
                                        <li>
                                            <?= $avatar ?>

                                        </li>
                                        <li><a class="usr_name" href="">
                                                <?= $username ?>
                                            </a>
                                            <ul class="dropdown">
                                                <li>
                                                    <a href="index.php?pgs=orderList">Lịch sử mua hàng</a>
                                                </li>
                                                <li>
                                                    <a href="index.php?pgs=updateuser">Cập Nhật Tài Khoản</a>
                                                </li>
                                                <li>
                                                    <a href="index.php?pgs=updatePass">Cập Nhật Mật Khẩu</a>
                                                </li>
                                                <?php if ($is_admin == 1) { ?>
                                                    <li><a href="admin/index.php">Vào Admin</a></li>
                                                <?php } ?>

                                                <li><a href="index.php?pgs=logout">Đăng Xuất</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </nav>

                                <?php
                            } else {
                                ?>
                                <a href="index.php?pgs=login">Đăng nhập</a>
                                <a href="index.php?pgs=register">Đăng ký</a>
                            <?php } ?>

                        </div>
                        <ul class="header__right__widget">
                            <li><span class="icon_search search-switch"></span></li>
                            
                            <li><a href="index.php?pgs=shop-cart"><span class="icon_bag_alt"></span>
                                    <div class="tip c bag_item">0</div>
                                </a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="canvas__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->
