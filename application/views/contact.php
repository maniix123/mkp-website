<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php include 'template/header.php'; ?>
<div id="content">
	<?php include 'template/navbar.php'; ?>
	<div class="container-fluid" id="c-first-section">
		<h1 class="bounceInDown animated">Contact Us</h1>
	</div>
	<div class="container mb-5" id="c-second-section">
		<div class="row">
			<div class="col-lg-7">
				<div class="form-group">
					<label for="name">Name: *</label>
					<input type="text" placeholder="Enter name" required class="form-control">
				</div>
				<div class="form-group">
					<label for="email">Email: *</label>
					<input type="email" placeholder="Enter email" required class="form-control">
				</div>
				<div class="form-group">
					<label for="comment">Comment</label>
					<textarea name="comment" rows="5" class="form-control" placeholder="Enter comment"></textarea>
				</div>
				<div class="form-group">
					<button class="btn btn-warning"><i class="fa fa-check"></i> Submit</button>
				</div>
			</div>
			<div class="col-lg-5 fadeIn animated">
				<div class="custom-contact text-center">
					<div class="form-group">
						<i class="fa fa-map-marker-alt"></i>
						<h4> Andres Bonifacio Ave, Iligan City, 9200 Lanao del Norte</h4>						
					</div>
					<div class="form-group">
						<p><i class="fa fa-mobile-alt"></i></p>
						<div class="g-recaptcha text-center mt-2" data-sitekey="6Le95WQUAAAAAFEuajNK9H8JMOEwTG8oz93JFXon" data-callback="recaptchaCallback" id="recaptcha" style="display: inline-block; width: 300px;"></div>
						<h4 id="contactNumber" style="display: none;">09277986249 <br> <small><i>Website Administrator</i></small></h4>						
					</div>
					<div class="form-group">
						<p><i class="fa fa-envelope"></i></p>
						<h4><a href="mailto:mkpchapter@gmail.com" style="text-decoration: none;">mkpchapter@gmail.com</a></h4>					
					</div>
				</div>
			</div>
		</div>
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d61771.14751470374!2d120.97918816094968!3d14.616344836770837!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397b7af1b75f41f%3A0x4ae46f0862222d1a!2sMLQU+School+of+Law!5e0!3m2!1sen!2sph!4v1532016598970" width="100%" height="450" frameborder="0" style="border:0; margin-bottom: 5px;" allowfullscreen></iframe>
		<footer class="blockquote-footer text-center">
			<cite title="Source Title">Mu Kappa Phi Headquarters </cite>
		</footer>
	</div>
	<script src='https://www.google.com/recaptcha/api.js'></script>
	<script src="<?php echo base_url() . 'js/recaptchaValidation.js' ?>"></script>
	<?php include 'template/footer.php'; ?>
</body>
</html>