
<?php 
$sql_sua="SELECT * FROM tbl_donxinnghi WHERE thutu='$_GET[thutu]' LIMIT 1 ";
$row_sua=mysqli_query($mysqli,$sql_sua);
 ?>

 <h3>Sửa đơn xin nghỉ </h3>



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
    <th>Tên đơn</th>
    
    <td><input type="text" value="<?php echo $row['ten_don'] ?>" name="ten_don" ></td>
  
  </tr>
  <tr>
    <th>Mã đơn</th>
    
    <td><input type="text" value="<?php echo $row['ma_don'] ?>" name="ma_don" ></td>
  
  </tr>
  <tr>
    <th>Người gửi đơn</th>
    
    <td><input type="text" value="<?php echo $row['nguoigui'] ?>" name="nguoigui" ></td>
  
  </tr>

  

  <tr>
    <th>Lí do và mong muốn</th>
    
    <td><textarea rows="10" cols="120" name="mota" style="width: 100% resize: none;"> <?php echo $row['lidovasongay'] ?></textarea></td>
  
  </tr>
  
 <tr>
   
    <td colspan="2"><input type="submit" name="suaphongban" value ="Sửa đơn"></td>
    
  
  </tr>
</form>

<?php 
} 

?>
 
</table>
