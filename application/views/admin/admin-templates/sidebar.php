<!-- Main Sidebar Container -->
<aside class="main-sidebar">
	<!-- Sidebar -->
	<section class="sidebar">
		<div class="sidebar">
			<!-- Sidebar user panel -->
			<div class="user-panel">
				<div class="image">
					<img src="<?= $this->user->get('image'); ?>" alt="" class="img-circle">
				</div>
				<div class="info">
					<p><a href="javascript:void(0)" class="d-block"><?= $this->user->get('name'); ?></a></p>
					<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
				</div>
			</div>
			<ul class="sidebar-menu tree" data-widget="tree">
				<li class="header"><h5 class="text-center" style="margin-bottom: 10px">MAIN NAVIGATION</h5></li>
				<li>
					<a href="<?php echo base_url() ?>member">
						<i class="nav-icon fa fa-home span"></i>
						<span>Home</span>
					</a>
				</li>
				<li class="treeview menu-open">
					<a href="javascrtip:void(0)">
						<i class="nav-icon fa fa-user"></i>
						<span>View</span>
						<span class="pull-right-container">
							<i class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
					<ul class="treeview-menu">
						<li>
							<a href="<?php echo base_url() ?>member/view/all"><i class="fa fa-circle-o nav-icon"></i>
								<span>All Members</span>
							</a>
						</li>
						<li>
							<a href="<?php echo base_url() ?>member/view/attorneys"><i class="fa fa-circle-o nav-icon"></i>
								<span>All Attorneys</span>
							</a>
						</li>
						<li>
							<a href="<?php echo base_url() ?>member/view/batches"><i class="fa fa-circle-o nav-icon"></i>
								<span>All Batches</span>
							</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="javascript:void(0)">
						<i class="nav-icon fa fa-pie-chart"></i>
						<span>Graphs</span>
					</a>
				</li>
				<li>
					<a href="<?= base_url() . 'member/profile' ?>">
						<i class="nav-icon fa fa-user"></i>
						<span>VIew My Profile</span>
					</a>
				</li>
				<li>
					<a href="<?= base_url() . 'logout' ?>">
						<i class="nav-icon fa fa-sign-out"></i>
						<span>Logout</span>
					</a>
				</li>
				<?php if($this->user->get('role') === 'super-admin'): ?>
					<li class="treeview menu-open">
						<a href="javscript:void(0)">
							<i class="nav-icon fa fa-plus"></i>
							<span>Add</span>
							<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li>
								<a href="<?php echo base_url() ?>member/add/member"><i class="fa fa-circle-o nav-icon"></i>
									<span>Member</span>
								</a>
							</li>
							<li>
								<a href="<?php echo base_url() ?>member/add/batch"><i class="fa fa-circle-o nav-icon"></i>
									<span>Batch</span>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-item">
						<a href="javscript:void(0)">
							<i class="nav-icon fa fa-info"></i>
							<span>Logs</span>
						</a>
					</li>
				<?php endif; ?>
				<li class="nav-item">
					<a href="<?= base_url() .'member/view/blogs'; ?>">
						<i class="nav-icon fa fa-pencil"></i>
						<span>Blog</span>
					</a>
				</li>
			</ul>
		</div>
	</section>
</aside>