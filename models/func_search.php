<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    .product__item .image {
	width: 50%;
	border: green solid;
}

.show_book_seach .list-group {
	border: blue 2px solid;
}

.test1 {
	max-width: 500px;
}

.grid_search::-webkit-scrollbar {
	width: 0 !important;
	display: none;
}

.grid_search {
	align-items: center;

	overflow: auto;
	overflow: -moz-scrollbars-none;
	-ms-overflow-style: none;

	display: grid;
	grid-template-columns: repeat(2, 320px);
	grid-template-rows: repeat(2);
	grid-gap: 20px;
	max-height: 500px;
}

.grid_search .row .col-12 .image a img {
	width: 120px;
}

.grid_search .row .col2 {
	align-items: center;
}

.product__item__text  .sale_search {
	color: #ca1515;
	font-weight: 600;

}

.product__item__text .sale_search span {
	font-size: 14px;
	color: #b1b0b0;
	text-decoration: line-through;
	margin-left: 4px;
}
</style>
<body>
    
</body>
</html>
<?php require_once "pdo.php";


if (isset($_POST["action"])) {
    $search_input = $_POST["search_input"];
    $sql = "SELECT book_images.images as img, books.title as title, books.id as id, authors.au_name as author, formats.fm_name as format, books.price as price, ROUND((books.price * books.sale_off/100), 3) as GiaGiam FROM `books` 
    INNER JOIN `book_images` on books.id = book_images.book_id 
    INNER JOIN `authors` on authors.id = books.au_id 
    INNER JOIN `formats` on formats.id = books.fm_id 
     WHERE title LIKE '%$search_input%' AND book_images.images LIKE '%_1.jpg%' ORDER BY id desc  ;
    -- OR `authors` LIKE '%$search_input%'
    -- OR `isbn_10` LIKE '%$search_input%'
    -- OR `price` LIKE '%$search_input%'
    ";
    $result = pdo_query($sql);
    $output = "";

    foreach ($result as $value) {
        extract($value);
        $sale = "";
        if ($GiaGiam > 0) {
            $sale = "
            <div class=' sale_search '>$GiaGiam đ<span>$price đ</span></div>";
        } else {
            $sale = "
            <div class=' sale_search '>$price đ</div>
            ";
        }
        //    $output.='
        //    <li class="list-group">
        //             <div class="row">
        //                 <div class="col-3">
        //                     <div class="image"><a href="index.php?pgs=productDetail&id=' . $id . '"> <img src="./publics/img/product/books/'.$img.'"alt=""> </a></div>
        //                 </div>
        //                 <div class="col-9">
        //                     <div class="name_product">
        //                         <a href="index.php?pgs=productDetail&id=' . $id . '">'.$value["title"].'</a>
        //                     </div>
        //                     <div class="price_product">
        //                         <a href="">'.number_format($value["price"]).'&nbspđ</a>
        //                     </div>
        //                 </div>
        //             </div>
        //         </li>
        //    ';
        // }
        // echo $output;

        $output .= '
        
        <div class="row test1">
            <div class="col-12 product__item__text col1">
            <div class="image"><a href="index.php?pgs=productDetail&id=' . $id . '"> <img src="./publics/img/product/books/' . $img . '"alt=""> </a></div>
            <br>
                <h8><a style="font-weight:400" href="index.php?pgs=productDetail&id=' . $id . '">' . $title . '</a></h8>
                <br>
                <h9>' . $author . '</h9>
                <br>
                
                <h9>Định dạng : <strong>' . $format . '</strong></h9>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </div>
                ' . $sale . '
            </div>
           
        </div>
    ';
    }
    echo $output;
}
