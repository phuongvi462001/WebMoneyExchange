<?php 
session_start();
include("../../config/config.php");

$thutu=$_POST['thutu'];
$tensanpham = $_POST['ten_nhanvien'];
$ma_sp=$_POST['ma_nhanvien'];


$mota=$_POST['phongban'];


//icon
$hinhanh=$_FILES['hinhanh']['name'];
$hinhanh_tmp=$_FILES['hinhanh']['tmp_name'];
$hinhanh=time().'_'.$hinhanh;





if (isset($_POST['themsanpham'])) {
	# thêm
	$sql_add="INSERT INTO tbl_nhanvien(thutu,ten_nhanvien,ma_nhanvien,hinhanh,phongban) value('".$thutu."','".$tensanpham."','".$ma_sp."','".$hinhanh."','".$phongban."')";
	mysqli_query($mysqli,$sql_add);
	header('Location:../../index.php?action=quanlitaikhoan&query=them');

	move_uploaded_file($hinhanh_tmp, '../../../images/'.$hinhanh);
	

}elseif (isset($_POST['suasanpham'])) {

//sửa
if ($hinhanh !='') {

	# code...
	move_uploaded_file($hinhanh_tmp, '../../../images/'.$hinhanh);

	
	$sql_sua="UPDATE tbl_nhanvien SET thutu='".$thutu."', ten_nhanvien='".$tensanpham."' , ma_nhanvien='".$ma_sp."' ,hinhanh='".$hinhanh."', ,phongban='".$mota."' WHERE thutu='$_GET[thutu]'";
	$sql="SELECT * from tbl_nhanvien where thutu='$_GET[thutu]' limit 1 ";
	$row=mysqli_query($mysqli,$sql);

	while($row1=mysqli_fetch_array($row)){
		unlink('../../../images/'.$row1['hinhanh']);
		
	}

}else {
	# code...

	$sql_sua="UPDATE tbl_nhanvien SET thutu='".$thutu."', ten_nhanvien='".$tensanpham."' , ma_nhanvien='".$ma_sp."' ,phongban='".$mota."' WHERE thutu='$_GET[thutu]'";
}




	mysqli_query($mysqli,$sql_sua);
	header('Location:../../index.php?action=quanlitaikhoan&query=them');
	
}else {
	

	$sql="SELECT * from tbl_nhanvien where  ma_nhanvien='$ma_sp' limit 1 ";
	$row=mysqli_query($mysqli,$sql);
	move_uploaded_file($hinhanh_tmp, '../../../images/'.$hinhanh);
	
	while($row1=mysqli_fetch_array($row)){
		unlink('../../../images/'.$row1['hinhanh']);
		
	}

	// $ma_sp1=$_GET['ma_sanpham'];
	
	$ma_sp1=$_GET['ma_nhanvien'];
	$sql_xoa="DELETE FROM tbl_nhanvien WHERE ma_nhanvien='".$ma_sp1."'";

	
	mysqli_query($mysqli,$sql_xoa);
	header('Location:../../index.php?action=quanlitaikhoan&query=them');
} 
 ?>
