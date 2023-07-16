
<?php 

$sql_lietke="SELECT * FROM tbl_donxinnghi  ORDER BY thutu asc  ";
$row_lietke=mysqli_query($mysqli,$sql_lietke);
 ?>
 <h3>Liệt kê đơn xin nghỉ </h3>
<table border="1" style="width: 100%" class="table table-hover">
  
  
  <tr>
  <th>ID</th>
  	<th>STT</th>
    <th>Tên đơn </th>
    <th>Mã đơn </th>
     <th>Người gửi </th>
     
        
       
        <th>Lí do xin nghỉ và mong muốn</th>
        <th>Edit đơn</th>
        
    
  
  </tr>

  <?php 
  	$i=0;
  	while($row=mysqli_fetch_array($row_lietke)) {
  			$i++;
  	
  	
  	
   ?>

 <tr>
   <td><?php echo $i ?></td>
     <td><?php echo $row['thutu'] ?></td>
    <td><?php echo $row['ten_don'] ?></td>
    <td><?php echo $row['ma_don'] ?></td>
     <td><?php echo $row['nguoigui'] ?></td>
 
 <td><?php echo $row['lidovasongay'] ?></td>
 

    <td>
    <a href="modules/quanliphongban/xuly.php?ma_don=<?php echo $row['ma_don']?> ">Xem  |</a> 
    		<a href="modules/quanliphongban/xuly.php?ma_don=<?php echo $row['ma_don']?> ">Xóa  |</a> 
    		<a href="?action=quanliphongban&query=sua&thutu=<?php echo $row['thutu']?>">Sửa</a>
    </td>
    
  
  </tr>


  <?php 

}
   ?>

 
</table>
