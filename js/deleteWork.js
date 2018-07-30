	function deleteWork(e){
		if(confirm("Are you sure you want to delete this work data?")){
			$.ajax({
				url: base_url +'member/delete/id/'+ e.getAttribute('data-work') +'/who/batch-ajax',
				success: function(res){
					if(res == 1){
						e.parentElement.parentElement.parentElement.parentElement.classList.add("disappear");
						setTimeout(function () {
							e.parentElement.parentElement.parentElement.parentElement.classList.add("hide");
							var parentNode = document.querySelectorAll('.hide');
							var parentNodeLength = parentNode.length;
							for(var i = 0; i < parentNodeLength; i++)
							{
								while (parentNode[i].hasChildNodes()) {   
									parentNode[i].removeChild(parentNode[i].firstChild);
								}
							}
						}, 700);
					}
				},
				error: function(res){
					console.log(res);
				}
			});
		}
	}
