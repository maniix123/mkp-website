<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?= $title ?></title>
	<link rel="icon" href="<?php echo base_url() ?>images/logo last.jpg" type="image/gif" sizes="16x16">
	<link rel="stylesheet" href="<?php echo base_url() ?>adminlte/dist/plugins/select2/select2.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.17/css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">
	<link rel="stylesheet" href="<?php echo base_url() ?>adminlte/dist/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<?php echo base_url() ?>adminlte/dist/css/adminlte.css">
	<link rel="stylesheet" href="<?php echo base_url() ?>adminlte/dist/css/skins/_all-skins.css">
	<link href="https://unpkg.com/ionicons@4.2.0/dist/css/ionicons.min.css" rel="stylesheet">
	<link rel="stylesheet" href="<?php echo base_url() ?>css/admin.css">
	<script type="text/javascript" src="https://cdn.rawgit.com/mikeflynn/egg.js/master/egg.min.js"></script>
	<script src="<?php echo base_url() ?>adminlte/dist/plugins/jquery/jquery.min.js"></script>
	<script>var base_url = "<?php echo base_url();?>";</script>
</head>
<body class="hold-transition sidebar-mini skin-red fixed">
	<div class="wrapper">
		<header class="main-header">
			<a href="<?= base_url() .'member' ?>" class="logo">
				<span class="logo-mini"><b>MKP</b></span>
				<span class="logo-lg"><b>Mu Kappa Phi</b></span>
			</a>
			<nav class="navbar navbar-static-top">
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
					<span class="sr-only">Toggle navigation</span>
				</a>
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<li class="dropdown user user-menu">
							<a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
								<img src="<?= $this->user->get('image'); ?>" alt="" class="user-image">
								<span class="hidden-xs"><?= $this->user->get('name'); ?></span>
							</a>
							<ul class="dropdown-menu">
								<li class="user-header">
									<img src="<?= $this->user->get('image'); ?>" alt="profile picture" class="img-circle">
									<p><?= $this->user->get('name'); ?></p>
									<small>Mu Kappan since <?= $this->user->get('year') ?></small>
								</li>
								<li class="user-body">
									<div class="row">
										<div class="col-lg-12">
											<a href="<?= base_url() . 'member/profile' ?>" class="btn btn-primary btn-block"><i class="fa fa-user"></i> View Profile</a>
										</div>
									</div>
								</li>
								<li class="user-footer">
									<div class="row">
										<div class="col-lg-12">
											<a href="<?= base_url() . 'logout' ?>" class="btn btn-default btn-block"><i class="fa fa-sign-out"></i> Log out</a>
										</div>
									</div>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</nav>
		</header>
