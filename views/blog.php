<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__links">
                    <a href="index.php"><i class="fa fa-home"></i> Trang chủ</a>
                    <span>Tin tức</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->

<!-- Blog Section Begin -->
<section class="blog spad">
<div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <?php
                    
                        foreach ($list_blog1 as $blog) {
                            extract($blog);
                            echo '<div class="blog__item">
                                    <div class="blog__item__pic large__item set-bg" data-setbg="./publics/img/blog/'.$img.'"></div>
                                    <div class="blog__item__text">
                                        <h6><a href="index.php?pgs=blogDetail&idBlog='.$id.'">'.$title.'</a></h6>
                                      
                                        <ul>
                                            <li>by <span>'.$username.'</span></li>
                                            <li>'.$ngaytao.'</li>
                                        </ul>
                                    </div>
                                </div>';
                        }
                    ?>
                    
                    <?php
                        foreach ($list_blog2 as $blog) {
                            extract($blog);
                            echo '<div class="blog__item">
                                    <div class="blog__item__pic set-bg" data-setbg="./publics/img/blog/'.$img.'"></div>
                                    <div class="blog__item__text">
                                    
                                        <h6><a href="index.php?pgs=blogDetail&idBlog='.$id.'">'.$title.'</a></h6>
                                        <ul>
                                            <li>by <span>'.$username.'</span></li>
                                            <li>'.$ngaytao.'</li>
                                        </ul>
                                    </div>
                                </div>';
                        }
                    ?>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <?php
                        foreach ($list_blog3 as $blog) {
                            extract($blog);
                            echo '<div class="blog__item">
                                    <div class="blog__item__pic set-bg" data-setbg="./publics/img/blog/'.$img.'"></div>
                                    <div class="blog__item__text">
                                        <h6><a href="index.php?pgs=blogDetail&idBlog='.$id.'">'.$title.'</a></h6>
                                        <ul>
                                            <li>by <span>'.$username.'</span></li>
                                            <li>'.$ngaytao.'</li>
                                        </ul>
                                    </div>
                                </div>';
                        }
                    ?>
                    
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <?php
                    foreach ($list_blog4 as $blog) {
                        extract($blog);
                        echo '<div class="blog__item">
                                <div class="blog__item__pic set-bg" data-setbg="./publics/img/blog/'.$img.'"></div>
                                <div class="blog__item__text">
                                    <h6><a href="index.php?pgs=blogDetail&idBlog='.$id.'">'.$title.'</a></h6>
                                    <ul>
                                        <li>by <span>'.$username.'</span></li>
                                        <li>'.$ngaytao.'</li>
                                    </ul>
                                </div>
                            </div>';
                    }
                    ?>
                     <?php
                        foreach ($list_blog5 as $blog) {
                            extract($blog);
                            echo '<div class="blog__item">
                                    <div class="blog__item__pic large__item set-bg" data-setbg="./publics/img/blog/'.$img.'"></div>
                                    <div class="blog__item__text">
                                        <h6><a href="index.php?pgs=blogDetail&idBlog='.$id.'">'.$title.'</a></h6>
                                        <ul>
                                            <li>by <span>'.$username.'</span></li>
                                            <li>'.$ngaytao.'</li>
                                        </ul>
                                    </div>
                                </div>';
                        }
                    ?>
                </div>
                <div class="col-lg-12 text-center">
                    <a href="#" class="primary-btn load-btn">Xem Nhiều Tin Tức Hơn</a>
                </div>
            </div>
            </div>   </section>
<!-- Blog Section End -->
