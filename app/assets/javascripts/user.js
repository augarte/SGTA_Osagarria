$(document).ready(function(){

	var $object = $('#info_d');
	showDiv($object);

	$('#info_l').click(function(){
		var $object = $('#info_d');
		showDiv($object);
	});

	$('#tBerria_l').click(function(){
		var $object = $('#tBerria_d');
		showDiv($object);
	});

	$('#tHistoria_l').click(function(){
		var $object = $('#tHistoria_d');
		showDiv($object);
	});

	function showDiv(object){
		object.show().siblings().hide();
		checkFooter();
	};
});