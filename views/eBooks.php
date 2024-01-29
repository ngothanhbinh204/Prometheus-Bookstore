<?php

$html_language = lang_list($lang_list);
$html_categ = categs_list_ebooks($categs_list);
//$html_books_list = show_books($books_list);

include "views/pagination.php";

if ($titlepage != "")
    $title = $titlepage;
else
    $title = "Sách giấy";
?>
<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__links">
                    <a href="index.php"><i class="fa fa-home"></i> Trang chủ</a>
                    <span>Sách giấy</span>
                    <?php
                    if (isset($_GET['categ_id'])) {
                        $nameCateg = get_categ_name($_GET['categ_id']);
                        echo ' <span> > Thể Loại :</span>
                            <span style="color:#ef4e23" >' . $nameCateg . '</span>
                            ';
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->

<!-- Shop Section Begin -->
<section class="shop spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3">
                <div class="shop__sidebar">
                    <div class="sidebar__categories">
                        <div class="section-title">
                            <h4>Danh Mục</h4>
                        </div>
                        <div class="categories__accordion">
                            <div class="accordion" id="accordionExample">
                                <div class="card">
                                    <?= $html_categ ?>
                                </div>


                            </div>
                        </div>
                    </div>

                    <div class="sidebar__categories">
                        <div class="section-title">
                            <h4>Ngôn ngữ</h4>
                        </div>
                        <div class="categories__accordion">
                            <div class="accordion" id="accordionExample">
                                <div class="card">
                                    <?= $html_language ?>
                                </div>


                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-lg-9 col-md-9">
                <div class="row">

                    <?php

                    if (isset($_GET['categ_id'])) {
                        $categ_id = $_GET['categ_id'];
                        $limit = 9;
                        if (isset($_GET["page"])) {
                            $page = $_GET["page"];
                        } else {
                            $page = 1;
                        };
                        $start = ($page - 1) * $limit;
                        $button_last = "";
                        $button_next = "";
                        $button_prev = "";
                        //echo $total_pages;

                        if ($page > 1) {
                            $button_last = '<a class="page-link" href="index.php?pgs=eBooks&categ_id=' . $categ_id . '&page=' . ($total_pages) . '"><i class="fa fa-angle-right"></i></a>';
                        }

                        if ($page < $total_pages && $total_pages > 1) {
                            $button_next = '<a class="page-link" href="index.php?pgs=eBooks&categ_id=' . $categ_id . '&page=' . ($page + 1) . '"><i class="fa fa-angle-right"></i></a>';
                        }

                        if ($page > 1 && $total_pages > 1) {
                            $button_prev = '<a class="page-link" href="index.php?pgs=eBooks&categ_id=' . $categ_id . '&page=' . ($page - 1) . '"><i class="fa fa-angle-left"></i></a>';
                        }

                        $stmtbook = $conn->query("SELECT DISTINCT  books.id as id, books.title as title, books.price as price, authors.au_name as author, fm_id as format
                        FROM books 
                        INNER JOIN authors 
                        ON authors.id = books.au_id
                        INNER JOIN book_categories 
                        ON book_categories.bk_id = books.id
                        WHERE books.fm_id = 2 and book_categories.categ_id = $categ_id
                       ORDER BY id ASC limit $start, $limit");
                        while ($books = $stmtbook->fetch(PDO::FETCH_ASSOC)) {
                            extract($books);

                            echo '
                           <div class="col-lg-4 col-md-6">
                           <div class="product__item">
                               <div class="product__item__pic set-bg" data-setbg="./publics/img/product/books/book_' . $id . '_1.jpg">
                                       
                                       <ul class="product__hover">
                                   
                                           <li><a href="./publics/img/product/books/book_' . $id . '_1.jpg" class="image-popup"><span
                                                       class="arrow_expand"></span></a></li>
                                           <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                           
                                           <li>
                                           <input id="quantity' . $id . '" type="hidden" name="quantity" value="1">
                                           <input id="price' . $id . '" type="hidden" name="price" value="' . $price . '">
                                           <input id="name' . $id . '" type="hidden" name="title" value="' . $title . '">
                                           <input id="quantity' . $id . '" type="hidden" name="quantity" value="1">
                                           <button id="' . $id . '" type="submit" name="add_to_cart" class="add_to_cart" value="Add to Cart"><span class="icon_bag_alt add_to_cart"></span></button></li>
                                           </form>
                                       </ul>
                           
                           
                               </div>
                               <div class="product__item__text">
                                   <h5><a href="index.php?pgs=productDetail&id=' . $id . '">' . $title . '</a></h5>
                                   <h6><a href="#">' . $author . '</a></h6>
                                   <div class="rating">
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                   </div>
                                   <div class="product__price">' . $price . 'đ</div>
                               </div>
                           </div>
                   </div>
                           ';
                        }
                        echo '
                        <div class="col-lg-12 text-center button_prev_next">
                        <div class="pagination__option">
                        ' . $button_prev . '
                        ' . $button_next . '
                        

                        </div>
                    </div>

                    <div class="col-lg-12 text-center ">
                        <div class="pagination__option">
                        ' . $pagLink_ebooks . '
                        ' . $button_last . '

                        </div>
                    </div>
                        ';




                        // nếu không có categ_id thì xuất ra hết sản phẩm
                    }



                    if (!isset($_GET['categ_id'])) {

                        $limit = 9;
                        if (isset($_GET["page"])) {
                            $page = $_GET["page"];
                        } else {
                            $page = 1;
                        };
                        $start = ($page - 1) * $limit;


                        $stmtbook = $conn->query("SELECT DISTINCT  books.id as id, books.title as title, books.price as price, authors.au_name as author, books.sale_off as sale_off ,  ROUND((books.price * books.sale_off/100), 3) as GiaGiam
                        FROM books 
                        INNER JOIN authors 
                        ON authors.id = books.au_id
                        INNER JOIN book_categories 
                        ON book_categories.bk_id = books.id
                        WHERE books.fm_id = 1  
                       ORDER BY id ASC limit $start, $limit");

                        while ($books = $stmtbook->fetch(PDO::FETCH_ASSOC)) {
                            extract($books);




                            echo '
                           <div class="col-lg-4 col-md-6">
                           <div class="product__item">
                               <div class="product__item__pic set-bg" data-setbg="./publics/img/product/books/book_' . $id . '_1.jpg">
                               ' . $sale_button . '
                                       <ul class="product__hover">
                                      
                                   
                                           <li><a href="./publics/img/product/books/book_' . $id . '_1.jpg" class="image-popup"><span
                                                       class="arrow_expand"></span></a></li>
                                           <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                           
                                           <li>
                                           <input id="quantity' . $id . '" type="hidden" name="quantity" value="1">
                                           <input id="price' . $id . '" type="hidden" name="price" value="' . $price . '">
                                           <input id="name' . $id . '" type="hidden" name="title" value="' . $title . '">
                                           <input id="quantity' . $id . '" type="hidden" name="quantity" value="1">
                                           <button id="' . $id . '" type="submit" name="add_to_cart" class="add_to_cart" value="Add to Cart"><span class="icon_bag_alt add_to_cart"></span></button></li>
                                           </form>
                                       </ul>
                           
                           
                               </div>
                               <div class="product__item__text">
                                   <h5><a href="index.php?pgs=productDetail&id=' . $id . '">' . $title . '</a></h5>
                                   <h6><a href="#">' . $author . '</a></h6>
                                   <div class="rating">
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                   </div>
                                   <div class="product__price">' . $price . 'đ</div>
                               </div>
                           </div>
                   </div>
                           ';
                        }

                        echo '

                        <div class="col-lg-12 text-center button_prev_next">
                        <div class="pagination__option">
                        ' . $button_prev_ebook . '
                        ' . $button_next_ebook . '
                        
                        </div>
                    </div> ';
                    }
                    ?>
                    <div class="col-lg-12 text-center ">
                        <div class="pagination__option">

                            <?php
                            if (!isset($_GET['categ_id'])) {
                                echo '
                                    ' . $button_first_ebook . '
                                    ' . $button_prev_ebook . '
                                ';
                                for ($i = 1; $i <= $totalPages1; $i++) {
                                    if ($current_page1 != $i) {
                                        if ($i > $current_page1 - 3 && $i < $current_page1 + 3) {
                                            echo  "<a class='page_link' href='index.php?pgs=eBooks&page=$i'>$i</a>";
                                        }
                                    } else {
                                        echo  "<a class='page_link page_strong' href='index.php?pgs=eBooks&page=$i'>$i</a>";
                                    }
                                }
                                echo '
                            ' . $button_next_ebook . '
                            ' . $button_last_ebook . '
                        ';
                            }

                            ?>





                        </div>
                    </div>


                </div>
            </div>
        </div>

    </div>
</section>
<!-- Shop Section End -->