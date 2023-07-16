<?php 
session_start();
include("../../config/config.php");

$thutu=$_POST['thutu'];
$tensanpham = $_POST['ten_task'];
$ma_sp=$_POST['ma_task'];
$type_task=$_POST['type_task'];

$mota=$_POST['thongtin'];


//icon
$hinhanh=$_FILES['hinhanh']['name'];
$hinhanh_tmp=$_FILES['hinhanh']['tmp_name'];
$hinhanh=time().'_'.$hinhanh;





if (isset($_POST['themsanpham'])) {
	# thêm
	$sql_add="INSERT INTO tbl_task(thutu,ten_task,ma_task,type_task,hinhanh,thongtin) value('".$thutu."','".$tensanpham."','".$ma_sp."','".$type_task."','".$hinhanh."','".$phongban."')";
	mysqli_query($mysqli,$sql_add);
	header('Location:../../index.php?action=quanlitaikhoan&query=them');

	move_uploaded_file($hinhanh_tmp, '../../../images/'.$hinhanh);
	

}elseif (isset($_POST['suasanpham'])) {

//sửa
if ($hinhanh !='') {

	# code...
	move_uploaded_file($hinhanh_tmp, '../../../images/'.$hinhanh);

	
	$sql_sua="UPDATE tbl_task SET thutu='".$thutu."', ten_task='".$tensanpham."' , ma_task='".$ma_sp."' ,type_task='".$type_task."',hinhanh='".$hinhanh."', ,thongtin='".$mota."' WHERE thutu='$_GET[thutu]'";
	$sql="SELECT * from tbl_task where thutu='$_GET[thutu]' limit 1 ";
	$row=mysqli_query($mysqli,$sql);

	while($row1=mysqli_fetch_array($row)){
		unlink('../../../images/'.$row1['hinhanh']);
		
	}

}else {
	# code...

	$sql_sua="UPDATE tbl_task SET thutu='".$thutu."', ten_task='".$tensanpham."' , ma_task='".$ma_sp."' ,type_task='".$type_task."',thongtin='".$mota."' WHERE thutu='$_GET[thutu]'";
}




	mysqli_query($mysqli,$sql_sua);
	header('Location:../../index.php?action=quanlitaikhoan&query=them');
	
}else {
	

	$sql="SELECT * from tbl_task where  ma_task='$ma_sp' limit 1 ";
	$row=mysqli_query($mysqli,$sql);
	move_uploaded_file($hinhanh_tmp, '../../../images/'.$hinhanh);
	
	while($row1=mysqli_fetch_array($row)){
		unlink('../../../images/'.$row1['hinhanh']);
		
	}

	// $ma_sp1=$_GET['ma_sanpham'];
	
	$ma_sp1=$_GET['ma_task'];
	$sql_xoa="DELETE FROM tbl_task WHERE ma_task='".$ma_sp1."'";

	
	mysqli_query($mysqli,$sql_xoa);
	header('Location:../../index.php?action=quanlitaikhoan&query=them');
} 
 ?>
