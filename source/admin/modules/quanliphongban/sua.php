
<?php 
$sql_sua="SELECT * FROM tbl_phongban WHERE thutu='$_GET[thutu]' LIMIT 1 ";
$row_sua=mysqli_query($mysqli,$sql_sua);
 ?>

 <h3>Sửa phòng ban </h3>



<table  class="table table-hover">

  <?php 
while ($row= mysqli_fetch_array($row_sua)) {
  # code...


  ?>
  <form method="POST" action="modules/quanliphongban/xuly.php?thutu=<?php echo $_GET['thutu']?>" enctype="multipart/form-data">
   <tr>
    <th>Thứ tự</th>
    
    <td><input type="text" name="thutu"></td>
    
  
  </tr>

  <tr>
    <th>Tên phòng ban</th>
    
    <td><input type="text" value="<?php echo $row['ten_phongban'] ?>" name="ten_phongban" ></td>
  
  </tr>
  <tr>
    <th>Mã phòng ban</th>
    
    <td><input type="text" value="<?php echo $row['ma_phongban'] ?>" name="ma_phongban" ></td>
  
  </tr>
  <tr>
    <th>Vị trí</th>
    
    <td><input type="text" value="<?php echo $row['vitri'] ?>" name="vitri" ></td>
  
  </tr>
<tr>
    <th>Hình ảnh</th>
    
    <td><input type="file" name="hinhanh" ></td>
     <td><img src="../images/<?php echo $row['hinhanh'] ?> " width="150px"></td>
  
  </tr>
  

  <tr>
    <th>Thông tin phòng ban</th>
    
    <td><textarea rows="10" cols="120" name="thongtin" style="width: 100% resize: none;"> <?php echo $row['thongtin'] ?></textarea></td>
  
  </tr>
  
 <tr>
   
    <td colspan="2"><input type="submit" name="suaphongban" value ="Sửa phòng ban"></td>
    
  
  </tr>
</form>

<?php 
} 

?>
 
</table>
