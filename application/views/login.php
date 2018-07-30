<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php include 'template/header.php'; ?>
<div id="content">
	<?php include 'template/navbar.php'; ?>
	<div class="container-fluid" id="l-first-container">
		<div class="container">
			<div class="row">
				<div class="col-md-7 col-lg-4 col-sm-12 offset-lg-4">
					<div class="login-container">
						<i class="fas fa-user-circle"></i>
						<h2 class="text-center">Members Login</h2>
						<div class="list-group">
							<a class="list-group-item list-group-item-action text-danger <?= isset($error_message) ? '' : 'd-none' ?>"><?= isset($error_message) ? $error_message : '' ?></a>
						</div>
						<?=validation_errors('<div class="list-group"><a href="javascript:void(0)" class="list-group-item list-group-item-action text-danger">', '</a></div>'); ?>
						<?=form_open('logins')?>
						<div class="form-group">
							<label for="username">Username:</label>
							<?=form_input(['name' => 'username', 'type' => 'text', 'class' => 'form-control', 'placeholder' => 'Enter username', 'id' => 'username', 'autofocus' => 'autofocus', 'value' => set_value('username'), 'required' => 'required']); ?>
						</div>
						<div class="form-group">
							<label for="password">Password:</label>
							<?=form_password(['name' => 'password', 'class' => 'form-control', 'placeholder' => 'Enter password', 'id' => 'password', 'required' => 'required']); ?>
						</div>
						<div class="form-group">
							<?=form_submit('Login', 'Login', ['class' => 'btn btn-info']); ?>
							<?=form_close(); ?>
						</div>
					</div>
				</div>
				<div class="col-md-5 col-lg-4 col-sm-12">
					<div class="c-tooltip">
						<small>If you can't login, chances are:
							<ul>
								<li>You do not have a login account</li>
								<li>You forgot your username or password</li>
								<li>You are NOT a member of the fraternity</li>
							</ul>
						</small>
						<small class="text-danger">For members who do not have an account yet, please contact 09277986249 to get your account.<br> <i>We do not have registration here.</i></small>
					</div>
				</div>
			</div>
		</div>
	</div>
	<?php include 'template/footer.php'; ?>
</body>
</html>