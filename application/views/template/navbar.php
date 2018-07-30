<nav class="navbar navbar-expand-md bg-black navbar-dark fixed-top" style="background-color:#4D4547">
	<div class="container">
		<!-- Brand -->
		<a class="navbar-brand" href="<?php echo base_url(); ?>">MU KAPPA PHI</a>

		<!-- Toggler/collapsibe Button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Navbar links -->
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item">
					<a class="nav-link" href="<?php echo base_url(); ?>"><i class="fa fa-home" style=""></i> Home</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
						Who We Are
					</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="about"><i class="fa fa-info-circle"></i> About Us</a>
						<a class="dropdown-item" href="history"><i class="fa fa-history"></i> History</a>
					</div>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="blog"><i class="fa fa-newspaper"></i> Blog</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="contact"><i class="fa fa-phone"></i> Contact</a>
				</li>
				<li class="nav-item"><a href="login" class="nav-link"><i class="fa fa-user"></i> Members</a></li>
			</ul>
		</div> 
	</div>
</nav>