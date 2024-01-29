<div class="table-responsive">
    <table class="table table-striped">


        <thead>
            <tr>
                <th>Người Nhận</th>
                <th>Ảnh Sản Phẩm</th>
                <th>Tên Sách</th>
                <th>Giá</th>
                <th>Tổng Thanh Toán</th>
                <img src="..public" alt="">
            </tr>
        </thead>
        <tbody>
            <?php
            $i = 1;

            foreach ($order_Details as $order) {
                extract($order);
                $img = '
                <img src="../publics/img/product/books/' . $cover . '"alt="">
                ';
                echo '
                <tr>
                  <td>' . $code . '</td>
                  <td>' . $img . '</td>
                  <td>' . $title     . '</td>
                  <td>' . $price     . '</td>
                  <td>' . $total_order     . '</td>
                  <td>' . $total_order     . '</td>

                  
              </tr>';
                $i++;
            }
            ?>

        </tbody>


    </table>
    <th> <a href="index.php?act=listOrders" class="btn btn-success"><i class="far fa-tv style=" color: #ffffff;></i> Quay lại</a></th>

</div>