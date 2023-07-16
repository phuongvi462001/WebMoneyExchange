 
 <div id="main">
   

            
   <?php include('right/slidebar.php'); ?>
 
 
       <div id="left">
 
 <?php
 
 if (isset($_GET['quanly'])) {
     $temp=$_GET['quanly'];
      # code...
  }else {
     $temp='trangchu';
      
  } 
 
 if ($temp=='dangnhap') {
 
      include("left/login.php");
  }elseif ($temp=='dangky') {
 
      include("left/dangky.php");
  }elseif ($temp=='dangxuat') {
 
      include("left/logout.php");
 
  }
 
   elseif ($temp=='trangchu') {
 
      include("right/main.php");
  }
 
 elseif ($temp=='changepass') {
 
      include("left/changepass.php");
   }
   
   
 
  elseif ($temp=='timkiem') {
 
      include("left/search.php");
  }
 
   
       
      
      elseif ($temp=='quanlytaikhoan') {
 
      include("left/quanly.php");}
       
      
      
       elseif ($temp=='dsdatai') {
 
      include("left/xemthongtin.php");}
  elseif ($temp=='quanlitaikhoan') {
 
     
      include("../admin/modules/quanlibaiviet/lietke.php");}
      
 
       
  
  else {
      
      include("left/main.php");
  }
     
 
  
   ?>
 
 
           </div>
 
      <!--  <div id="right"> -->
 
           
 
             
          <!-- </div>     -->
            </div>