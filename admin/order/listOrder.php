
<div class="table-responsive">
<form action="index.php?act=listOrders" method="post">

    <table class=" table-striped">


        <thead>
            <tr>
                <th>#</th>
                <th>ID</th>
                <th>Mã Đơn Hàng</th>
                <th>Tổng Thanh Toán</th>
                <th>Ghi Chú</th>
                <th>Phương Thức Thanh Toán</th>
                <th>Trạng Thái </th>
                <th>Ngày Mua</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $i = 1;
            foreach ($listOrders as $order) {
                extract($order);
                if($trangthai == 1) {
                    $trangthai = "Đang Chuẩn Bị Hàng";
                }
                 else if($trangthai == 2) {
                    $trangthai = "Đang trên đường giao";
                } else if($trangthai == 3) {
                    $trangthai = "Giao Thành Công";
                } else {
                    $trangthai = "Chưa giao";
                }
                
                $order_detail = "index.php?act=orderDetail&order_code=".$order_code;
                // $delAuthor = "index.php?act=delAuthor&id=" . $id;
                echo '
                <tr>
                <td><input type="checkbox" name="update[]" value='. $id.'  ></td>
                  <td>' . $id . '</td>
                  <td>' . $order_code . '</td>
                  <td>' . $total_order . '</td>
                  <td>' . $delivery_note     . '</td>
                  <td>' . $pm_name     . '</td>
                  <td> 
                  <select name="trangthai_'. $id .'" class="form-control" id="">
                  <option value="0">' . $trangthai     . '</option> 
                  <option value="1">Đang Chuẩn Bị Hàng</option>
                  <option value="2">Đang Trên Đường Giao</option>
                  <option value="3">Giao Thành Công</option>
                  </select></td>
                  <td>' . $creation_date     . '</td>
                  <td> <a href="' . $order_detail . '" class="btn btn-success"><i class="far fa-tv style="color: #ffffff;"></i> Xem Chi tiết </a></td>  
              </tr>';
                $i++;
              
            }
            ?>

        </tbody>

    </table>
    <button class="btn btn-success" type="submit" name="updateTrangthai">Cập Nhật Trạng Thái</button>
    </form>

</div>

<!-- Script -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){

  // Check/Uncheck ALl
  $('#checkAll').change(function(){
    if($(this).is(':checked')){
      $('input[name="update[]"]').prop('checked',true);
    }else{
      $('input[name="update[]"]').each(function(){
         $(this).prop('checked',false);
      });
    }
  });

  // Checkbox click
  $('input[name="update[]"]').click(function(){
    var total_checkboxes = $('input[name="update[]"]').length;
    var total_checkboxes_checked = $('input[name="update[]"]:checked').length;

    if(total_checkboxes_checked == total_checkboxes){
       $('#checkAll').prop('checked',true);
    }else{
       $('#checkAll').prop('checked',false);
    }
  });
});
</script>