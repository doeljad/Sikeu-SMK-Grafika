<div class="card card-info">
	<div class="card-header">
		<h3 class="card-title">
			<i class="fa fa-table"></i> Data Siswa
		</h3>
	</div>
	<!-- /.card-header -->
	<div class="card-body">
		<div class="table-responsive">
			<div>
				<form action="" method="post">
					<div class="row">
						<div class="col-md-3">
							<div class="form-group">
								<select class="form-control" name="id_kelas" required="">
									<option value="" disabled selected>Pilih Kelas</option>
									<?php
									$query = $koneksi->query("SELECT * FROM tb_kelas ORDER by id_kelas");
									while ($tampil_t = $query->fetch_assoc()) {
										echo "<option value='$tampil_t[id_kelas]'> $tampil_t[nama_kelas]</option>";
									}
									?>
								</select>

							</div>
						</div>

						<div class="col-md-3">
							<div class="form-group">
								<form action="" method="post" enctype="multipart/form-data">
									<select class="form-control" name="id_jurusan" required="">
										<option value="" disabled selected>Pilih Jurusan</option>
										<?php
										$query = $koneksi->query("SELECT * FROM tb_jurusan ORDER by  id_jurusan ASC");
										while ($tampil_t = $query->fetch_assoc()) {
											echo "<option value='$tampil_t[id_jurusan]'> $tampil_t[nama_jurusan]</option>";
										}
										?>
									</select>
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<button type="submit" name="filter" class="btn btn-info"> Cari </button>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<a href="admin/laporan/siswa/cetak_laporan_semua_siswa.php" class="btn btn-primary" target="_blank">
									<i class="fas fa-print"></i> Cetak Semua Siswa
								</a>

								<!-- <a target="blank" href="admin/laporan/siswa/cetak_laporan_siswa.php?id_kelas=<?php echo $id_kelas ?>&id_jurusan=<?php echo $id_jurusan ?>" class="btn btn-primary" title="">
									<i class="fa fa-print"></i> Cetak / Kelas
								</a> -->
								<?php ?>
							</div>
						</div>

				</form>
			</div>
			<table id="example1" class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>No</th>
						<th>NISN</th>
						<th>Nama</th>
						<th>Ruang Kelas</th>
						<th>Jenis Kelamin</th>
						<th>Telepon/WA</th>
						<th>Alamat</th>
					</tr>
				</thead>
				<tbody>

					<?php
				if (isset($_POST['filter'])) {
			  	$id_kelas=$_POST['id_kelas'];
			  	$id_jurusan=$_POST['id_jurusan'];
              $no = 1;
			  $sql = $koneksi->query("SELECT tb_siswa.nisn, tb_siswa.nama_siswa, tb_siswa.telepon_siswa, tb_siswa.jenis_kelamin, tb_siswa.alamat_siswa, tb_siswa.status_siswa, tb_kelas.nama_kelas, tb_jurusan.nama_jurusan FROM tb_siswa
			  	INNER JOIN tb_kelas ON tb_kelas.id_kelas = tb_siswa.id_kelas
			  	INNER JOIN tb_jurusan on tb_jurusan.id_jurusan = tb_siswa.id_jurusan WHERE tb_siswa.id_kelas ='$id_kelas' AND tb_siswa.id_jurusan ='$id_jurusan'");
              while ($data= $sql->fetch_assoc()) {
            ?>

					<tr>
						<td>
							<?php echo $no++; ?>
						</td>
						<td>
							<?php echo $data['nisn']; ?>
						</td>
						<td>
							<?php echo $data['nama_siswa']; ?>
						</td>
						<td>
							<?php echo $data['nama_kelas']; ?> - <?php echo $data['nama_jurusan']; ?>
						</td>
						<td>
							<?php echo $data['jenis_kelamin']; ?>
						</td>
						<td>
							<?php echo $data['telepon_siswa']; ?>
						</td>
						<td>
							<?php echo $data['alamat_siswa']; ?>
						</td>
						
						
					</tr>

					<?php
              } } else{
  			  $no = 1;
			  $sql = $koneksi->query("SELECT * FROM tb_siswa ORDER BY id_siswa DESC");
              while ($data= $sql->fetch_assoc()) {
              $ruangkelas=mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tb_kelas WHERE id_kelas ='$data[id_kelas]'"));
              $jurusan=mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM tb_jurusan WHERE id_jurusan ='$data[id_jurusan]'"));
            ?>

					<tr>
						<td>
							<?php echo $no++; ?>
						</td>
						<td>
							<?php echo $data['nisn']; ?>
						</td>
						<td>
							<?php echo $data['nama_siswa']; ?>
						</td>
						
						<td>
							<?php echo $ruangkelas['nama_kelas']; ?> - <?php echo $jurusan['nama_jurusan']; ?>
						</td>
						<td>
							<?php echo $data['jenis_kelamin']; ?>
						</td>
						<td>
							<?php echo $data['telepon_siswa']; ?>
						</td>
						<td>
							<?php echo $data['alamat_siswa']; ?>
						</td>
						

						
					</tr>
              <?php }} ?>
				</tbody>
				</tfoot>
				
			</table>
		</div>
	</div>