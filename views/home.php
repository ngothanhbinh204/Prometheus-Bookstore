<!-- Categories Section Begin -->
<!-- <style>
    .categories__text {
        color: red;
    }  
</style> -->

<?php

$html_new_book = show_books_home($list_new_book);
$html_books_promotional = show_books_promotional($list_books_promotional);
$html_books_besteller = show_books_home($list_books_besteller);
//var_dump($list_books_promotional);
?>
<section class="categories">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 p-0">
                <div class="categories__item categories__large__item set-bg" data-setbg="./publics/img/categories/banner-book-1.jpg">
                    <div class="categories__text">
                        <h2>Tiểu thuyết - văn học</h2>
                        <p style="color: white;">Sách tiểu thuyết văn học là một thể loại văn học nghệ thuật, tập trung vào việc sáng tạo và mô tả các câu chuyện hư cấu với nhân vật, bối cảnh, và sự kiện được tạo ra bởi tác giả</p>
                        <a style="color: white;" href="index.php?pgs=books&categ_id=1">Xem Ngay</a>

                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div style="filter:brightness(90%);" class="categories__item set-bg" data-setbg="./publics/img/categories/banner-book-triethoc.jpg">
                            <div class="categories__text">
                                <h4>Triết Học</h4>
                                <p style="color: white;" >Triết học là bộ môn nghiên cứu về những vấn đề chung và cơ bản của con người, thế giới quan, những vấn đề có kết nối với chân lý, sự tồn tại, kiến thức, giá trị, quy luật, ý thức, và ngôn ngữ.</p>
                                <a class="button_viewnow" href="index.php?pgs=books&categ_id=4">Xem Ngay</a>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div style="filter:brightness(90%);" class="categories__item set-bg" data-setbg="./publics/img/categories/banner-book-3.jpg">
                            <div  class="categories__text">
                                <h4>Lịch sử</h4>
                                <p style="color: white;">Sách lịch sử là thể loại văn học mà mục tiêu chính là nghiên cứu, mô tả và giải thích những sự kiện, người, và hiện tượng đã xảy ra trong quá khứ.</p>
                                <a href="index.php?pgs=books">Xem Ngay</a>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div style="filter:brightness(90%);" class="categories__item set-bg" data-setbg="./publics/img/categories/banner-book-khoahoc.jpg">
                            <div class="categories__text">
                                <h4 >Khoa học</h4>
                                <p >Sách Khoa học là nguồn tài liệu quan trọng mang đến kiến thức, thông tin và hiểu biết về các lĩnh vực khoa học đa dạng.</p>
                                <a  href="index.php?pgs=books&categ_id=8">Xem Ngay</a>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div style="filter:brightness(90%);" class="categories__item set-bg" data-setbg="./publics/img/categories/banner-book-chinhtri.jpg">
                            <div class="categories__text">
                                <h4>Chính Trị</h4>
                                <p style="color: white;" >Sách Kinh tế & Tài chính là một thể loại tài liệu tập trung vào việc nghiên cứu và truyền đạt kiến thức về các khía cạnh của nền kinh tế và quản lý tài chính</p>
                                <a href="index.php?pgs=books">Xem Ngay</a>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Categories Section End -->


<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="section-title">
                    <h4>Sách Mới</h4>
                </div>
            </div>
            <!-- <div class="col-lg-8 col-md-8">
                <ul class="filter__controls">
                    <li class="active" data-filter="*">All</li>
                    <li data-filter=".women">Women’s</li>
                    <li data-filter=".men">Men’s</li>
                    <li data-filter=".kid">Kid’s</li>
                    <li data-filter=".accessories">Accessories</li>
                    <li data-filter=".cosmetic">Cosmetics</li>
                </ul>
            </div> -->
        </div>


        <div class="row property__gallery">
            <?=$html_new_book?>

            <!-- <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="./publics/img/product/product-1.jpg">
                        <div class="label new">New</div>
                        <ul class="product__hover">
                            <li><a href="./publics/img/product/product-1.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Buttons tweed blazer</a></h6>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product__price">$ 59.0</div>
                    </div>
                </div>
            </div>   -->
        </div>
    </div>
