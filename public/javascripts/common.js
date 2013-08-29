$(function(){

	var hobbies = [];

	$.ajax({
		url: "/hobbies",
		dataType: "JSON",
		success: function(response){
			hobbies = response
		}
	});

	$('div.labels a').click(function(){
		var button = $(this);
		var number = button.data('index');

		if (button.hasClass("active")){
			$("."+number+"").remove();
			button.removeClass("active");
		}

		else{
			$.each(hobbies, function(hobby_index, hobby){
				$.each(hobby['labels'], function(index, label){
					if(label == button.text()) {
						$('.suggested_hobbies ul').append("<li class="+number+">"+hobby['name']+"</li>");
						button.addClass("active");
					}
				})
			})
		}
	})
})
