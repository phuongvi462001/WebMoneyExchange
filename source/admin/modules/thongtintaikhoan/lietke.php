
<?php 

$sql_lietke="SELECT * FROM tbl_nhanvien ORDER BY thutu asc  ";
$row_lietke=mysqli_query($mysqli,$sql_lietke);
 ?>
 <h3>Thông tin chi tiết tài khoản nhân viên </h3>



<div class="container" >
  
            
  <table class="table table-hover" width="100%" >

    <thead>
      <tr>
       <th>Id</th>
    <th>STT</th>
    <th>Email</th>
    <th>Rating</th>
    <th>Comment</th>
    
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
    <td><?php echo $row['ten_nhanvien'] ?></td>
    <td><?php echo $row['ma_nhanvien'] ?></td>
    <td><?php echo $row['phongban'] ?></td>
    
    <td><img src="../images/<?php echo $row['hinhanh'] ?> " width="150px"></td>
    

    
      </tr>
    </tbody>

  <?php 

}
   ?>

  </table>


</div>












