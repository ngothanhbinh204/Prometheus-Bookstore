<?php
require_once "pdo.php";

 
function insert_binhluan($cmt_ratings,$usr_message,$user_id,$book_id,$creation_date,$update_date)
{
    $sql = "INSERT INTO comments(cmt_ratings,usr_message,user_id,book_id,creation_date,updation_date) VALUES('$cmt_ratings','$usr_message','$user_id','$book_id','$creation_date','$update_date')";
    pdo_execute($sql);
}
// function load_All_binhluan($book_id)
// {
//     $sql = "SELECT * FROM comments WHERE book_id='".$book_id."' ORDER BY id desc";
//     $list_binhluan = pdo_query($sql);
//     return $list_binhluan;
// }
function load_All_binhluan()
{
    $sql = "SELECT * FROM comments ORDER BY id desc";
    $list_binhluan = pdo_query($sql);
    return $list_binhluan;
}

function delete_binhluan($idcmt)
{
    $sql = "DELETE FROM comments WHERE id =" . $idcmt;
    $list_binhluan = pdo_query($sql);
    return $list_binhluan;
}

function reply_binhluan($idcmt){
    $sql = "UPDATE `comments` SET `reply` = 'Cảm ơn quý khách đã đánh giá sản phẩm!' WHERE `comments`.`id` = ".$idcmt;
    // $sql = "INSERT INTO comments(reply) VALUES('$reply')";
    $list_binhluan = pdo_query($sql);
    return $list_binhluan;
}
