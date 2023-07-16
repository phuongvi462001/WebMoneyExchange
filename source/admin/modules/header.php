
<?php 
if (isset($_GET['dangxuat']) && $_GET['dangxuat']==1){
	unset($_SESSION['dangnhap']);
	header('Location: login.php');
}
 ?>



<div id="header">
  <nav class="navbar navbar-expand-md navbar-light  sticky-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.php">Admin
    <div class="row">

    <img id="myImage"  width="128px" height="128px">

    <form>
        <div class="form-group">
            <label for="exampleFormControlFile1"></label>
            <input name="avatarAdmin" type="file" onchange="readURL(this, 'myImage')" class="form-control-file" id="exampleFormControlFile1">
        </div>
    </form>

    <script src="/source/main.js"></script>

  </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" 
      data-target="#navbarResponsive">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
         <a href="index.php">Back</a>
        </li>
        <li class="nav-item">
          <a href="../index.php">Trang Chủ</a>
        </li>
         <li class="nav-item">
         <a href="index.php?action=quanlitaikhoan&query=them">Xem danh sách tài khoản </a>
        </li>
         
        <li class="nav-item">
        <a href="index.php?action=quanliphongban&query=them">Xem danh sách phòng ban </a>
        </li>
        <li class="nav-item">
        <a href="index.php?action=thongtintaikhoan&query=them">Xem thông tin tài khoản </a>
        </li>
        <li class="nav-item">
        <a href="index.php?action=thongtinphongban&query=them">Xem thông tin phòng ban </a>
        </li>
         
       <li class="nav-item">
        <a href="index.php?dangxuat=1">Đăng Xuất: <?php if (isset($_SESSION['dangnhap'])){
    	echo $_SESSION['dangnhap'];
 
    	# code...
    } ?> </a>
        </li>
        
       
      </ul>
    </div>
  </div>
</nav>


 
</div>






