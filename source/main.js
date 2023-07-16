// $(document).ready(function(){
// $('#them').click(function(){
// var data=$('#cmt-form').serialize()+'&them=them';
// $ajax({
//     url:'sanpham.php', type='post', data=data,success:function(response){
        
//     }
// });

// });

// });
// $(document).ready(function(){
// $('#them').click(function(){
// var data=$('#cmt-form').serialize()+'&them=them';
// $ajax({
//     url:'sanpham.php', type='post', data=data,success:function(response){
        
//     }
// });

// });

// });


function readURL(input, idImage) {

    if (input.files && input.files[0]) {
    
    var reader = new FileReader();
    reader.onload = function (e) { 
        document.querySelector("#" + idImage).setAttribute("src",e.target.result);
    };

    reader.readAsDataURL(input.files[0]); 
    }
}
