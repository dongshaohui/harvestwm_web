$(document).ready(function(){
  //照片遮罩
  $('.person_picture').each(function (index){
      $(this).hover(function(){
          $(this).find('.mask').addClass('show');
      },function(){
          $(this).find('.mask').removeClass('show');
      });
  });

   //修改宽度样式开始
	$('.contact_item li').each(function (index){
	 	var iHited = (index+1)%4 ; 
	 	if (0 == iHited) {
	 		$('.contact_item li').eq(index).css({'margin-right':'0px'});	
	 	};	
 	});
	//修改宽度样式结束

	//点击关注背景色变
      $('#contact_me').click(function(){
          $(this).css({'background':'#ebebeb','color':'#333'})
      });
});