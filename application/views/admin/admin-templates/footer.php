<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<footer class="main-footer">
	<strong>Copyright &copy; <?php echo date('Y') ?> <a href="<?php echo base_url()?>">Mu Kappa Phi Fraternity.</a></strong> All rights reserved.
	<small>{elapsed_time}s</small>
</footer>
<script>
	var egg = new Egg();
	egg.addCode("a,l,l,m,e,m,b,e,r,s", function() {
		window.location.href = base_url + 'member/view/all';
	})
	.addCode("a,d,d,m,e,m,b,e,r", function(){
		window.location.href = base_url + 'member/add/member';
	})
	.addCode("a,d,d,b,a,t,c,h", function(){
		window.location.href = base_url + 'member/add/batch';
	})
	.addCode("l,o,g,o,u,t", function(){
		window.location.href = base_url + 'logout';
	})
	.addCode("p,r,o,f,i,l,e", () =>{
		window.location.href = base_url + 'member/profile';
	})
	.addCode("d,e,l,e,t,e,c,a,c,h,e", () => {
		window.location.href = base_url + 'member/delete/cache';
	})
	.listen();
	$(document).bind('keydown', function(e) {
		if(e.ctrlKey && (e.which == 69)) {
			e.preventDefault();
			$('body').toggleClass('sidebar-open sidebar-collapse');
			return false;
		}
	});
</script>