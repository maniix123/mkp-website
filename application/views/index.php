<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php include 'template/header.php'; ?>
<div id="content">
	<?php include 'template/navbar.php'; ?>
	<div class="container-fluid" id="first-section">
	</div>
	<div class="container-fluid" id="second-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-1"></div>
				<div class="col-lg-10 text-center">
					<h1 class="bounceInDown animated">Welcome To <b>Mu Kappa Phi</b> Fraternity</h1>
					<p class="bounceInLeft animated">
						Mu Kappa Phi is one of the largest Law Fraternity and Sorority in the Philippines with more than 20,000 members, including over 500 undergraduates and 7 chapters and colonies located throughout the country. Founded in 1948 at the Manuel L. Quezon University, Mu Kappa Phi Headquarters is based in Quezon City, Philippines.
					</p>
				</div>
				<div class="col-lg-1"></div>
			</div>
		</div>
	</div>
	<div class="container" id="third-section">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="text-center">Latest News</h1>
			</div>
		</div>
		<div class="row" id="wp-posts">
			<!-- <script> callWpPosts(); </script> -->
			<?= ENVIRONMENT; ?>
		</div>
	</div>
	<div class="container-fluid" id="fourth-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-8 text-center">
					<h1>For Undergrads</h1>
					<p>Looking to get more out of college, serve your community, and build relationships that will last for a lifetime? If so, this is the place for you!</p>
					<a href="contact" class="btn btn-primary">Click Here</a>
				</div>
				<div class="col-lg-2"></div>
			</div>
		</div>
	</div>
	<?php include 'template/footer.php'; ?>
</body>
</html>