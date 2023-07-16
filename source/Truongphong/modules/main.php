 <div class="clear"></div>
 <div id="main">


<?php 

if (isset($_GET['action']) && isset($_GET['query'] )){
    $temp=$_GET['action'];
    $query=$_GET['query'];
     # code...
 }else {
    $temp='';
    $query='';
     
 } 
// Nếu temp bằng quản lí danh mục sẽ chuyển tới các trang xử lí 
 if ($temp=='quanliphongban' && $query =='them') {
    
    include("quanliphongban/them.php");
    include("quanliphongban/lietke.php");
   
 }elseif ($temp=='quanliphongban' && $query =='sua') {
 	
 	  include("quanliphongban/sua.php");
 }


  // chuyển trang tới quản lí tài khoản
 elseif ($temp=='quanlitaikhoan' && $query =='them') {
 	 include("quanlitaikhoan/them.php");
    include("quanlitaikhoan/lietke.php");
 	
 }elseif ($temp=='quanlitaikhoan' && $query =='sua') {
 	
 	  include("quanlitaikhoan/sua.php");
 } 

 // Nếu không thì về trang chủ 
 else {
     
     include("dashboard.php");
 }
    

 
  ?>
</div>
        

         