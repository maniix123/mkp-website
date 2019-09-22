<?php include 'admin-templates/header.php' ?>
<?php include 'admin-templates/sidebar.php' ?>

<!-- Content Wrapper. Contains Page Content -->
<div class="content-wrapper">
	<!-- Stupid Content Header -->
	<div class="content-header">
		<h1>Delete Member</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
			<li><a href="#">Edit</a></li>
			<li>Member</li>
		</ol>
	</div>

	<!-- Main Content -->
	<section class="content">
		<div class="box box-info">
			<div class="box-body">
				<?= form_open(base_url() .'member/delete/id/' .$member[0]->id. '/who/member') ?>
				<h5>Personal Information</h5>
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
					</div>
				</div>
				<h5>Other Information</h5>
				<hr>
				<div class="row">
					<div class="col-lg-6">
						<div class="form-group">
							<label for="slave-name">Baptismal Name:</label>
							<input type="text" class="form-control" name="slave-name" placeholder="Enter baptismal name" value="<?php echo $member[0]->SlaveName ?>">
						</div>
						<div class="form-group">
							<label for="username">Username:</label>
							<input type="text" class="form-control" name="username" placeholder="Enter username" value="<?php echo $member[0]->username ?>">
						</div>
						<div class="form-group">
							<label for="password">Password:</label>
							<input type="text" class="form-control" name="password" placeholder="Enter password" value="<?php echo $member[0]->visible ?>">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="form-group">
							<label for="batch">Select batch:</label>
							<select class="form-control" name="batch" id="batch" >
								<option value="">Select a batch</option>
								<?php echo '<option value="' .$member[0]->batch_id.'" selected>'. $member[0]->batch_name . ' - ' . $member[0]->year .' - '. $member[0]->chapter.'</option>' ?>
							</select>
						</div>
						<div class="form-group">
							<div class="checkbox">
								<label><input type="checkbox" name="batchpres" value="yes" <?php if($member[0]->FirstName .' '. $member[0]->LastName == $member[0]->batch_president) echo 'checked="checked"' ?>> PLEASE CHECK IF HE IS THE BATCH PRESIDENT</label>
							</div>
						</div>
					</div>
				</div>
				<button type="submit" class="btn btn-danger btn-md"><i class="fa fa-times"></i> Delete</button>
				<?= form_close(); ?>
			</div>
		</div>
	</section>
</div>
<?php include 'admin-templates/footer.php' ?>
</div>

<script src="<?php echo base_url() ?>adminlte/dist/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<?php echo base_url() ?>adminlte/dist/js/app.js"></script>
</body>
</html>