
<?php 

$sql_lietke="SELECT * FROM tbl_phongban  ORDER BY thutu asc  ";
$row_lietke=mysqli_query($mysqli,$sql_lietke);
 ?>
 <h3>Liệt kê phòng ban </h3>
<table border="1" style="width: 100%" class="table table-hover">
  
  
  <tr>
  	
  	<th>STT</th>
    <th>ID</th>
    <th>Tên phòng ban </th>
     <th>Mã phòng ban </th>
      <th>Vị trí </th>
        
        <th>Hình ảnh</th>
        <th>Thông tin</th>
        <th>Edit phòng ban</th>
        
    
  
  </tr>

  <?php 
  	$i=0;
  	while($row=mysqli_fetch_array($row_lietke)) {
  			$i++;
  	
  	
  	
   ?>

 <tr>
   <td><?php echo $i ?></td>
     <td><?php echo $row['thutu'] ?></td>
    <td><?php echo $row['ten_phongban'] ?></td>
     <td><?php echo $row['ma_phongban'] ?></td>
 <td><?php echo $row['vitri'] ?></td>
 

  <td><img src="../images/<?php echo $row['hinhanh'] ?> " width="150px"></td>

  

 <td><?php echo $row['thongtin'] ?></td>
 

    <td>
    		<a href="modules/quanliphongban/xuly.php?ma_phongban=<?php echo $row['ma_phongban']?> ">Xóa  |</a> 
    		<a href="?action=quanliphongban&query=sua&thutu=<?php echo $row['thutu']?>">Sửa</a>
    </td>
    
  
  </tr>


  <?php 

}
   ?>

 
</table>
