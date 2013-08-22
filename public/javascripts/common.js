$(function(){

	var hobbies = [];

	$.ajax({
		url: "/hobbies",
		dataType: "JSON",
		success: function(data){
			hobbies = data
		}
	});

	$('div.labels a').click( function(){
		var button = $(this);

		$.each(hobbies,function(hobby_index, hobby){
			$.each(hobby['labels'], function(index, label){
				if(label == button.text()) {
					console.log(hobby['name'])
				}
			});
		})

	});

})
