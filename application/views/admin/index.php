<?php include 'admin-templates/header.php' ?>
<?php include 'admin-templates/sidebar.php' ?>

<!-- Content Wrapper. Contains Page Content -->
<div class="content-wrapper">
	<!-- Stupid Content Header -->
	<div class="content-header">
		<h1>Home</h1>
		<ol class="breadcrumb">
			<li>
				<a href="<?php echo base_url() ?>admin">
					<i class="fa fa-home"></i> Home
				</a>
			</li>
		</ol>
	</div>

	<!-- Main Content -->
	<section class="content">
		<div class="text-center alert alert-danger <?= !empty($this->session->flashdata('error')) ? '' : 'hide' ?> ">
			<?= !empty($this->session->flashdata('error')) ? $this->session->flashdata('error') : '' ?>
		</div>
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-12">
				<div class="small-box bg-blue">
					<div class="inner">
						<h3><?= $totalMembers ?></h3>
						<p>Total # of Members</p>
					</div>
					<div class="icon">
						<i class="fa fa-users" style="color: #fff"></i>
					</div>
					<a href="<?= base_url() .'member/view/all' ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12">
				<div class="small-box bg-red">
					<div class="inner">
						<h3><?= $totalAtty ?></h3>
						<p>Total # of Attorneys</p>
					</div>
					<div class="icon">
						<i class="ion ion-md-contact" style="color: #fff"></i>
					</div>
					<a href="<?= base_url() .'member/view/attorneys'?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12">
				<div class="small-box bg-blue">
					<div class="inner">
						<h3><?= $totalBatches ?></h3>
						<p>Total # of batches</p>
					</div>
					<div class="icon">
						<i class="ion ion-ios-people" style="color: #fff"></i>
					</div>
					<a href="<?= base_url() .'member/view/batches' ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="box box-danger">
					<div class="box-header with-border">
						<h3 class="box-title">Latest Members</h3>
						<div class="box-tools pull-right">
							<span class="label label-danger">6 New Members</span>
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
						</div>
					</div>

					<div class="box-body no-padding">
						<div class="row">
								<?php foreach($latestMembers as $member): ?>
								<div class="col-lg-3 col-md-4 col-sm-6 text-center">
									<img src="<?= !empty($member->image) ? base_url() .'images/profile/'. $member->image : base_url() .'images/default.png' ?>" alt="User Image" class="img-circle" style="height: 200px; width:  200px;">
									<p>
										<a class="users-list-name" href="<?= base_url() .'member/view/' .$member->id ?>"><?= $member->FirstName .' '. $member->LastName ?></a>
									</p>
								</div>
							<?php endforeach; ?>
						</div>
					</div>
					<div class="box-footer text-center">
						<a href="<?= base_url() .'member/view/all'; ?>" class="uppercase">View All Members</a>
					</div>
					<!-- /.box-footer -->
				</div>
			</div>
		</div>
	</section>
</div>
<?php include 'admin-templates/footer.php' ?>
</div>
<script src="<?php echo base_url() ?>adminlte/dist/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<?php echo base_url() ?>adminlte/dist/js/app.js"></script>
<script>
	$('.sidebar li:nth-child(2)').addClass('active');
</script>
</body>
</html>