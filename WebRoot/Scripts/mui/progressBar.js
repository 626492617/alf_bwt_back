$(function(){
	var plan = 1;
	var progressBar="<div id='progressBar' style='position:absolute;top:0px;height:3px;width:0;background:#f5a623;'></div>";
	$('.mui-content').append(progressBar);
	var palnTimer = setInterval(function(){
		var i = parseInt(10*Math.random());
		if(plan<101){
			var plans = plan+'%';
			$('#progressBar').css('width',plans);
			plan+=i;
		}
		else{
			$('#progressBar').remove();
		}
	},50);
});

