<?php

$sql_cek = "SELECT * FROM tb_sekolah WHERE id_sekolah";
$query_cek = mysqli_query($koneksi, $sql_cek);
$data_cek = mysqli_fetch_array($query_cek, MYSQLI_BOTH);

if ($data_cek['gambar_sekolah']) {
	$gambar = "admin/gambar/" . $data_cek['gambar_sekolah'];
} else {
	$gambar = "admin/gambar/noimage.png";
}
?>
<aside class="main-sidebar sidebar-dark-primary elevation-4">
	<!-- Brand Logo -->
	<a href="index.php" class="brand-link">
		<img src="<?= $gambar ?>" alt="AdminLTE Logo" class="brand-image" style="opacity: .8">
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

				<li class="nav-header">Master Data</li>

				<li class="nav-item">
					<a href="?page=data-sekolah" class="nav-link">
						<i class="nav-icon fas fa-school"></i>
						<p>Data Sekolah</p>
					</a>
				</li>
				<!-- <li class="nav-item">
							<a href="?page=data-admin" class="nav-link">
								<i class="nav-icon fas fa-user"></i>
								<p>Data Admin</p>
							</a>
						</li> -->
				<li class="nav-item has-treeview">
					<a href="#" class="nav-link">
						<i class="nav-icon fas fa-table"></i>
						<p>
							Data Siswa
							<i class="fas fa-angle-left right"></i>
						</p>
					</a>
					<ul class="nav nav-treeview">
						<li class="nav-item">
							<a href="?page=data-tahunajaran" class="nav-link">
								<i class="nav-icon far fa-circle text-warning"></i>
								<p>Data Tahun Ajaran</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="?page=data-jurusan" class="nav-link">
								<i class="nav-icon far fa-circle text-warning"></i>
								<p>Data Jurusan</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="?page=data-kelas" class="nav-link">
								<i class="nav-icon far fa-circle text-warning"></i>
								<p>Data Kelas</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="?page=data-siswa" class="nav-link">
								<i class="nav-icon far fa-circle text-warning"></i>
								<p>Tambah Data Siswa</p>
							</a>
						</li>
					</ul>
				</li>
				<li class="nav-item">
					<a href="?page=data-guru" class="nav-link">
						<i class="nav-icon fas fa-chalkboard-teacher"></i>
						<p>Data Guru</p>
					</a>
				</li>




				<li class="nav-header"> Master Data Transaksi</li>

				<li class="nav-item has-treeview">
					<a href="#" class="nav-link">
						<i class="nav-icon fas fa-money-bill-alt"></i>
						<p>
							Jenis Pemasukkan
							<i class="fas fa-angle-left right"></i>
						</p>
					</a>
					<ul class="nav nav-treeview">
						<li class="nav-item">
							<a href="?page=data-jenis-bayar-siswa" class="nav-link">
								<i class="nav-icon far fa-circle text-warning"></i>
								<p>Jenis Pembayaran siswa</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="?page=data-pemasukan-lain" class="nav-link">
								<i class="nav-icon far fa-circle text-warning"></i>
								<p>Jenis Pemasukan Lainnya</p>
							</a>
						</li>
					</ul>
				</li>

				<li class="nav-item has-treeview">
					<a href="#" class="nav-link">
						<i class="nav-icon fas fa-search-dollar"></i>
						<p>
							Jenis Pengeluaran
							<i class="fas fa-angle-left right"></i>
						</p>
					</a>
					<ul class="nav nav-treeview">
						<li class="nav-item">
							<a href="?page=data-jenis-bayar-guru" class="nav-link">
								<i class="nav-icon far fa-circle text-warning"></i>
								<p>Jenis Pembayaran Guru</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="?page=data-pengeluaran-lain" class="nav-link">
								<i class="nav-icon far fa-circle text-warning"></i>
								<p>Jenis Pengeluaran Lainnya</p>
							</a>
						</li>
					</ul>
				</li>


				<li class="nav-header"> Menu Transaksi</li>

				<li class="nav-item has-treeview">
					<a href="#" class="nav-link">
						<i class="nav-icon fas fa-calculator"></i>
						<p>
							Menu Pembayaran
							<i class="fas fa-angle-left right"></i>
						</p>
					</a>
					<ul class="nav nav-treeview">
						<li class="nav-item">
							<a href="?page=data-transaksi-siswa" class="nav-link">
								<i class="nav-icon far fa-circle text-warning"></i>
								<p>Pembayaran siswa</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="?page=data-transaksi-guru" class="nav-link">
								<i class="nav-icon far fa-circle text-warning"></i>
								<p>Pembayaran Guru</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="?page=detail-transaksi-pemasukan" class="nav-link">
								<i class="nav-icon far fa-circle text-warning"></i>
								<p>Dana Pemasukan Lainnya</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="?page=detail-transaksi-pengeluaran" class="nav-link">
								<i class="nav-icon far fa-circle text-warning"></i>
								<p>Dana Pengeluaran Lainnya</p>
							</a>
						</li>
					</ul>
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
					<a href="?page=view-admin" class="nav-link">
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