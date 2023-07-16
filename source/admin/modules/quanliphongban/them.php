<h3>Thêm phòng ban </h3>

<table border="1" width="100%" class="table table-dark">
  <form method="POST" action="modules/quanliphongban/xuly.php" enctype="multipart/form-data">
   <tr>
    <th>Thứ tự</th>
    
    <td><input type="text" name="thutu"></td>
    
  
  </tr>

  <tr>
    <th>Tên phòng ban</th>
    
    <td><input type="text" name="ten_phongban" ></td>
  
  </tr>
  <tr>
    <th>Mã phòng ban</th>
    
    <td><input type="text" name="ma_phongban" ></td>
  
  </tr>
  <tr>
    <th>Vị trí</th>
    
    <td><input type="text" name="vitri" ></td>
  
  </tr>
<tr>
    <th>Hình ảnh</th>
    
    <td><input type="file" name="hinhanh" ></td>
  
  </tr>
  

  <tr>
    <th>Thông tin thêm</th>
    
    <td><textarea rows="6" cols="60" name="thongtin" style="width: 100% resize: none;"></textarea></td>
   
  </tr>

  

 <tr>
   
    <td colspan="2"><input class="btn btn-primary" type="submit" name="themphongban" value ="Thêm phòng ban"></td>
    
  
  </tr>
</form>
 
</table>
