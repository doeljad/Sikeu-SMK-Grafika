<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="index.php" class="brand-link">
				<img src="dist/img/logooo.png" alt="AdminLTE Logo" class="brand-image" style="opacity: .8">
				<span class="brand-text">SMK GRAFIKA</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

						<!-- Halaman Admin -->

						<li class="nav-item">
							<a href="index.php" class="nav-link">
								<i class="nav-icon fas fa-home"></i>
								<p>
									Dashboard
								</p>
							</a>
						</li>

						<li class="nav-header">Laporan</li>

						<li class="nav-item">
							<a href="?page=data-laporan-siswa" class="nav-link">
								<i class="nav-icon fas fa-table"></i>
								<p>
									Data Siswa
								</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="?page=data-guru" class="nav-link">
								<i class="nav-icon fas fa-chalkboard-teacher"></i>
								<p>Data Guru</p>
							</a>
						</li>	
						<li class="nav-item has-treeview">
							<a href="#" class="nav-link">
								<i class="nav-icon fas fa-money-bill-alt"></i>
								<p>
									Data Keuangan
									<i class="fas fa-angle-left right"></i>
								</p>
							</a>
							<ul class="nav nav-treeview">
								<li class="nav-item">
									<a href="?page=data-pembayaran-spp-siswa" class="nav-link">
										<i class="nav-icon far fa-circle text-warning"></i>
										<p>Pembayaran SPP</p>
									</a>
								</li>
								<li class="nav-item">
									<a href="?page=data-pembayaran-bebas-siswa" class="nav-link">
										<i class="nav-icon far fa-circle text-warning"></i>
										<p>Pembayaran Bebas</p>
									</a>
								</li>
								<li class="nav-item">
									<a href="?page=data-pembayaran-gaji-guru" class="nav-link">
										<i class="nav-icon far fa-circle text-warning"></i>
										<p>Pembayaran Guru</p>
									</a>
								</li>

								<!-- 									<li class="nav-item">
										<a href="#" class="nav-link">
											<i class="nav-icon far fa-circle text-warning"></i>
											<p>Arus Keuangan</p>
										</a>
									</li> -->
							</ul>
						<li class="nav-item">
							<a href="?page=data-arus-keuangan" class="nav-link">
								<i class="nav-icon fas fa-reply"></i>
								<p>
									Arus Keuangan
								</p>
							</a>
						</li>
						</li>

						<li class="nav-header">Setting</li>

						<li class="nav-item">
							<a href="?page=update-password" class="nav-link">
								<i class="nav-icon fas fa-cogs"></i>
								<p>
									Update Password
								</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="?page=view-kepsek" class="nav-link">
								<i class="nav-icon fas fa-user"></i>
								<p>
									Profile
								</p>
							</a>
						</li>

						<li class="nav-item">
							<a onclick="return confirm('Apakah anda yakin akan keluar ?')" href="logout.php" class="nav-link">
								<i class="nav-icon fas fa-arrow-circle-right"></i>
								<p>
									Logout
								</p>
							</a>
						</li>

				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>