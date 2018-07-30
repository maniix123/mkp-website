<?php include 'admin-templates/header.php' ?>
<?php include 'admin-templates/sidebar.php' ?>

<!-- Content Wrapper. Contains Page Content -->
<div class="content-wrapper">
	<!-- Stupid Content Header -->
	<div class="content-header">
		<h1>Edit Profile</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
			<li><a href="#">Edit</a></li>
			<li>Member</li>
		</ol>
	</div>

	<!-- Main Content -->
	<section class="content">
		<div class="box box-info">
			<div class="box-header">
				<a href="<?= base_url() . 'member/profile' ?>" class="btn btn-primary"><i class="fa fa-chevron-left"></i> Go Back</a>
			</div>
			<div class="box-body">
				<?= form_open_multipart(base_url() .'member/update/profile') ?>
				<h1><a href="javscipr:void(0)" class="text-danger"># Personal Information</a></h1>
				<hr>
				<div class="row" style="margin-bottom: 20px;">
					<div class="col-lg-4 col-md-4 col-lg-offset-4 col-md-offset-4 text-center">
						<img src="<?= $this->user->get('image', $member[0]->id) ?>" alt="" class="img-circle img-responsive img-thumbnail" style="width: 250px; height: 250px">
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="form-group <?= (form_error('firstname')) ? 'has-error' : 'has-success' ?> has-feedback">
							<label for="firstname">First Name:</label>
							<input type="text" class="form-control" name="firstname" placeholder="Enter first name" required autofocus="true" value="<?=set_value('firstname', $member[0]->FirstName)?>">
							<span class="glyphicon form-control-feedback <?= (form_error('firstname')) ? 'glyphicon-remove' : 'glyphicon-ok' ?>"></span>
							<?= form_error('firstname', '<span class="help-block">', '</span>')?>
						</div>
						<div class="form-group <?= (form_error('lastname')) ? 'has-error' : 'has-success' ?> has-feedback">
							<label for="lastname">Last Name:</label>
							<input type="text" class="form-control" name="lastname" placeholder="Enter last name" required value="<?= set_value('lastname', $member[0]->LastName)?>">
							<span class="glyphicon form-control-feedback <?= (form_error('lastname')) ? 'glyphicon-remove' : 'glyphicon-ok' ?>"></span>
							<?= form_error('lastname', '<span class="help-block">', '</span>')?>
						</div>
						<div class="form-group <?= (form_error('contact')) ? 'has-error' : 'has-success' ?> has-feedback">
							<label for="contact">Contact Number:</label>
							<input type="text" class="form-control" name="contact" placeholder="Enter contact number" value="<?= set_value('contact', $member[0]->ContactNumber) ?>">
							<?= form_error('contact', '<span class="help-block">', '</span>') ?>
							<span class="glyphicon form-control-feedback <?= (form_error('contact')) ? 'glyphicon-remove' : 'glyphicon-ok' ?>"></span>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="form-group <?= (form_error('curr-addr')) ? 'has-error' : 'has-success' ?> has-feedback">
							<label for="curr-addr">Current Address:</label>
							<input type="text" class="form-control" name="curr-addr" placeholder="Enter current address" value="<?= set_value('curr-addr', $member[0]->CurrentAddress)?>">
							<span class="glyphicon form-control-feedback <?= (form_error('curr-addr')) ? 'glyphicon-remove' : 'glyphicon-ok' ?>"></span>
							<?= form_error('curr-addr', '<span class="help-block">', '</span>')?>
						</div>
						<div class="form-group <?= (form_error('p-addr')) ? 'has-error' : 'has-success' ?> has-feedback">
							<label for="p-addr">Permanent Address:</label>
							<input type="text" class="form-control" name="p-addr" placeholder="Enter permanent address" value="<?= set_value('p-addr', $member[0]->PermanentAddress) ?>">
							<span class="glyphicon form-control-feedback <?= (form_error('p-addr')) ? 'glyphicon-remove' : 'glyphicon-ok' ?>"></span>
							<?= form_error('p-addr', '<span class="help-block">', '</span>') ?>
						</div>
						<div class="form-group <?= !empty($this->session->flashdata('error')) ? 'has-error' : 'has-success' ?>">
							<label for="image">Upload your profile image:</label>
							<input type="file" name="user-image" value="<?= set_value('image') ?>">
							<?= !empty($this->session->flashdata('error')) ? '<span class="help-block">'.$this->session->flashdata('error').'</span>' : '' ?>
						</div>
						<div class="form-group">
							<div class="checkbox">
								<label><input type="checkbox" name="atty" value="yes" <?= ($member[0]->AttyOrNot == "yes") ? 'checked="checked"' : '' ?>> Please check if you are an attorney</label>
							</div>
						</div>
					</div>
				</div>
				<hr>
				<h1><a href="javascript:void(0)" class="text-danger"># Work Information</a></h1>
				<hr>
				<h3>Present work data:</h3>
				<?php if(count($this->user->getWork($member[0]->id)) == 0): ?>
					<p class="text-center">No work data available.</p>
					<?php else: ?>
						<?php foreach($this->user->getWork($member[0]->id) as $index=>$work): ?>
							<div class="row">
								<div class="col-lg-4 col-md-4 col-sm-12">
									<div class="form-group <?= (form_error('curr-work-place['.$index.']')) ? 'has-error' : 'has-success' ?> has-feedback">
										<label for="work-place">Work Place</label>
										<input type="text" class="form-control" name="curr-work-place[]" placeholder="Enter work place" value="<?= set_value('curr-work-place['.$index.']', $work->WorkPlace) ?>">
										<span class="glyphicon form-control-feedback <?= (form_error('curr-work-place['.$index.']')) ? 'glyphicon-remove' : 'glyphicon-ok' ?>"></span>
										<?= form_error('curr-work-place['.$index.']', '<span class="help-block">', '</span>') ?>
										<input type="hidden" name="curr-work-id[]" value="<?= $work->id ?>">
									</div>
								</div>
								<div class="col-lg-4 col-md-4 col-sm-12">
									<div class="form-group <?= (form_error('curr-work-position['.$index.']')) ? 'has-error' : 'has-success' ?> has-feedback">
										<label for="wp">Work Position:</label>
										<input type="text" class="form-control" name="curr-work-position[]" placeholder="Enter work position" value="<?= set_value('curr-work-position['.$index.']', $work->WorkPosition) ?>">
										<span class="glyphicon form-control-feedback <?= (form_error('curr-work-position['.$index.']')) ? 'glyphicon-remove' : 'glyphicon-ok' ?>"></span>
										<?= form_error('curr-work-position['.$index.']', '<span class="help-block">', '</span>') ?>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-sm-12">
									<div class="form-group <?= (form_error('curr-years-working[0]')) ? 'has-error' : 'has-success' ?> has-feedback">
										<label for="years">Years Working</label>
										<input type="text" class="form-control" name="curr-years-working[]" placeholder="Enter number of years working" value="<?= set_value('curr-years-working['.$index.']', $work->years) ?>">
										<span class="glyphicon form-control-feedback <?= (form_error('curr-years-working['.$index.']')) ? 'glyphicon-remove' : 'glyphicon-ok' ?>"></span>
										<?= form_error('curr-years-working['.$index.']', '<span class="help-block">', '</span>') ?>
									</div>
								</div>
								<div class="col-lg-1 col-md-1 text-center">
									<div class="form-group">
										<label for="delete-button">Delete</label>
										<p><i class="fa fa-times text-danger delete-button" onclick="deleteWork(this)" data-work="<?= $work->id ?>" style="font-size: 30px; cursor: pointer" ></i></p>
									</div>
								</div>
							</div>
						<?php endforeach;?>
					<?php endif; ?>
					<hr>
					<h3>Add more work data:</h3>
					<div class="row" id="work-stuff">
						<div class="col-lg-4 col-sm-12">
							<div class="form-group">
								<?= form_error('work-place[]')?>
								<label for="work-place">Work Place</label>
								<input type="text" class="form-control" name="work-place[]" placeholder="Enter work place">
							</div>
						</div>
						<div class="col-lg-4 col-sm-12">
							<div class="form-group">
								<?= form_error('work-position[]')?>
								<label for="wp">Work Position:</label>
								<input type="text" class="form-control" name="work-position[]" placeholder="Enter work position">
							</div>
						</div>
						<div class="col-lg-3 col-sm-12">
							<div class="form-group">
								<?= form_error('years-working[]')?>
								<label for="years">Number of Years</label>
								<input type="text" class="form-control" name="years-working[]" placeholder="Enter number of years working">
							</div>
						</div>
						<div class="col-lg-1 col-sm-12">
							<div class="form-group text-center">
								<label for="add">Add rows</label>
								<p><i class="fa fa-plus text-blue" id="add-button" style="font-size: 30px; cursor: pointer" ></i></p>
							</div>
						</div>
					</div>
					<hr>
					<h1><a href="javascript:void(0)" class="text-danger"># Other Information</a></h1>
					<hr>
					<div class="row">
						<div class="col-lg-6">
							<div class="form-group <?= (form_error('slave-name')) ? 'has-error' : 'has-success' ?> has-feedback">
								<label for="slave-name">Baptismal Name:</label>
								<input type="text" class="form-control" name="slave-name" placeholder="Enter baptismal name" value="<?= set_value('slave-name', $member[0]->SlaveName) ?>">
								<span class="glyphicon form-control-feedback <?= (form_error('slave-name')) ? 'glyphicon-remove' : 'glyphicon-ok' ?>"></span>
								<?= form_error('slave-name', '<span class="help-block">', '</span>')?>
							</div>
							<div class="form-group <?= (form_error('username')) ? 'has-error' : 'has-success' ?> has-feedback">
								<label for="username">Username:</label>
								<input type="text" class="form-control" name="username" placeholder="Enter username" value="<?= set_value('username', $member[0]->username) ?>" required>
								<span class="glyphicon form-control-feedback <?= (form_error('username')) ? 'glyphicon-remove' : 'glyphicon-ok' ?>"></span>
								<?= form_error('username', '<span class="help-block">', '</span>')?>
							</div>
							<div class="form-group <?= (form_error('password')) ? 'has-error' : 'has-success' ?> has-feedback">
								<label for="password">Password:</label>
								<input type="text" class="form-control" name="password" placeholder="Enter password" value="<?= set_value('password', $member[0]->password) ?>" required>
								<span class="glyphicon form-control-feedback <?= (form_error('password')) ? 'glyphicon-remove' : 'glyphicon-ok' ?>"></span>
								<?= form_error('password', '<span class="help-block">','</span>')?>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="form-group">
								<label for="batch">Batch Name:</label>
								<input type="text" disabled="disabled" value="<?= $member[0]->batch_name ?>" class="form-control">
							</div>
							<div class="form-group">
								<label for="batch">Batch Year:</label>
								<input type="text" disabled="disabled" value="<?= $member[0]->year ?>" class="form-control">
							</div>
							<div class="form-group">
								<label for="batch">Chapter:</label>
								<input type="text" disabled="disabled" value="<?= $member[0]->chapter ?>" class="form-control">
							</div>
							<small><i>To change this, please contact the <a href="<?= base_url() .'member/view/333' ?>" target="_blank">Website Administrator</a></i></small>
						</div>
					</div>
					<input type="hidden" value="<?= $member[0]->id ?>" name="member_id">
					<button type="submit" class="btn btn-success btn-md"><i class="fa fa-check"></i> Update</button>
				</div>
				<?= form_close(); ?>
			</div>
		</div>
	</section>
</div>
<?php include 'admin-templates/footer.php' ?>
</div>

<script src="<?php echo base_url() ?>adminlte/dist/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<?php echo base_url() ?>adminlte/dist/plugins/select2/select2.full.js"></script>
<script src="<?php echo base_url() ?>adminlte/dist/js/app.js"></script>
<script src="<?php echo base_url() ?>js/addFields.js"></script>
<script src="<?php echo base_url() ?>js/deleteWork.js"></script>
<script>
	$(document).ready(function() {
		$('#batch').select2();
	});
</script>
</body>
</html>