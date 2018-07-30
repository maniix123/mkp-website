<?php include 'admin-templates/header.php' ?>
<?php include 'admin-templates/sidebar.php' ?>

<!-- Content Wrapper. Contains Page Content -->
<div class="content-wrapper">
	<!-- Stupid Content Header -->
	<div class="content-header">
		<h1>Edit Batch</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
			<li><a href="#">Edit</a></li>
			<li>Batch</li>
		</ol>
	</div>

	<!-- Main Content -->
	<section class="content">
		<div class="box box-info">
			<div class="box-header">
				<a href="<?= base_url() . 'member/add/batch' ?>" class="btn btn-primary btn-md"><i class="fa fa-chevron-left" style="font-size: 12px"></i>  Go Back</a>
			</div>
			<div class="box-body">
				<?= form_open(base_url() .'member/update/batch'); ?>
				<div class="row">
					<div class="col-lg-6">
						<div class="form-group">
							<label for="batch_name">Batch Name</label>
							<input type="text" name="batch_name" class="form-control" value="<?= $batch[0]->batch_name ?>">
						</div>
						<div class="form-group">
							<label for="year">Year</label>
							<select name="year" class="form-control" required>
								<option value="">Select Year</option>
								<option value="0">0</option>
								<?php for($i = 1948; $i <= (date('Y')); $i++): ?>
									<option value="<?= $i ?>" <?= ($batch[0]->year == $i) ? "selected" :  ""; ?>><?= $i ?></option>
								<?php endfor; ?>
							</select>
						</div>
						<div class="form-group">
							<label for="chapter">Chapter</label>
							<select name="chapter" class="form-control" required>
								<option value="">Select Chapter</option>
								<?='<option value="'.$batch[0]->chapter.'" selected>'.$batch[0]->chapter.' Chapter</option>' ?>
								<option value="MLQU">MLQU Chapter</option>
								<option value="UDM">University de Manila</option>
								<option value="Marawi">Marawi Chapter</option>
								<option value="GenSan">General Santos Chapter</option>
								<option value="Iligan">Iligan Chapter</option>
								<option value="Ozamis">Ozamis Chapter</option>
								<option value="UV">University de Visayas Chapter</option>
							</select>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-warning"><i class="fa fa-check"></i> Update</button>
						</div>
					</div>
				</div>
				<input type="hidden" name="batch_id" value="<?= $batch[0]->id ?>">
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