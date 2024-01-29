<?php

   extract($book_details);
   $html_random_book = show_books_random($html_random_book);

   //var_dump($book_details);
?>

<!-- Product Details Section Begin -->
<section class="product-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="product__details__pic">
                    <div class="product__details__pic__left product__thumb nice-scroll">
                        <a class="pt active" href="#product-1 ">
                            <img src="./publics/img/product/books/book_<?=$id?>_1.jpg" alt="">
                        </a>
                        <a class="pt" href="#product-2">
                            <img src="./publics/img/product/books/book_<?=$id?>_2.jpg" alt="">
                        </a>
                        <a class="pt" href="#product-3">
                            <img src="./publics/img/product/books/book_<?=$id?>_3.jpg" alt="">
                        </a>
                    </div> 
                    <div class="product__details__slider__content">
                        <div class="product__details__pic__slider owl-carousel" style="width: 412px;">
                            <img data-hash="product-1" class="product__big__img" src="./publics/img/product/books/book_<?=$id?>_1.jpg"
                                alt="">
                            <img data-hash="product-2" class="product__big__img" src="./publics/img/product/books/book_<?=$id?>_2.jpg"
                                alt="">
                            <img data-hash="product-3" class="product__big__img" src="./publics/img/product/books/book_<?=$id?>_3.jpg"
                                alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="product__details__text">
                    <h3><?=$title?><a href="index.php?pgs=books&au=<?=$author?>"><span><?=$author?></span></a></h3>

                    <div class="format_container">Định dạng: <span><?=$format?></span></div>
                    
                    <!-- <div class="product__details__price"><?=$GiaGiam?>đ<span><?=$price?>đ</span></div> -->
                    <?php
                        if(isset($book_details['GiaGiam']) && $book_details['GiaGiam'] > 0) {
                            echo '
                            <div class="product__details__price">'.$GiaGiam.'đ<span>'.$price.'đ</span></div>

                            ';
                        } else {
                            echo '
                            <div class="product__details__price">'.$price.'đ</div>

                            ';
                        }
                        //var_dump($book_details);
                    ?>
                  
                        <div class="product__details__button">
                            <div class="quantity">
                                <span>Quantity:</span>
                                <div class="pro-qty">
                                    <input id="quantity<?=$id?>" type="number" name="quantity" value="1" min="" max="" step="1">
                                </div>
                            </div>
                            <input id="name<?=$id?>" type="hidden" name="name" value="<?=$title?>">
                            <input id="cover<?=$id?>" type="hidden" name="cover" value="./publics/img/product/books/book_'<?=$id?>'_1.jpg">
                            <input id="price<?=$id?>" type="hidden" name="price" value="<?=$price?>">
                            <button id="<?=$id?>" type="submit" name="addcart " class="cart-btn add_to_cart"><span class="icon_bag_alt"></span> Add to cart</button>

                            <ul>
                                <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                <li><a href="#"><span class="icon_adjust-horiz"></span></a></li>
                            </ul>
                        </div>
    
                    <div class="product__details__widget">
                        <span><?=$views?> views</span>
                        <br>
                        <span> Số Lượng : <strong> <?=$soluong?></strong></span>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <span>( 138 reviews )</span>
                        </div>
                        <ul>
                            <li>
                                <span>Availability:</span>
                                <div class="stock__checkbox">
                                    <label for="stockin">
                                        In Stock
                                        <input type="checkbox" id="stockin">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </li>
                          
                            </li>
                            <li>
                                <span>Promotions:</span>
                                <p>Free shipping</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="product__details__tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">Mô Tả Sách</a>
                        </li>
                       
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">Bình luận Sản Phẩm</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <h6>Mô Tả</h6>
                            <p><?=$descript?></p>
                        </div>
                     
                        <div class="tab-pane" id="tabs-3" role="tabpanel">
                            <h6>Bình Luận Sản Phẩm</h6>
                            <hr><div id="binhluan">
                            <iframe src="views/comment.php?idsp=<?=$_GET['id']?>" width="100%" height="300px"frameborder="0"></iframe>

                            <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut loret fugit, sed
                                quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt loret.
                                Neque porro lorem quisquam est, qui dolorem ipsum quia dolor si. Nemo enim ipsam
                                voluptatem quia voluptas sit aspernatur aut odit aut loret fugit, sed quia ipsu
                                consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Nulla
                                consequat massa quis enim.</p>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget
                                dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes,
                                nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium
                                quis, sem.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="related__title">
                    <h5>Sản Phẩm Liên Quan</h5>
                </div>
            </div>
            <?=$html_random_book?>

            
          
            
        </div>
    </div>
</section>
<!-- Product Details Section End -->

