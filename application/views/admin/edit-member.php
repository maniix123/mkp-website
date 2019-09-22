<?php include 'admin-templates/header.php' ?>
<?php include 'admin-templates/sidebar.php' ?>

<!-- Content Wrapper. Contains Page Content -->
<div class="content-wrapper">
	<!-- Stupid Content Header -->
	<div class="content-header">
		<h1>Edit Member</h1>
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
				<a href="<?= base_url() . 'member/view/all' ?>" class="btn btn-primary"><i class="fa fa-chevron-left"></i> Go Back</a>
			</div>
			<div class="box-body">
				<?= form_open(base_url() . 'member/update/member') ?>
				<h1><a href="javscipr:void(0)" class="text-danger"># Personal Information</a></h1>
				<hr>
				<div class="row">
					<div class="col-lg-6">
						<div class="form-group">
							<label for="firstname">First Name:</label>
							<input type="text" class="form-control" name="firstname" placeholder="Enter first name" required autofocus="true" value="<?php echo $member[0]->FirstName ?>">
						</div>
						<div class="form-group">
							<label for="lastname">Last Name:</label>
							<input type="text" class="form-control" name="lastname" placeholder="Enter last name" required value="<?php echo $member[0]->LastName ?>">
						</div>
						<div class="form-group">
							<label for="contact">Contact Number:</label>
							<input type="number" class="form-control" name="contact" placeholder="Enter contact number" min=1 value="<?php echo $member[0]->ContactNumber ?>">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="form-group">
							<label for="curr-addr">Current Address:</label>
							<input type="text" class="form-control" name="curr-addr" placeholder="Enter current address" value="<?php echo $member[0]->CurrentAddress ?>">
						</div>
						<div class="form-group">
							<label for="p-addr">Permanent Address:</label>
							<input type="text" class="form-control" name="p-addr" placeholder="Enter permanent address" value="<?php echo $member[0]->PermanentAddress ?>">
						</div>
						<div class="form-group">
							<div class="checkbox">
								<label><input type="checkbox" name="atty" value="yes" <?= ($member[0]->AttyOrNot == "yes") ? 'checked="checked"' : '' ?>> PLEASE CHECK IF AN ATTORNEY</label>
							</div>
						</div>
					</div>
				</div>
				<hr>
				<h1><a href="javscipr:void(0)" class="text-danger"># Work Information</a></h1>
				<hr>
				<p>Present Work Data:</p>
				<?php if(count($this->user->getWork($member[0]->id)) == 0): ?>
					<p class="text-center">No work data available.</p>
					<?php else: ?>
						<?php foreach($this->user->getWork($member[0]->id) as $work): ?>
							<div class="row">
								<div class="col-lg-4 col-sm-12">
									<div class="form-group">
										<label for="work-place">Work Place</label>
										<input type="text" class="form-control" name="curr-work-place[]" placeholder="Enter work place" value="<?= $work->WorkPlace ?>">
										<input type="hidden" name="curr-work-id[]" value="<?= $work->id ?>">
									</div>
								</div>
								<div class="col-lg-4 col-sm-12">
									<div class="form-group">
										<label for="wp">Work Position:</label>
										<input type="text" class="form-control" name="curr-work-position[]" placeholder="Enter work position" value="<?= $work->WorkPosition ?>">
									</div>
								</div>
								<div class="col-lg-4 col-sm-12">
									<div class="form-group">
										<label for="years">Years Working</label>
										<input type="text" class="form-control" name="curr-years-working[]" placeholder="Enter number of years working" value="<?= $work->years ?>">
									</div>
								</div>
							</div>
						<?php endforeach;?>
					<?php endif; ?>
					<hr>
					<p>Add more work data:</p>
					<div class="row" id="work-stuff">
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
								<label for="years">Number of Years</label>
								<input type="text" class="form-control" name="years-working[]" placeholder="Enter number of years working">
							</div>
						</div>
						<div class="col-lg-1 col-sm-12">
							<div class="form-group ">
								<i class="fa fa-plus" id="add-button" style="font-size: 50px; cursor: pointer" ></i>
							</div>
						</div>
					</div>
					<hr>
					<h1><a href="javscipr:void(0)" class="text-danger"># Other Information</a></h1>
					<hr>
					<div class="row">
						<div class="col-lg-6">
							<div class="form-group <?= (form_error('slave-name')) ? 'has-error' : 'has-success' ?> has-feedback">
								<label for="slave-name">Baptismal Name:</label>
								<input type="text" class="form-control" name="slave-name" placeholder="Enter baptismal" value="<?= set_value('slave-name', $member[0]->SlaveName) ?>" >
								<span class="glyphicon form-control-feedback <?= (form_error('slave-name')) ? 'glyphicon-remove' : 'glyphicon-ok' ?>"></span>
								<?= form_error('slave-name', '<span class="help-block">', '</span>')?>
							</div>
							<div class="form-group <?= (form_error('username')) ? 'has-error' : 'has-success' ?> has-feedback">
								<label for="username">Username:</label>
								<input type="text" class="form-control" name="username" placeholder="Enter username" value="<?= set_value('username', $member[0]->username) ?>" >
								<span class="glyphicon form-control-feedback <?= (form_error('username')) ? 'glyphicon-remove' : 'glyphicon-ok' ?>"></span>
								<?= form_error('username', '<span class="help-block">', '</span>')?>
							</div>
							<div class="form-group">
								<label for="password">Password:</label>
								<input type="text" class="form-control" name="password" placeholder="Enter password" value="<?php echo $member[0]->visible ?>">
							</div>
						</div>
						<div class="col-lg-6">
							<div class="form-group">
								<label for="batch">Select batch:</label>
								<select class="form-control" name="batch" id="batch" required>
									<option value="">Select a batch</option>
									<?= '<option value="' .$member[0]->batch_id.'" selected>'. $member[0]->batch_name . ' - ' . $member[0]->year .' - '. $member[0]->chapter.'</option>' ?>
								</select>
							</div>
							<div class="form-group">
								<div class="checkbox">
									<label><input type="checkbox" name="batchpres" value="yes" <?= ($member[0]->FirstName .' '. $member[0]->LastName == $member[0]->batch_president) ? 'checked="checked"' : '' ?>> PLEASE CHECK IF HE IS THE BATCH PRESIDENT</label>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6">
							<div class="form-group">
								<label for="role">Role</label>
								<input type="text" name="role" value="<?= $member[0]->role ?>" class="form-control">
							</div>
						</div>
						<div class="col-lg-6">
							<div class="form-group">
								<label for="status">Status</label>
								<input type="text" name="status" value="<?= $member[0]->status ?>" class="form-control">
							</div>
						</div>
					</div>
					<input type="hidden" value="<?= $member[0]->id ?>" name="member_id">
					<button type="submit" class="btn btn-success btn-md"><i class="fa fa-check"></i> Update</button>
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
<script src="<?php echo base_url() ?>js/fetchChapters.js"></script>
<script src="<?php echo base_url()?>js/addFields.js"></script>
<script>
	$(document).ready(function() {
		$('#batch').select2();
	});
</script>
</body>
</html>