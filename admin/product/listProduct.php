<?php
  $soluongsanpham = count_books();
  extract($soluongsanpham);
?>
<div class="row">
  <div class="col-lg-12 ">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title">Danh Sách Sản Phẩm</h4>
        <div class="col-sm-6 col-md-4 col-lg-3">
        </div>

        <?php if (isset($thongbao)) : ?>
          <div class="alert alert-success" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <?php echo $thongbao ?>
          </div>
        <?php endif ?>

        <?php if (isset($thongbao_del)) : ?>
          <div class="alert alert-success" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <?php echo $thongbao_del ?>
          </div>
        <?php endif ?>

        <a href="index.php?act=addProduct">
          <button type="button" class="btn btn-primary">
            <i class="far fa-plus-square" style="color: #ffffff;"></i>
            Thêm Sản Phẩm
          </button>
        </a>

        <div class=" card-tale">
                    <div class="card-body">
                      <p class="mb-4">Số Lượng Sách Trong Kho</p>
                      <p class="fs-30 mb-2"><?=$total_books?></p>
                      <!-- <p>10.00% (30 days)</p> -->
                    </div>
                  </div>


        <div class="table-responsive">
          <table id="example" class="display expandable-table" style="width:100%">
            <thead>
              <tr>
                <th>ID</th>
                <th>Tiêu Đề</th>
                <th>Hình Ảnh</th>
                <th>Giá</th>
                <th>Loại Sách</th>
                <th>Tác Giả</th>
                <th>Nhà Xuất Bản</th>
                <th>Ngày Xuất Bản</th>
                <th>Thao Tác</th>


              </tr>
            </thead>
            <tbody>
              <?php

              $limit = 20;
              $stmt = $conn->query("SELECT DISTINCT COUNT(books.id) , books.id as id , books.title as title, bk_img.images as image , books.price as price, books.book_description as book_description, books.creation_date as creation_date, fr.fm_name as fr_name, au.au_name as au_name, pub.pub_name as pub_name
              FROM `books` 
              INNER JOIN authors as au on au.id = books.au_id
              INNER JOIN formats as fr on fr.id = books.fm_id
              INNER JOIN publishers as pub on pub.id = books.pub_id
              INNER JOIN book_images as bk_img on bk_img.book_id= books.id
              WHERE 1 and bk_img.images LIKE '%_1.jpg' ");
              $row_db = $stmt->fetch();
              $total_records = $row_db[0];
              $total_pages = ceil(($total_records) / $limit);
              $pagLink_books = "";
              for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
                $pagLink_books .= "<a class='page-link' href='index.php?act=listProduct&page=" . $countpage . "'>" . $countpage . "</a>";
              }



              $limit = 20;
              if (isset($_GET["page"])) {
                $page = $_GET["page"];
              } else {
                $page = 1;
              };
              $start = ($page - 1) * $limit;


              $stmtbook = $conn->query("SELECT DISTINCT books.id as id , books.title as title, bk_img.images as image , books.price as price, books.book_description as book_description, books.creation_date as creation_date, fr.fm_name as fr_name, au.au_name as au_name, pub.pub_name as pub_name
          FROM `books` 
          INNER JOIN authors as au on au.id = books.au_id
          INNER JOIN formats as fr on fr.id = books.fm_id
          INNER JOIN publishers as pub on pub.id = books.pub_id
          INNER JOIN book_images as bk_img on bk_img.book_id= books.id
          WHERE 1 and bk_img.images LIKE '%_1.jpg' 
ORDER BY id ASC limit $start, $limit");
              $button_last = "";
              $button_next = "";
              $button_prev = "";
              //echo $total_pages;
              $sale_button = "";



              if ($page > 1) {
                $button_last = '<a class="page-link" href="index.php?act=listProduct&page=' . ($total_pages) . '"><i class="fa fa-angle-right"></i></a>';
              }

              if ($page < $total_pages && $total_pages > 1) {
                $button_next = '<a class="page-link" href="index.php?act=listProduct&page=' . ($page + 1) . '"><i class="fa fa-angle-right"></i></a>';
              }

              if ($page > 1 && $total_pages > 1) {
                $button_prev = '<a class="page-link" href="index.php?act=listProduct&page=' . ($page - 1) . '"><i class="fa fa-angle-left"></i></a>';
              }



              while ($books = $stmtbook->fetch(PDO::FETCH_ASSOC)) {
                extract($books);
                $updateProduct = "index.php?act=page_updateProduct&id=" . $id;
                $updateImages = "index.php?act=page_updateImages&id=" . $id;
                $delProduct = "index.php?act=delProduct&id=" . $id;
                $image_path = "../publics/img/product/books/" . $image;
                if (is_file($image_path)) {
                  $image = "<img src='" . $image_path . "' height='100'>";
                } else {
                  $image = "Chưa Có Hình Ảnh Sản Phẩm";
                }

                echo '
          <tr>
            <td>' . $id . '</td>
            <td>' . $title . '</td>
            <td>' . $image . '</td>
            <td>' . $price . '</td>
            <th>' . $fr_name . '</th>
            <td>' . $au_name . '</td>
            <th>' . $pub_name . '</th>
            <td>' . $creation_date . '</td>
            <td>
              <a href="' . $updateProduct . '" class="btn btn-warning"><i class="fa-solid fa-pen-to-square"></i> Sửa Thông Tin</a>
              <a href="' . $updateImages . '" class="btn btn-warning"><i class="fa-solid fa-pen-to-square"></i> Sửa Ảnh</a>
              <a href="' . $delProduct . '" class="btn btn-danger"><i class="far fa-tv style="color: #ffffff;"></i> Xóa</a></td>
        </tr>';
              }
              echo '
<div class="col-lg-12 text-center">
<div class="pagination__option">
<a class="page-link" href="index.php?act=listProduct&page=1"> <i class="fa fa-angle-left"></i>
</a>
' . $pagLink_books . '

' . $button_last . '

</div>
</div>
';


              // foreach ($listbook_au_fr_pub as $product) {
              //   extract($product);
              //   $updateProduct = "index.php?act=page_updateProduct&id=" . $id;
              //   $updateImages = "index.php?act=page_updateImages&id=" . $id;
              //   $delProduct = "index.php?act=delProduct&id=" . $id;
              //   $image_path = "../publics/img/product/books/" . $image;
              //   if (is_file($image_path)) {
              //     $image = "<img src='" . $image_path . "' height='100'>";
              //   } else {
              //     $image = "Chưa Có Hình Ảnh Sản Phẩm";
              //   }
              //   echo '
              //   <tr>
              //     <td>' . $id . '</td>
              //     <td>' . $title . '</td>
              //     <td>' . $image . '</td>
              //     <td>' . $price . '</td>
              //     <th>' . $fr_name . '</th>
              //     <td>' . $au_name . '</td>
              //     <th>' . $pub_name . '</th>
              //     <td>' . $creation_date . '</td>
              //     <td>
              //       <a href="' . $updateProduct . '" class="btn btn-warning"><i class="fa-solid fa-pen-to-square"></i> Sửa Thông Tin</a>
              //       <a href="' . $updateImages . '" class="btn btn-warning"><i class="fa-solid fa-pen-to-square"></i> Sửa Ảnh</a>
              //       <a href="' . $delProduct . '" class="btn btn-danger"><i class="far fa-tv style="color: #ffffff;"></i> Xóa</a></td>
              // </tr>';
              // }
              // 
              ?>


              <!-- 
        <tr>
          <td>1</td>
          <td>Herman Beck</td>
          <td class="py-1"> <img src="../images/faces/face1.jpg" alt="image" /> </td>
          <td>$ 77.99</td>
          <th>Ebooks</th>
          <td>Jane Austen</td>
          <th>Kim Đồng</th>
          <td>May 15, 2015</td>
          <td>May 15, 2015</td>
        </tr> -->

            </tbody>
            <tfoot>
              <tr>
                <th>ID</th>
                <th>Tiêu Đề</th>
                <th>Hình Ảnh</th>
                <th>Giá</th>
                <th>Loại Sách</th>
                <th>Tác Giả</th>
                <th>Nhà Xuất Bản</th>
                <th>Ngày Xuất Bản</th>
                <th>Thao Tác</th>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>
    </div>
  </div>



  <!-- content-wrapper ends -->
  <!-- partial:../partials/_footer.html -->

  <!-- partial -->
</div>