var T_model_01='\
	<li>\
		<div class="person_picture"><img src="../images/renwu/a-1.jpg" alt="" /></div>\
		<div class="person_name">\
			<span class="p_name">{name}</span>\
			<span class="adder_name">{address}</span>\
		</div>\
		<div class="person_describe">\
			<span class="de_tit">PE/VC</span>\
			<span class="de_tit">私募股权</span>\
			<span id="title_three" class="de_tit">一级市场</span>\
			<div class="clear"></div>\
		</div>\
	</li>\
	<div class="clear"></div>\
';
var StringUtil = StringUtil || {} ;
StringUtil.replaceAll = function (sTemplate, oJson) {
    return sTemplate.replace(/\{(.*?)}/g, function() {
        var sWord = arguments[1];
        if ("undefined" != typeof(oJson) && "undefined" != typeof(oJson[sWord])) {
            return oJson[sWord] ;
        } else {
            return arguments[0] ;
        }
    }) ;
} ;

$(document).ready(function() {
	PERSON = [
	{name:'张津', address:'北京',}
	,{username:'何南', address:'上海',}
	,{username:'何北', address:'北京',}
	,{username:'何东', address:'上海',}
	,{username:'何西', address:'深圳',}
	,{username:'何南', address:'上海',}
	,{username:'何南', address:'北京',}
	,{username:'何南', address:'上海',}
	] ;
    //修改宽度样式开始
	$('.contact_item li').each(function (index){
	 	var iHited = (index+1)%4 ; 
	 	if (0 == iHited) {
	 		$('.contact_item li').eq(index).css({'margin-right':'0px'});	
	 	};	
 	});
	//修改宽度样式结束
	/*var length=PERSON.length;
    for(i=0;i<length;i++){
    	obj=PERSON[i];
        var sHtml=StringUtil.replaceAll(PERSON,{name:obj.name,address:obj.adderss})
        $('.contact_item').html(sHtml);

    }*/
    
});