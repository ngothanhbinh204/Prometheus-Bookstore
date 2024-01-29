<?php
    function get_blog($li1,$li){
        $sql = "SELECT blog.id as id, blog.blog_title as title, blog.blog_img as img, blog.blog_content as content, blog.blog_desc as bl_desc, blog.creation_date as ngaytao, users.username as username
        FROM blog
        INNER JOIN users on users.id = blog.admin_id 
        ORDER BY id desc LIMIT ".$li1.",".$li;
        return pdo_query($sql);
    }



    function get_blog_all(){
        $sql = "SELECT blog.id as id, blog.blog_title as title, blog.blog_img as img, blog.blog_content as content, blog.blog_desc as bl_desc, blog.creation_date as ngaytao, users.username as username
        FROM blog
        INNER JOIN users on users.id = blog.admin_id 
        ORDER BY id desc ";
        return pdo_query($sql);
    }

    function blog_Detail($idBlog){
        $sql = "SELECT blog.id as id, blog.blog_title as title, blog.blog_img as img, blog.blog_content as content, blog.blog_desc as bl_desc, blog.creation_date as ngaytao, users.username as username
        FROM blog
        INNER JOIN users on users.id = blog.admin_id WHERE blog.id =?";
        return pdo_query_one($sql,$idBlog);
    }

    function list_userAdmin(){
        $sql = "SELECT * FROM users WHERE is_admin = 1  order by id desc";
        return pdo_query($sql);
    }
    function add_blog($admin_id,$title,$content,$ngayxuatbang,$ten_file_hinh){
        $sql = "INSERT INTO blog(admin_id,blog_title,blog_content,creation_date,blog_img) VALUES(?,?,?,?,?)";
        pdo_execute($sql,$admin_id,$title,$content,$ngayxuatbang,$ten_file_hinh);
    }

    function get_oneBlog($id){
        $sql = "SELECT * FROM blog WHERE id =?";
        return pdo_query_one($sql,$id);
    }
    

    function update_blog($admin_id,$title,$content,$ngayxuatbang,$ten_file_hinh,$id){
        $sql = "UPDATE blog SET admin_id=?,blog_title=?,blog_content=?,creation_date=?,blog_img=? WHERE id=?";
        pdo_execute($sql,$admin_id,$title,$content,$ngayxuatbang,$ten_file_hinh,$id);
    }

    function get_ten_filehinh($id){
        $sql = "SELECT blog_img FROM blog WHERE id=?";
        $ten_file_hinh = pdo_query_one($sql,$id);
        return $ten_file_hinh['blog_img'];
    }

    function delete_blog($id){
        $sql = "DELETE FROM blog WHERE id=?";
        pdo_execute($sql,$id);
    }
?>
