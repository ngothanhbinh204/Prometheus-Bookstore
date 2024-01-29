<?php
    extract($blogDetail);

?>


<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="./index.html"><i class="fa fa-home"></i> Trang chủ</a>
                        <a href="./index.php?pgs=blog">Tin tức</a>
                        <span><?=$title?></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="blog__details__content">
                        <div class="blog__details__item">
                            <img src="./publics/img/blog/<?=$img?>" alt="">
                            <div class="blog__details__item__title">
                                <h4><?=$title?></h4>
                                <ul>
                                    <li>Người đăng <span><?=$username?></span></li>
                                    <li><?=$ngaytao?></li>
                                </ul>
                            </div>
                        </div>
                        <div class="blog__details__desc">
                            <p><?=$content?></p>
                        </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->
