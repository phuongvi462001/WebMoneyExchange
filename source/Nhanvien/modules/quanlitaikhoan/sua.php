
<?php 
$sql_sua="SELECT * FROM tbl_task WHERE thutu='$_GET[thutu]' LIMIT 1 ";
$row_sua=mysqli_query($mysqli,$sql_sua);
 ?>

 <h3>Sửa task </h3>



<table  class="table table-hover">

  <?php 
while ($row= mysqli_fetch_array($row_sua)) {
  # code...


  ?>
  <form method="POST" action="modules/quanlitaikhoan/xuly.php?thutu=<?php echo $_GET['thutu']?>" enctype="multipart/form-data">
   <tr>
    <th>Thứ tự</th>
    
    <td><input type="text" name="thutu"></td>
    
  
  </tr>

  <tr>
    <th>Tên task</th>
    
    <td><input type="text" value="<?php echo $row['ten_task'] ?>" name="ten_task" ></td>
  
  </tr>
  <tr>
    <th>Mã nhân viên</th>
    
    <td><input type="text" value="<?php echo $row['ma_task'] ?>" name="ma_task" ></td>
  
  </tr>
  
<tr>
    <th>Hình ảnh</th>
    
    <td><input type="file" name="hinhanh" ></td>
     <td><img src="../images/<?php echo $row['hinhanh'] ?> " width="150px"></td>
  
  </tr>
  
  <tr>
    <th>Phòng ban</th>
    
    <td><textarea rows="10" cols="120" name="thongtin" style="width: 100% resize: none;"> <?php echo $row['thongtin'] ?></textarea></td>
  
  </tr>

 <tr>
   
    <td colspan="2"><input type="submit" name="suasanpham" value ="Sửa task"></td>
    
  
  </tr>
</form>

<?php 
} 

?>
 
</table>
