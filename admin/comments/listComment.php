<?php
// require_once "../models/func_comment.php";
?>
<div class="row">
  <div class="col-lg-12 grid-margin stretch-card">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title">Danh Sách Bình Luận</h4>
        
        <div class="table-responsive">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>
                  Username
                </th>
                <th>
                  Product
                </th>
                <th>
                  Comment
                </th>
                <th>
                  Reply
</th>
                <th>
                  Delete
                </th>
                
              </tr>
            </thead>
            <tbody>
            
              <?php
              // if(isset($_SERVER['PHP_SELF'])) {
              //   if (isset($_POST['reply']) && ($_POST['reply'])){
              //     $idcmt = $_GET["idcmt"];
              //     $reply = $_POST["reply"];
              //     reply_binhluan($reply);
              //   }}
            $sql = "SELECT comments.id as id, users.username as usr, books.title as title, comments.usr_message as mes, comments.reply as reply
FROM comments
INNER JOIN `users` on users.id = comments.user_id 
INNER JOIN `books` on books.id = comments.book_id ORDER BY id desc";
$cmt = pdo_query($sql);
$html_cmt='';
foreach ($cmt as $value){
  extract($value);
$html_cmt.=' <tr>
<td>
  '.$value["usr"].'
</td>
<td>
   '.$value["title"].'
</td>
<td>
  '.$value["mes"].'
</td>
<td>
<a href="index.php?act=reply_cmt&idcmt='.$id.'">Reply</a>
'.$value["reply"].'
</td>
<td>
<a href="index.php?act=del_cmt&idcmt='.$id.'">Xóa cmt</a>
</td>
</tr>';
}
echo $html_cmt;
?>
<!-- <input type="text" name="reply">
<input type="hidden" name="idcmt" value="'.$id.'">
 <input type="submit" name="reply" value="Reply"> -->
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
