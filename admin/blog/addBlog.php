<div class="col-10 grid-margin stretch-card">
  <div class="card">
    <div class="card-body">
      <h4 class="card-title">Thêm Sản Phẩm Mới</h4>
      <p class="card-description">
        Thêm Sản Phẩm Mới
      </p>

      <!-- Form Thêm sp -->
      <form action="index.php?act=addBlog" method="post" enctype="multipart/form-data" class="forms-sample">

        <!-- Thông Báo Khi Thêm SP Mới Thành Công -->
        <?php if (isset($thongbao)) : ?>
          <div class="alert alert-success" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <?php echo $thongbao ?>
          </div>
        <?php endif ?>
        <!-- Thông Báo Khi Thêm SP Mới Thành Công -->

        <div class="form-group">
          <label for="exampleInputName1">Tên Tiêu đề</label>
          <input type="text" name="title" class="form-control" id="" placeholder="Tên Tiêu đề" required id="title">
        </div>

        <div class="form-group">
          <label for="exampleSelectGender">Người Đăng (ADMIN)</label>
          <select name="iduseradmin" class="form-control" id="">
            <?php
            foreach ($list_userAdmin as $user) {
              extract($user);
              if($id==$admin_id){
                    $slc="selected";
                }else{
                    $slc="";
                }
              echo '<option value="'.$id.'" '.$slc.'>'.$username.'</option>';
            }
            ?>
          </select>
        </div>




        <div class="form-group">
          <label for="exampleInputPassword4">Nội dung tin tức</label>
          <input type="text" name="content" class="form-control" id="" placeholder="Nhập nội dung" required>
        </div>

        <div class="form-group">
          <label for="">Ngày Xuất Bản</label>
          <input style="width:20%" type="date" name="creation_date" class="form-control" id="current-time" placeholder="Ngày Xuất Bản" required>          
        </div>

        

        <div class="form-group">
          <label>Ảnh Tin Tức</label>
          <!-- <input type="file" name="image" required> -->
          <div class="input-group col-xs-12">
            <td>
              <input  class="form-control file-upload-info"  name="img" type="file" size="50" />
            </td>
          </div>
        </div>




        <button type="reset" name="" class="btn btn-primary mr-2" value="Nhập Lại">Nhập Lại</button>

        <button type="submit" name="button_addBlog" class="btn btn-primary mr-2">Gửi</button>
        <a class="btn btn-primary mr-2" href="index.php?act=listBlog"> Danh Sách Tin Tức</a>
        <a class="btn btn-light" href="index.php?act=listBlog"> Thoát</a>
        <div id="current-time"></div>

      </form>

      <!-- Form Thêm sp -->

    </div>
  </div>
</div>
