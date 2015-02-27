
$(document).ready(function() {
    //修改宽度样式开始
	$('.contact_item li').each(function (index){
	 	var iHited = (index+1)%4 ; 
	 	if (0 == iHited) {
	 		$('.contact_item li').eq(index).css({'margin-right':'0px'});	
	 	};	
 	});
	//修改宽度样式结束
  
  //照片遮罩
  $('.person_picture').each(function (index){
      $(this).hover(function(){
          $(this).find('.mask').addClass('show');
      },function(){
          $(this).find('.mask').removeClass('show');
      });
  });



  //上一页，下一页样式
    $('.b_page').each(function (index){
       $(this).click(function(){
       	   $('.b_page').removeClass('b_color');
           $(this).addClass('b_color');
           $('##next_above span').css({'margin-right':'32px'})
       });
    });
    //点击所在城市、擅长领域子菜单背景色变化
    $('.c_name').each(function (index){ 
        var Children=$(this).children();
        Children.each(function(){
        	$(this).click(function(){
                $(this).siblings().removeClass('c_all');
                $(this).addClass('c_all');
        	});
        });
    });

    /*$(".c_name a").click(function(){
    	$('.c_name[field='+$(this).parent().attr("field")+']').find('a').removeClass('c_all');
        $(this).addClass('c_all');
    });*/
    //点击关注背景色变
      $('#contact_me').click(function(){
          $(this).css({'background':'#ebebeb','color':'#333'})
      });
});