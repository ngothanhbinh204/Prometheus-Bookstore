<div class="row">
  <div class="col-lg-12 ">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title">Danh Sách Tin Tức</h4>
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

        <a href="index.php?act=addBlog">
          <button type="button" class="btn btn-primary">
            <i class="far fa-plus-square" style="color: #ffffff;"></i>
            Thêm Tin Tức
          </button>
        </a>


        <div class="table-responsive">
          <table id="example" class="display expandable-table" style="width:100%">
            <thead>
              <tr>
                <th>ID</th>
                <th>Tiêu Đề</th>
                <th>Hình Ảnh</th>
                <th>Nội dung</th>
                <th>Người đăng</th>
                <th>Ngày Đăng</th>
                <th>Thao Tác</th>


              </tr>
            </thead>
            <tbody>
              <?php

              foreach ($listBlog as $blog) {
                extract($blog);
                $updateBlog = "index.php?act=updateBlog&id=" . $id;
                $delBlog = "index.php?act=delBlog&id=" . $id;
                $image_path = '../publics/img/blog/'.$img;
                if (is_file($image_path)) {
                  $image = '<img src="'.$image_path.'" width="80">';
                } else {
                  $image = "Chưa Có Hình Ảnh Sản Phẩm";
                }
                echo '
                <tr>
                  <td>' . $id . '</td>
                  <td>' . $title . '</td>
                  <td>' . $image . '</td>
                  <td>' . $content . '</td>
                  <td>' . $username . '</td>
                  <td>' . $ngaytao . '</td>
                  <td>
                  <a href="' . $updateBlog . '" class="btn btn-warning"><i class="fa-solid fa-pen-to-square"></i> Sửa</a>
                  <a href="' . $delBlog . '" class="btn btn-danger"><i class="fa-solid fa-trash"></i> Xóa</a></td>
              </tr>';
              }
              ?>

            </tbody>
            <tfoot>
              <tr>
                <th>ID</th>
                <th>Tiêu Đề</th>
                <th>Hình Ảnh</th>
                <th>Nội dung</th>
                <th>Người đăng</th>
                <th>Ngày Đăng</th>
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
