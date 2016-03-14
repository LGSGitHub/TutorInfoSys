$(function(){
	var username = $("#username").val();
	if($("#username").val() == ""){
		$("#toLoginDiv").show();
	}else{
		$("#personalDiv").show();
	}
});