<h3>Thêm đơn xin nghỉ </h3>

<table border="1" width="100%" class="table table-dark">
  <form method="POST" action="modules/quanliphongban/xuly.php" enctype="multipart/form-data">
   <tr>
    <th>Thứ tự</th>
    
    <td><input type="text" name="thutu"></td>
    
  
  </tr>

  <tr>
    <th>Tên đơn</th>
    
    <td><input type="text" name="ten_đơn" ></td>
  
  </tr>
  <tr>
    <th>Mã đơn</th>
    
    <td><input type="text" name="ma_don" ></td>
  
  </tr>
  <tr>
    <th>Người gửi</th>
    
    <td><input type="text" name="nguoigui" ></td>
  
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
   
    <td colspan="2"><input class="btn btn-primary" type="submit" name="themphongban" value ="Thêm đơn nghỉ"></td>
    
  
  </tr>
</form>
 
</table>
