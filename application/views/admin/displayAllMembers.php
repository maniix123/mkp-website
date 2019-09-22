<?php include 'admin-templates/header.php' ?>
<?php include 'admin-templates/sidebar.php' ?>

<!-- Content Wrapper. Contains Page Content -->
<div class="content-wrapper">
	<div class="content-header">
		<h1>View all members</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
			<li><a href="#"> all</a></li>
			<li><i class="fa fa-users"></i> Members</li>
		</ol>
	</div>
	<!-- Main Content -->
	<section class="content">
		<div class="box box-info">
			<div class="box-body">
				<div class="alert alert-info <?= empty($this->session->flashdata('success')) ? 'hide' : '' ?>">
					<p class="text-center"><?= $this->session->flashdata('success') ?></p>
				</div>
				<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover" id="memberTable">
						<thead>
							<tr>
								<th>Name</th>
								<th>Batch</th>
								<th>Year</th>
								<th>Chapter</th>
								<th class="<?= $role ?>">Action</th>
							</tr>
						</thead>
						<tbody>
							<?php foreach($members as $member): ?>
								<tr>
									<td><a href="<?= base_url() .'member/view/'. $member->id  ?>"><?= $member->FirstName .' '. $member->LastName?></a></td>
									<td><?= $member->batch_name ?></td>
									<td><?= $member->year ?></td>
									<td><?= $member->chapter . ' Chapter'?></td>
									<td class="<?= $role ?>">
										<a class="btn btn-info btn-xs" href="<?php echo base_url() .'member/edit/member/'. $member->id;?>">Edit</a>
										<a class="btn btn-danger btn-xs" href="<?php echo base_url() . 'member/show/id/' .$member->id. '/who/member' ?>">Delete</a>
									</td>					
								</tr>
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
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="<?php echo base_url() ?>adminlte/dist/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<?php echo base_url() ?>adminlte/dist/js/app.js"></script>
<script src="https://cdn.datatables.net/1.10.17/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.17/js/dataTables.bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
<script>
	$(document).ready(function(){
		$('#memberTable').DataTable({
			dom: `<"row"<"col-lg-6"B><"col-lg-6"l>>
			<"row"<"col-lg-12"f>>
			rt
			<"row"<"col-lg-6 col-md-6 col-sm-6"i><"col-lg-6 col-md-6 col-sm-6"p>>`,
			"processing": true,
			"language": {
            	processing: '<i class="fa fa-spinner fa-spin fa-3x fa-fw"></i><span class="sr-only">Loading...</span> '
        	},
			buttons: [
			{
				extend: 'pdf',
				text: '<i class="fa fa-file-pdf-o"></i> Export to PDF',
				titleAttr: 'Export to pdf',
				title: 'MKP Directory',
				customize: function (doc) {
					doc.content[1].table.widths = 
					Array(doc.content[1].table.body[0].length + 1).join('*').split('');
				},
				exportOptions: {
					columns: ':not(:last-child)',
				}
			},
			{
				extend: 'excelHtml5',
				text: '<i class="fa fa-file-excel-o"></i> Export to Excel',
				titleAttr: 'Export to Excel',
				title: 'MKP Directory',
				exportOptions: {
					columns: ':not(:last-child)',
				}
			},
			{
				extend: 'print',
				text: '<i class="fa fa-print"></i> Print Table',
				titleAttr: 'Print Table',
				title: 'MKP Directory',
				customize: function ( win ) {
					$(win.document.body)
					.prepend(
						'<img src="'+base_url+'/images/circlelogo.png" style="position:fixed; left: 50%; top: 50%; transform: translate(-50%, -50%); -webkit-transform: translate(-50%, -50%); -ms-transform: translate(-50%, -50%); -moz-transform: translate(-50%, -50%); opacity: 0.2; max-width: 100%; " />'
						);
					$(win.document.body).find( 'h1' )
					.addClass('text-center');
				},
				exportOptions: {
					columns: ':not(:last-child)',
				}
			},
			],
			"lengthMenu": [[50, 100, -1], [50, 100, "All"]]
		});
		$('div.dataTables_wrapper div.dataTables_filter input').attr("placeholder", "Type anything here");
		$('ul.sidebar-menu.tree > li:nth-child(3)').addClass('active');
		$('ul.sidebar-menu.tree > li:nth-child(3) .treeview-menu li:nth-child(1)').addClass('active');
	});
</script>
</body>
</html>