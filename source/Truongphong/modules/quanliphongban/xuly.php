<?php 
session_start();
include("../../config/config.php");

$thutu=$_POST['thutu'];
$tendon = $_POST['ten_don'];
$ma_don=$_POST['ma_don'];
$nguoigui=$_POST['nguoigui'];
$lido=$_POST['lidovasongay'];






if (isset($_POST['themphongban'])) {
	# thêm
	$sql_add="INSERT INTO tbl_donxinnghi(thutu,ten_don,ma_don,nguoigui,hinhanh,lidovasongay) value('".$thutu."','".$tendon."','".$ma_don."','".$nguoigui."','".$hinhanh."','".$lido."')";
	mysqli_query($mysqli,$sql_add);
	header('Location:../../index.php?action=quanliphongban&query=them');

	


}elseif (isset($_POST['suaphongban'])) {

//sửa
if ($hinhanh !='') {

	# code...
	move_uploaded_file($hinhanh_tmp, '../../../images/'.$hinhanh);
	
	
	$sql_sua="UPDATE tbl_donxinnghi SET thutu='".$thutu."', ten_don='".$tendon."' , ma_don='".$ma_don."' ,nguoigui='".$nguoigui."',hinhanh='".$hinhanh."' ,lidovasongay='".$lido."' WHERE thutu='$_GET[thutu]'";
	$sql="SELECT * from tbl_donxinnghi where thutu='$_GET[thutu]' limit 1 ";
	$row=mysqli_query($mysqli,$sql);

	while($row1=mysqli_fetch_array($row)){
		unlink('../../../images/'.$row1['hinhanh']);
		
	}

}else {
	# code...

	$sql_sua="UPDATE tbl_donxinnghi SET thutu='".$thutu."', ten_don='".$tendon."' , ma_don='".$ma_don."',nguoigui='".$nguoigui."' ,hinhanh='".$hinhanh."',lidovasongay='".$lido."' WHERE thutu='$_GET[thutu]'";
}




	mysqli_query($mysqli,$sql_sua);
	header('Location:../../index.php?action=quanliphongban&query=them');
	
}else {
	

	$sql="SELECT * from tbl_donxinnghi where  ma_don='$ma_sp' limit 1 ";
	$row=mysqli_query($mysqli,$sql);
	move_uploaded_file($hinhanh_tmp, '../../../images/'.$hinhanh);
	
	while($row1=mysqli_fetch_array($row)){
		unlink('../../../images/'.$row1['hinhanh']);
		
	}

	// $ma_sp1=$_GET['ma_sanpham'];
	
	$ma_sp1=$_GET['ma_don'];
	$sql_xoa="DELETE FROM tbl_donxinnghi WHERE ma_don='".$ma_sp1."'";

	
	mysqli_query($mysqli,$sql_xoa);
	header('Location:../../index.php?action=quanliphongban&query=them');
} 
 ?>
