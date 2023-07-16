
<?php 

$sql_lietke="SELECT * FROM tbl_phongban ORDER BY thutu asc  ";
$row_lietke=mysqli_query($mysqli,$sql_lietke);
 ?>
 <h3>Thông tin chi tiết tài phòng ban </h3>



<div class="container" >
  
            
  <table class="table table-hover" width="100%" >

    <thead>
      <tr>
       <th>Id</th>
    <th>STT</th>
    <th>Tên</th>
    <th>Mã số</th>
    <th>Vị trí</th>
    <th>Hình ảnh</th>
    <th>Thông tin</th>
    
      </tr>
</thead>
<?php 
    $i=0;
    while($row=mysqli_fetch_array($row_lietke)) {
        $i++;
      # code...
    
    
   ?>

    

    <tbody >

      <tr>
        <td><?php echo $i ?></td>
      <td><?php echo $row['thutu'] ?></td>
    <td><?php echo $row['ten_phongban'] ?></td>
    <td><?php echo $row['ma_phongban'] ?></td>
    <td><?php echo $row['vitri'] ?></td>
    
    <td><img src="../images/<?php echo $row['hinhanh'] ?> " width="150px"></td>
    <td><?php echo $row['thongtin'] ?></td>

    
      </tr>
    </tbody>

  <?php 

}
   ?>

  </table>


</div>












