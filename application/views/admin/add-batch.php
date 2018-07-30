<?php include 'admin-templates/header.php' ?>
<?php include 'admin-templates/sidebar.php' ?>

<!-- Content Wrapper. Contains Page Content -->
<div class="content-wrapper">
	<!-- Stupid Content Header -->
	<div class="content-header">
		<h1>Add Batch</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
			<li><a href="#">Add</a></li>
			<li>Batch</li>
		</ol>
	</div>
	<!-- Main Content -->
	<section class="content">
		<div class="box box-info">
			<div class="box-body">
					<?= form_open(base_url() .'member/addbatches'); ?>
					<h5>Batch Information</h5>
					<hr>
					<div class="row">
						<div class="col-lg-6">
							<div class="form-group">
								<label for="batch_name">Batch Name:</label>
								<input type="text" class="form-control" name="batch_name" placeholder="Enter batch name" required autofocus="true">
							</div>
							<div class="form-group">
								<label for="year">Year</label>
								<select name="year" class="form-control" required>
									<option value="">Select Year</option>
									<option value="0">0</option>
									<?php for($i = 1948; $i <= (date('Y')); $i++): ?>
										<option value="<?= $i ?>"><?= $i ?></option>
									<?php endfor; ?>
								</select>
							</div>
							<div class="form-group">
								<label for="chapter">Chapter</label>
								<select name="chapter" class="form-control" required>
									<option value="">Select Chapter</option>
									<option value="MLQU">MLQU Chapter</option>
									<option value="UDM">University de Manila</option>
									<option value="Marawi">Marawi Chapter</option>
									<option value="GenSan">General Santos Chapter</option>
									<option value="Iligan">Iligan Chapter</option>
									<option value="Ozamis">Ozamis Chapter</option>
									<option value="UV">University de Visayas Chapter</option>
								</select>
							</div>
							<button type="submit" class="btn btn-primary btn-sm">Submit</button>
						<?= form_close(); ?>
					</div>
					<div class="col-lg-6">
						<div class="table-responsive">
							<table class="table table-striped table-bordered" id="batchTable">
								<thead>
									<tr>
										<th>Batch Name</th>
										<th>Year</th>
										<th>Chapter</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<?php foreach($batches as $batch): ?>
										<tr>
											<td><?= $batch->batch_name ?></td>
											<td><?= $batch->year ?></td>
											<td><?= $batch->chapter ?></td>
											<td><a class="btn btn-info" href="<?= base_url() .'member/edit/batch/'.  $batch->batch_id ?>">Edit</a></td>
										</tr>
									<?php endforeach; ?>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<!-- /.box-body -->
		</div>
	</section>
</div>
<?php include 'admin-templates/footer.php' ?>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="<?php echo base_url() ?>adminlte/dist/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<?php echo base_url() ?>adminlte/dist/js/app.js"></script>
<script src="https://cdn.datatables.net/1.10.17/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.17/js/dataTables.bootstrap.min.js"></script>
<script>
	$(document).ready(function(){
		$('#batchTable').DataTable({
			dom: `<"row"<"col-lg-12"f>>
					rt
				  <"row"<"col-lg-12 col-md-12 col-sm-12 text-center"i><"col-lg-12 col-md-12 col-sm-12"p>>`,
			"lengthMenu": [[5], [5]],
			"responsive": true
		});

		$('.sidebar li:nth-child(7)').addClass('active');
		$('.sidebar li:nth-child(7) .treeview-menu li:nth-child(2)').addClass('active');
		$('#batchTable_paginate').css('text-align', 'center');
	});
</script>
</body>
</html>