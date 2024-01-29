<?php
session_start();
require "../models/pdo.php";
require "../models/func_comment.php";
// if (isset($_GET['idsp']) && ($_GET['idsp'])) {
//    //echo $_GET['idsp'];
//    $book_id = $_GET['idsp'];
// }
if(isset($_SERVER['PHP_SELF'])) {
   // $idsp = $_GET['idsp'];
   // echo $idsp;
   // echo $_GET['idsp'];
   if (isset($_POST['guibinhluan']) && ($_POST['guibinhluan'])) {
      $cmt_ratings = $_POST['rating'];
      $usr_message = $_POST['noidung'];
      $book_id = $_POST['idsp'];
      $creation_date = date('Y/m/d H:i:s');
      $update_date = date('Y/m/d H:i:s');
      $user_id = $_SESSION['user']['id'];
      $user_hoten = $_SESSION['user']['username'];
      $hoten = $_SESSION['user']['username'];
      insert_binhluan($cmt_ratings, $usr_message, $user_id, $book_id, $creation_date, $update_date);
      // echo "Insert đưọc";
      // echo $cmt_ratings;
      // echo "<br>";
      // echo $usr_message;
      // echo "<br>";
      // echo  $user_id;
      // echo "<br>";
      // echo $book_id;
   }
   
   $dsbl = load_All_binhluan();
   $html_bl = "";
   foreach ($dsbl as $bl) {
      extract($bl);
      $user_hoten = $_SESSION['user']['username'];
      $html_bl .= '<p><div style="width:50%;height:fix-content;background-color:whitesmoke;padding:15px;"><p>' . $user_hoten . '<br>' . $cmt_ratings . '
      <span>&#9733</span> <br>' . $usr_message . '<br>' . $creation_date . '
      <p>Reply by admin: '.$reply.'</p></div></p>';
   }

}

?>
<h1>BÌNH LUẬN</h1>
<style>
   input{
      border-radius: 5px;
      border:solid 1px gray; 
      cursor:pointer;
   }
   span{
      color:yellow;
      font-size:25px;
   }
   input[type="range"] {
  accent-color: yellow;
}
</style>
<?php
if (isset($_SESSION['user']) && (count($_SESSION['user']) > 0)) {
?>
   <form action="comment.php" method="POST">
      
      <h3>Đánh giá</h3>
      <span>&#9733 </span><span> &#9733 </span><span> &#9733 </span><span> &#9733 </span><span> &#9733</span><br>
      <input name="rating" type="range" min="1" max="5"><br>
      <input type="hidden" name="idsp" value="<?=$_GET['idsp']?>">
      <textarea name="noidung" id="" cols="100%" rows="5"></textarea><br><br>
      <!-- <button type="submit" name="guibinhluan">Gửi bình luận</button> -->
      <input  type="submit" name="guibinhluan" value="Gửi Bình Luận">
   </form>
<?php
} else {
   $_SESSION['trang'] = "productDetail";
   $_SESSION['idsp'] = $_GET['idsp'];
   echo "<a href='../index.php?pgs=login' target='_parent'>Bạn phải đăng nhập mới có thể bình luận></a>";
}
?>
<div class="dsbl">
   <?= $html_bl ?>

</div>
