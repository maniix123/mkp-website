$(function(){
	fetchChapters();
});

function fetchChapters(){
	$.ajax(
	{
		url: base_url + "admin/batches/select",
		success:function(res){
			res = JSON.parse(res);
			let select = $('#batch');
			for(var i = 0; i < res.length; i++){

				select.append('<option value="'+res[i].batch_id+'">'+res[i].batch_name +' - '+ res[i].year +' - '+ res[i].chapter+' Chapter</option>');
			}
		},
		error: function(e){
			console.log(e.errorThrown);
		}
	});
}