</section>
<!-- Product Section End -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="section-title">
                    <h4>Sách bán chạy</h4>
                </div>
            </div>`
            <!-- <div class="col-lg-8 col-md-8">
                <ul class="filter__controls">
                    <li class="active" data-filter="*">All</li>
                    <li data-filter=".women">Women’s</li>
                    <li data-filter=".men">Men’s</li>
                    <li data-filter=".kid">Kid’s</li>
                    <li data-filter=".accessories">Accessories</li>
                    <li data-filter=".cosmetic">Cosmetics</li>
                </ul>
            </div> -->
        </div>
        <div class="row property__gallery">
            <?=$html_books_besteller?>
            <!-- <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="./publics/img/product/product-1.jpg">
                        <a href=""></a>
                        <div class="label new">New</div>
                        <ul class="product__hover">
                            <li><a href="./publics/img/product/product-1.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Buttons tweed blazer</a></h6>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product__price">$ 59.0</div>
                    </div>
                </div>
            </div>  -->
        </div>
</section>
<!-- Product Section End -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="section-title">
                    <h4>SÁCH KHUYẾN MẠI</h4>
                </div>
            </div>
            <!-- <div class="col-lg-8 col-md-8">
                <ul class="filter__controls">
                    <li class="active" data-filter="*">All</li>
                    <li data-filter=".women">Women’s</li>
                    <li data-filter=".men">Men’s</li>
                    <li data-filter=".kid">Kid’s</li>
                    <li data-filter=".accessories">Accessories</li>
                    <li data-filter=".cosmetic">Cosmetics</li>
                </ul>
            </div> -->
        </div>
        <div class="row property__gallery">
        <?=$html_books_promotional?>

            <!-- <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="./publics/img/product/product-1.jpg">
                        <div class="label new">New</div>
                        <ul class="product__hover">
                            <li><a href="./publics/img/product/product-1.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">Buttons tweed blazer</a></h6>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product__price">$ 59.0</div>
                    </div>
                </div>
            </div> -->

        </div>
    </div>
</section>
<!-- Product Section End -->

<!-- Banner Section Begin -->
<section class="banner set-bg" data-setbg="./publics/img/banner/banner-4.jpg">
    <div class="container">
        <div class="row">
            <div class="col-xl-7 col-lg-8 m-auto">
                <div class="banner__slider owl-carousel">
                    <div class="banner__item">
                        <div class="banner__text">
                        <span>Bộ sưu tập mùa đông</span>
                            <h1>Danh sách sách</h1>
                            <a href="index.php?pgs=books">Xem Ngay</a>

                        </div>
                    </div>
                    <div class="banner__item">
                        <div class="banner__text">
                        <span>Mùa đông sắp tới</span>
                            <h1>Danh sách sách</h1>
                            <a href="index.php?pgs=books">Xem Ngay</a>

                        </div>
                    </div>
                    <div class="banner__item">
                        <div class="banner__text">
                        <span>Mùa đông giáng sinh</span>
                            <h1>Danh sách sách</h1>
                            <a href="index.php?pgs=books">Xem Ngay</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Banner Section End -->

<!-- Discount Section Begin -->
<section class="discount">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 p-0">
                <div class="discount__pic">
                    <img src="./publics/img/discount.jpg" alt="">
                </div>
            </div>
            <div class="col-lg-6 p-0">
                <div class="discount__text">
                    <div class="discount__text__title">
                    <span>Giảm giá</span>
                        <h2>Mùa đông 2023</h2>
                        <h5><span>giảm gía</span> 50%</h5>

                    </div>
                    <div class="discount__countdown" id="countdown-time">
                        <div class="countdown__item">
                            <span>22</span>
                            <p>Ngày</p>
                        </div>
                        <div class="countdown__item">
                            <span>18</span>
                            <p>Giờ</p>
                        </div>
                        <div class="countdown__item">
                            <span>46</span>
                            <p>Phút</p>
                        </div>
                        <div class="countdown__item">
                            <span>05</span>
                            <p>Giây</p>
                        </div>
                    </div>
                    <a href="index.php?pgs=books">Xem Ngay</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Discount Section End -->

<!-- Services Section Begin -->
<section class="services spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-car"></i>
                    <h6>Giao hàng miễn phí</h6>
                    <p>Đối với tất cả các đơn đặt hàng trên 150.000đ</p>

                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-money"></i>
                    <h6>Đảm bảo hoàn tiền</h6>
                    <p>Nếu sản phẩm không tốt</p>

                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-support"></i>
                    <h6>Hỗ trợ trực tuyến 24/7</h6>
                    <p>Hỗ trợ tận tình</p>

                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-headphones"></i>
                    <h6>Thanh toán an toàn</h6>
                    <p>Thanh toán an toàn 100%</p>

                </div>
            </div>
        </div>
    </div>
</section>
<!-- Services Section End -->