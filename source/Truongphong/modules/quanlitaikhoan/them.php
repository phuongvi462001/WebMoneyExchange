<h3>Tạo task mới </h3>

<table border="1" width="100%" class="table table-dark">
  <form method="POST" action="modules/quanlitaikhoan/xuly.php" enctype="multipart/form-data">
   <tr>
    <th>Thứ tự</th>
    
    <td><input type="text" name="thutu"></td>
    
  
  </tr>

  <tr>
    <th>Tên task</th>
    
    <td><input type="text" name="ten_task" ></td>
  
  </tr>
  <tr>
    <th>Mã task</th>
    
    <td><input type="text" name="ma_task" ></td>
  
  </tr>
  
<tr>
    <th>Hình ảnh</th>
    
    <td><input type="file" name="hinhanh" ></td>
  
  </tr>
  
  <tr>
    <th>Task và thông tin thêm</th>
    
    <td><textarea rows="5" cols="60" name="mota" style="width: 50% resize: none;"></textarea></td>
  
  </tr>

 <tr>
   
    <td colspan="2"><input class="btn btn-primary" type="submit" name="themsanpham" value ="Thêm task"></td>
    
  
  </tr>
</form>
 
</table>
