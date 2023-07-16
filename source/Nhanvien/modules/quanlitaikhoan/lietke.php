
<?php 

$sql_lietke="SELECT * FROM tbl_task  ORDER BY thutu asc  ";
$row_lietke=mysqli_query($mysqli,$sql_lietke);
 ?>
 <h3>Xem danh sách task </h3>
<table border="1" style="width: 50%" class="table table-hover">
  
  
  <tr>
  	
  	<th>STT</th>
    <th>ID</th>
    <th>Tên task </th>
     <th>Mã task </th>
        
        <th>Hình ảnh</th>
        
        <th>Yêu cầu</th>
        <th>Edit task</th>

        
    
  
  </tr>

  <?php 
  	$i=0;
  	while($row=mysqli_fetch_array($row_lietke)) {
  			$i++;
  	
  	
  	
   ?>

 <tr>
   <td><?php echo $i ?></td>
     <td><?php echo $row['thutu'] ?></td>
    <td><?php echo $row['ten_task'] ?></td>
     <td><?php echo $row['ma_task'] ?></td>
 

  <td><img src="../images/<?php echo $row['hinhanh'] ?> " width="150px"></td>

  

 <td><?php echo $row['thongtin'] ?></td>


    <td>
    <a href="modules/quanlitaikhoan/xuly.php?ma_task=<?php echo $row['ma_task']?> ">Start<br></a> 
      <a href="modules/quanlitaikhoan/xuly.php?ma_task=<?php echo $row['ma_task']?> ">Xóa<br></a> 
    		<a href="modules/quanlitaikhoan/xuly.php?ma_task=<?php echo $row['ma_task']?> ">Sửa<br></a>
        <a href="modules/quanlitaikhoan/xuly.php?ma_task=<?php echo $row['ma_task']?> ">Submit</a>
    </td>
    
  
  </tr>


  <?php 

}
   ?>

 
</table>
