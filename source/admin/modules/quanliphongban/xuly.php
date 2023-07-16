<?php 
session_start();
include("../../config/config.php");

$thutu=$_POST['thutu'];
$tenphongban = $_POST['ten_phongban'];
$ma_phongban=$_POST['ma_phongban'];
$vitri=$_POST['vitri'];

$thongtin=$_POST['thongtin'];

//icon
$hinhanh=$_FILES['hinhanh']['name'];
$hinhanh_tmp=$_FILES['hinhanh']['tmp_name'];
$hinhanh=time().'_'.$hinhanh;





if (isset($_POST['themphongban'])) {
	# thêm
	$sql_add="INSERT INTO tbl_phongban(thutu,ten_phongban,ma_phongban,vitri,hinhanh,thongtin) value('".$thutu."','".$tenphongban."','".$ma_phongban."','".$vitri."','".$hinhanh."','".$thongtin."')";
	mysqli_query($mysqli,$sql_add);
	header('Location:../../index.php?action=quanliphongban&query=them');

	move_uploaded_file($hinhanh_tmp, '../../../images/'.$hinhanh);


}elseif (isset($_POST['suaphongban'])) {

//sửa
if ($hinhanh !='') {

	# code...
	move_uploaded_file($hinhanh_tmp, '../../../images/'.$hinhanh);
	
	
	$sql_sua="UPDATE tbl_phongban SET thutu='".$thutu."', ten_phongban='".$tenphongban."' , ma_phongban='".$ma_phongban."' ,vitri='".$vitri."',hinhanh='".$hinhanh."',thongtin='".$thongtin."' WHERE thutu='$_GET[thutu]'";
	$sql="SELECT * from tbl_sanpham where thutu='$_GET[thutu]' limit 1 ";
	$row=mysqli_query($mysqli,$sql);

	while($row1=mysqli_fetch_array($row)){
		unlink('../../../images/'.$row1['hinhanh']);
		
	}

}else {
	# code...

	$sql_sua="UPDATE tbl_phongban SET thutu='".$thutu."', ten_phongban='".$tenphongban."' , ma_phongban='".$ma_phongban."',vitri='".$vitri."'  ,thongtin='".$thongtin."' WHERE thutu='$_GET[thutu]'";
}




	mysqli_query($mysqli,$sql_sua);
	header('Location:../../index.php?action=quanliphongban&query=them');
	
}else {
	

	$sql="SELECT * from tbl_phongban where  ma_phongban='$ma_sp' limit 1 ";
	$row=mysqli_query($mysqli,$sql);
	move_uploaded_file($hinhanh_tmp, '../../../images/'.$hinhanh);
	
	while($row1=mysqli_fetch_array($row)){
		unlink('../../../images/'.$row1['hinhanh']);
		
	}

	// $ma_sp1=$_GET['ma_sanpham'];
	
	$ma_sp1=$_GET['ma_phongban'];
	$sql_xoa="DELETE FROM tbl_phongban WHERE ma_phongban='".$ma_sp1."'";

	
	mysqli_query($mysqli,$sql_xoa);
	header('Location:../../index.php?action=quanliphongban&query=them');
} 
 ?>
