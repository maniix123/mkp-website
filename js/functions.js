/*
	IF you somehow managed to view this on your browser, then All I can say to you is putang ina mo and 
	stay the fuck away from my work.

	Sincerely,
	Website Administrator ./.
*/
(function(){

	/* Some Nav bar function */ 
	$(window).scroll(function(){
		let heightFromTop = $(window).scrollTop();
		if(heightFromTop > 1){
			$('.navbar-brand').css('font-size', '25px');
		}
		else{
			$('.navbar-brand').css('font-size', '30px');
		}
	});
})();

function callWpPosts(){
	let anchorss = document.getElementById('wp-posts');
	anchorss.innerHTML = '<div class="col-lg-12 text-center"><h2>Fetching latest news</h2></div>';
	$.ajax({
		url: "http://mkpblog.eu3.biz/wp-json/wp/v2/posts?_embed",
	})
	.done(function( data ) {
		let length = data.length;
		for(let i = 0; i < length; i++){
			anchorss.innerHTML += '<div class="col-lg-6">'+
			'<img src="http://yogascienceproject.org/wp-content/uploads/2017/02/Spirel-Round-294x300.png" class="img-fluid"/>'+
			'<h5>' +data[i].title.rendered+ '</h5>'+
			'<p>' +data[i].content.rendered+ '</p>'+
			'</div>';

			console.log(data);
		}
	}).fail(function(error){
		anchorss.innerHTML = '<div class="text-center"><h2>Some error has occured</h2></div>';
	});
}