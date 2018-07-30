<?php include 'admin-templates/header.php' ?>
<?php include 'admin-templates/sidebar.php' ?>

<!-- Content Wrapper. Contains Page Content -->
<div class="content-wrapper">
	<!-- Stupid Content Header -->
	<div class="content-header">
		<h1>Profile</h1>
		<ol class="breadcrumb">
			<li>
				<a href="<?php echo base_url() ?>member">
					<i class="fa fa-user"></i> Profile
				</a>
			</li>
		</ol>
	</div>
	<!-- Main Content -->
	<section class="content">
		<div class="row">
			<div class="col-lg-12">
				<div class="alert alert-info <?= empty($this->session->flashdata('success')) ? 'hide' : '' ?>">
					<p class="text-center"><?= $this->session->flashdata('success') ?></p>
				</div>
				<div class="alert alert-danger <?= empty($this->session->flashdata('error')) ? 'hide' : '' ?>">
					<p class="text-center"><?= $this->session->flashdata('error') ?></p>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="box box-danger">
					<div class="box-body box-profile">
						<img src="<?= $this->user->get('image', $member[0]->id) ?>" alt="" class="profile-user-img img-responsive img-circle">
						<p class="text-center <?= ($member[0]->role == 'super-admin') ? '' : 'hide' ?>"><span class="label label-danger" style="font-size: 10px">Website Admnistrator</span></p>
						<p class="text-center <?= ($member[0]->FirstName .' '. $member[0]->LastName == $member[0]->batch_president) ? '' : 'hide' ?>"><span class="label label-warning">Batch President</span></p>
						<h3 class="profile-username text-center"><?= $member[0]->FirstName .' '. $member[0]->LastName ?></h3>
						<ul class="list-group list-group-unbordered">
							<li class="list-group-item">
								<b>Batch Name:</b>
								<a href="javascript:void(0)" class="pull-right"><?= $member[0]->batch_name ?></a>
							</li>
							<li class="list-group-item">
								<b>Batch Year</b>
								<a href="javascript:void(0)" class="pull-right"><?= $member[0]->year ?></a>
							</li>
							<li class="list-group-item">
								<b>MKP Chapter: </b>
								<a href="javascript:void(0)" class="pull-right"><?= $member[0]->chapter ?></a>
							</li>
						</ul>
						<a href="<?= base_url() .'member/edit/profile' ?>" class="btn btn-info <?= ($member[0]->id != $this->session->id) ? 'hide' : '' ?>"><i class="fa fa-pencil"></i> Edit Profile</a>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="nav-tabs-custom">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#aboutme" data-toggle="tab">About Me</a></li>
						<li><a href="#work" data-toggle="tab">Work History</a></li>
					</ul>
					<div class="tab-content">
						<div class="active tab-pane" id="aboutme">
							<strong><i class="fa fa-map-marker "></i> Current Address</strong>
							<p class="text-muted"><?= !empty($member[0]->CurrentAddress) ? $member[0]->CurrentAddress : 'No data provided'  ?></p>
							<hr>
							<strong><i class="fa fa-map-marker "></i> Permanent Address</strong>
							<p class="text-muted"><?= !empty($member[0]->PermanentAddress) ? $member[0]->PermanentAddress : 'No data provided'  ?></p>
							<hr>
							<strong><i class="fa fa-mobile"></i> Contact Number</strong>
							<p class="text-muted"><?= !empty($member[0]->ContactNumber) ? $member[0]->ContactNumber : 'No data provided' ?></p>
						</div>
						<div class="tab-pane" id="work">
							<table class="table table-bordered table-hover">
								<thead>
									<th>Work Place</th>
									<th>Position</th>
									<th>Years</th>
								</thead>
								<tbody>
									<?php if(count($this->user->getWork($member[0]->id)) != 0): ?>
										<?php foreach($this->user->getWork($member[0]->id) as $work): ?>
											<tr>
												<td><?= $work->WorkPlace ?></td>
												<td><?= $work->WorkPosition ?></td>
												<td><?= $work->years ?></td>
											</tr>
										<?php endforeach; ?>
										<?php else: ?>
											<tr>
												<td></td>
												<td>No Work Data Provided</td>
												<td></td>
											</tr>
									<?php endif; ?>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="well">
					<h3>Other Members from <?= $member[0]->batch_name ?></h3>
					<table class="table table-hover table-bordered">
						<thead>
							<th>Name</th>
							<th>Contact Number</th>
						</thead>
						<tbody>
							<?php foreach($this->user->getBatchMembers($member[0]->id) as $members): ?>
								<?php if($members->FirstName != $member[0]->FirstName): ?>
									<tr>
										<td><a href="<?= base_url() . 'member/view/' . $members->id ?>"><?= $members->FirstName .' '. $members->LastName ?></a> 
											<span class="label label-warning <?= ($members->FirstName .' '. $members->LastName == $members->batch_president) ? '' : 'hide' ?>">Batch President</span></td>
											<td><?= $members->ContactNumber ?></td>
									</tr>
									<?php else: ?>
									<?php endif; ?>
								<?php endforeach; ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</section>
	</div>
	<?php include 'admin-templates/footer.php' ?>
</div>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="<?php echo base_url() ?>adminlte/dist/js/app.js"></script>
<script>
	$('.sidebar li:nth-child(5)').addClass('active');
</script>
</body>
</html>