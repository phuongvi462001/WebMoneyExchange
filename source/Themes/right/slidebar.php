
<div id="sld">


<section class="danhmuc-banner spad">
        <div class="container">
            <div class="row">


                <div class="col-lg-3">
                    <div class="product-large set-bg" >
                       <div class="slidebar1">
  


    <h3>Type</h3>
    </div>
 

 <div class="slidebar">
              <div class="container">
  <div class="row">
  <div class=" col-sm-6 col-md-2 col-lg-3 col-xl-12 ">   


                 <ul>
                     


                   <?php 
$sql_danhmuc ="SELECT * FROM tbl_danhmuc ORDER BY thutu ASC";
$query_danhmuc =mysqli_query($mysqli,$sql_danhmuc);


while ($row=mysqli_fetch_array($query_danhmuc)) {

 ?>


                     <li><a href="index.php?quanly=danhmucsanpham&id=<?php echo $row['thutu'] ?>"><?php echo $row['ten_danhmuc'] ?></a></li>
                      
                      <?php 
        } 
        ?>

                    
                 </ul>
               </div>
             </div>
           </div>
             </div>
                    </div>
                  </div>
                   
                   <div class="clear"></div>

  

 <div class="col-lg-3">
                    <div class="product-large set-bg" >

          <div class="slidebar1">


           <h3>Tỷ giá</h3>
       </div>
<div class="slidebar">
     <div class="container">
  <div class="row">
  <div class=" col-sm-6 col-md-2 col-lg-3 col-xl-12 ">              


                 <ul>
                    

 <?php 

$sql_npt ="SELECT * FROM tbl_tygia ORDER BY thutu ASC ";
$query_npt =mysqli_query($mysqli,$sql_npt);
  

while ($row_npt=mysqli_fetch_array($query_npt)) {

 ?>

 <li><a href="index.php?quanly=tygia&id=<?php echo $row_npt['thutu'] ?>"><?php echo $row_npt['ten_tygia'] ?></a></li>
        <?php 

}
         ?>
       
                 </ul>
             </div>


</div>
</div>
</div>
</div>
</div>
</div>

                    
                </div>

                <br>
                <div style="font-size:20px"><b>Hình ảnh tiền ngoại tệ tương ứng</b></div>
                <div style="font-size:20px; color:red"><b>USD      |       CAD      |     EUR    |      JPY         |     UAD    |    CHF    |    GBP     |    THP     |     SGD    |    KRW     |   SAR</b></div>
                <img src="images/USD.jpg" height="100">&nbsp &nbsp
                <img src="images/CAD.jpg" height="100">&nbsp &nbsp
                <img src="images/EUR.png" height="100">&nbsp &nbsp
                <img src="images/JPY.jpg" height="100">&nbsp &nbsp
                <img src="images/UAD.jpg" height="100">&nbsp &nbsp
                <img src="images/CHF.jpg" height="100">&nbsp &nbsp
                <img src="images/GBP.jpg" height="100">&nbsp &nbsp
                <img src="images/THP.jpg" height="100">&nbsp &nbsp
                <img src="images/SGD.jpg" height="100">&nbsp &nbsp
                <img src="images/KRW.jpg" height="100">&nbsp &nbsp
                <img src="images/AR.jpg" height="100">&nbsp &nbsp
                

</div>