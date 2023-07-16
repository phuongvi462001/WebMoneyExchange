
<?php 

$sql_lietke="SELECT * FROM tbl_nhanvien  ORDER BY thutu asc  ";
$row_lietke=mysqli_query($mysqli,$sql_lietke);
 ?>
 <h3>Xem danh sách nhân viên </h3>
<table border="1" style="width: 50%" class="table table-hover">
  
  
  <tr>
  	
  	<th>STT</th>
    <th>ID</th>
    <th>Tên nhân viên </th>
     <th>Phòng ban </th>
        
        <th>Hình ảnh</th>
        <th>Chức vụ</th>
        <th>Edit nhân viên</th>

        
    
  
  </tr>

  <?php 
  	$i=0;
  	while($row=mysqli_fetch_array($row_lietke)) {
  			$i++;
  	
  	
  	
   ?>

 <tr>
   <td><?php echo $i ?></td>
     <td><?php echo $row['thutu'] ?></td>
    <td><?php echo $row['ten_nhanvien'] ?></td>
     <td><?php echo $row['ma_nhanvien'] ?></td>
 

  <td><img src="../images/<?php echo $row['hinhanh'] ?> " width="150px"></td>

  

 <td><?php echo $row['phongban'] ?></td>


    <td>
    		<a href="modules/quanlitaikhoan/xuly.php?ma_nhanvien=<?php echo $row['ma_nhanvien']?> ">Xóa  |</a> 
    		<a href="?action=quanlitaikhoan&query=sua&thutu=<?php echo $row['thutu']?>">Sửa</a>
    </td>
    
  
  </tr>


  <?php 

}
   ?>

 
</table>
