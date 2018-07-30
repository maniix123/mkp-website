(function(){
	$('#add-button').click(() =>{
		let container = $('#work-stuff');
		container.after(`
			<div class="row">
			<div class="col-lg-4 col-sm-12">
				<div class="form-group">
					<label for="work-place">Work Place</label>
					<input type="text" class="form-control" name="work-place[]" placeholder="Enter work place">
				</div>
			</div>
			<div class="col-lg-4 col-sm-12">
				<div class="form-group">
					<label for="wp">Work Position:</label>
					<input type="text" class="form-control" name="work-position[]" placeholder="Enter work position">
				</div>
			</div>
			<div class="col-lg-3 col-sm-12">
				<div class="form-group">
					<label for="years">Years Working</label>
					<input type="text" class="form-control" name="years-working[]" placeholder="Enter number of years working">
				</div>
			</div>
			<div class="col-lg-1 col-md-1 text-center">
					<div class="form-group">
						<label for="delete-button">Delete row</label>
						<p><i class="fa fa-times text-danger delete_row_buttons" style="font-size: 30px; cursor: pointer" ></i></p>
					</div>
				</div>
			</div>`);
		let deleteRowButtons = $('.delete_row_buttons'),
		    countOfButtons = deleteRowButtons.length;
		for(var i = 0; i < countOfButtons; i++){
			deleteRowButtons[i].addEventListener('click', addSomething);
		}
	});
})();
function addSomething(){
	var elem = $(this);
	elem.parent().parent().parent().parent().addClass('disappear');
	setTimeout(function () {
		elem.parent().parent().parent().parent().addClass("hide");
		elem.parent().parent().parent().parent().remove();
	}, 700);
}