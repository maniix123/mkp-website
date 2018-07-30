<?php include 'admin-templates/header.php' ?>
<?php include 'admin-templates/sidebar.php' ?>

<!-- Content Wrapper. Contains Page Content -->
<div class="content-wrapper">
	<div class="content-header">
		<h1>View all blogs</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-pencil"></i>Blogs</a></li>
		</ol>
	</div>
	<!-- Main Content -->
	<section class="content">
		<div style="overflow: auto; margin-bottom: 10px;">
			<ul class="pagination pull-right" style="margin: 0;">
				<!-- Show pagination links -->
				<?php foreach ($links as $link): ?>
					<?= $link ?>
				<?php endforeach;?>
			</ul>
		</div>
		<div class="box box-danger">
			<div class="box-header">
				<h1 class="box-title">Blogs</h1>
			</div>
			<div class="box-body">
				<ul class="list-group">
					<?php foreach($blogs as $blog): ?>
						<li class="list-group-item">
							<p>
								<a href="<?= base_url() .'member/blog/'. $blog->slug; ?>">
									<?= $blog->title ?> 
								</a>
								<span class="badge">by: 
									<i>
										<a href="<?= base_url() .'member/view/'. $this->blog->getAuthor($blog->user_id)['user_id']  ?>" style="color: #fff">
											<?= $this->blog->getAuthor($blog->user_id)['Name'] ?>
										</a>
									</i>
								</span>
							</p>	
							<div class="btn-group">
								<a href="" class="btn btn-default btn-xs"><i class="fa fa-eye text-success"></i> View</a>
								<a href="" class="btn btn-default btn-xs"><i class="fa fa-pencil text-info"></i> Edit</a>
								<a href="" class="btn btn-default btn-xs"><i class="fa fa-times text-danger"></i> Delete</a>
							</div>
						</li>
					<?php endforeach; ?>
				</ul>
			</div>
		</div>
		<div style="overflow: auto;">
			<ul class="pagination pull-right" style="margin: 0;">
				<!-- Show pagination links -->
				<?php foreach ($links as $link): ?>
					<?= $link ?>
				<?php endforeach;?>
			</ul>
		</div>
	</section>
</div>
<?php include 'admin-templates/footer.php' ?>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="<?php echo base_url() ?>adminlte/dist/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<?php echo base_url() ?>adminlte/dist/js/app.js"></script>
</body>
</html>