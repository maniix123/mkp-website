/*
	IF you somehow managed to view this on your browser, then All I can say to you is putang ina mo and 
	stay the fuck away from my work.

	Sincerely,
	Website Administrator ./.
*/
window.addEventListener("hashchange", () => {
	window.scrollTo(window.scrollX, window.scrollY - 100);
});

$(window).scroll(() => {

	/* Define the Variables */
	let floatingMenu 	= $('#floatingMenu'), //get the floating menu
		heightFromTop 	= $(window).scrollTop(), //get the window height from the top
		footer 			= $('#footer'), //get the footer
		footerFromTop 	= footer.offset().top, //get the distance of the footer from the top
		footerHeight 	= (footerFromTop - footer.outerHeight()); //get the height of the footer.
		
	if($(window).width() > 767){ //If the width of the window is less than 767 it won't work

		if(heightFromTop >= 500 ){
			floatingMenu.addClass('floating');
			floatingMenu.css('top', (heightFromTop - 480));
		}
		else if(heightFromTop < 500){
			floatingMenu.removeClass('floating');
			floatingMenu.css('top', '0');
		}
		if(heightFromTop > (footerHeight - 500)){
			floatingMenu.css('top', '');
			floatingMenu.removeClass('floating');
			floatingMenu.addClass('fixed-at-bottom');
		}else{
			floatingMenu.removeClass('fixed-at-bottom');
			floatingMenu.addClass('floating');
		}
	}
	else{ /* DO NOTHING */ }
});
/* FUNCTION REGARDING THE ADDING OF ACTIVE CLASS */
$('.list-group-item').on('click', (e) =>{
	e.stopPropagation(); // stops click event from bubbling up from child
	$('.active').removeClass("active"); // remove all previously selected classes
	$(e.target).addClass("active"); 
});