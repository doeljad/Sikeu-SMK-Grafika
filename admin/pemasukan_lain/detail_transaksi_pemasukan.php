<?php
function uang_indo($angka)
{
	$rupiah = "Rp." . number_format($angka, 2, ',', '.');
	return $rupiah;
}
?>

<!-- Iuran Bebas -->
<div class="card card-info">
	<div class="card-header">
		<h3 class="card-title">
			<i class="fa fa-edit"></i> Data Pemasukan Lainnya
		</h3>
	</div>

	<!-- Tabel -->
	<div class="card-body">
		<div class="table-responsive">
			<div class="row">
				<div class="col-md-3">
					<div class="form-group">
						<form action="" method="post" enctype="multipart/form-data">
							<select class="form-control" name="tahun_ajaran" required="">
								<option value="" disabled selected>Pilih Tahun Ajaran</option>
								<?php
								$query = $koneksi->query("SELECT * FROM tb_tahun_ajaran ORDER by id_tahun_ajaran ASC");
								while ($tampil_t = $query->fetch_assoc()) {
									echo "<option value='$tampil_t[id_tahun_ajaran]'> $tampil_t[tahun_ajaran]</option>";
								}
								?>
							</select>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group">
						<button type="submit" name="filter" class="btn btn-info"> Cari </button>
					</div>
				</div>
				</form>
			</div>

			<div class="row mb-4">
				<div class="col-md-11">
					<a href="admin/pemasukan_lain/laporan_pemasukan.php" title="Cetak Laporan" class="btn btn-success btn-sm" target="_blank">
						<i class="fa fa-print"></i> Cetak Laporan
					</a>
				</div>
			</div>

			<table id="example1" class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>No</th>
						<th>Tahun Ajaran</th>
						<th>Jenis Pemasukan</th>
						<th>Total Pemasukan</th>
						<th>Pemasukan Dibayar</th>
						<th>Sisa Pemasukan</th>
						<th>Aksi</th>
					</tr>
				</thead>
				<tbody>
					<?php
					if (isset($_POST['filter'])) {
						$tahun_ajaran = $_POST['tahun_ajaran'];
						$no = 1;
						$sql2 = $koneksi->query("SELECT tb_tahun_ajaran.tahun_ajaran, tb_tahun_ajaran.id_tahun_ajaran, tb_pemasukan_lain.id_pemasukan, tb_pemasukan_lain.nama_pemasukan, tb_pemasukan_lain.total_tagihan, tb_pemasukan_lain.terbayar from tb_pemasukan_lain
							INNER JOIN tb_tahun_ajaran ON tb_pemasukan_lain.id_tahun_ajaran = tb_tahun_ajaran.id_tahun_ajaran
							WHERE tb_pemasukan_lain.id_tahun_ajaran ='$tahun_ajaran' GROUP BY tb_pemasukan_lain.id_pemasukan");
						while ($data2 = $sql2->fetch_assoc()) {
							$jml_tagihan2 = $data2['total_tagihan'];
							$terbayar2 =  $data2['terbayar'];
							$sisa2 = $jml_tagihan2 - $terbayar2;
					?>
							<tr>
								<td><?php echo $no++; ?></td>
								<td><?php echo $data2['tahun_ajaran']; ?></td>
								<td><?php echo $data2['nama_pemasukan']; ?></td>
								<td><?php echo uang_indo($data2['total_tagihan']) ?></td>
								<td><?php echo uang_indo($data2['terbayar']) ?></td>
								<td><?php echo uang_indo($sisa2) ?></td>
								<td>
									<a href="?page=transaksi-pemasukan&&id_pemasukan=<?php echo $data2['id_pemasukan'] ?>&id_tahun_ajaran=<?php echo $data2['id_tahun_ajaran']; ?>" title="Detail Pembayaran" class="btn btn-primary btn-sm">
										<i class="fa fa-eye"></i>
									</a>
								</td>
							</tr>
						<?php
						}
					} else {
						$no = 1;
						$sql2 = $koneksi->query("SELECT tb_tahun_ajaran.tahun_ajaran, tb_tahun_ajaran.id_tahun_ajaran, tb_pemasukan_lain.id_pemasukan, tb_pemasukan_lain.nama_pemasukan, tb_pemasukan_lain.total_tagihan, tb_pemasukan_lain.terbayar from tb_pemasukan_lain
							INNER JOIN tb_tahun_ajaran ON tb_pemasukan_lain.id_tahun_ajaran = tb_tahun_ajaran.id_tahun_ajaran
							WHERE tb_pemasukan_lain.id_pemasukan");
						while ($data2 = $sql2->fetch_assoc()) {
							$jml_tagihan2 = $data2['total_tagihan'];
							$terbayar2 =  $data2['terbayar'];
							$sisa2 = $jml_tagihan2 - $terbayar2;
						?>
							<tr>
								<td><?php echo $no++; ?></td>
								<td><?php echo $data2['tahun_ajaran']; ?></td>
								<td><?php echo $data2['nama_pemasukan']; ?></td>
								<td><?php echo uang_indo($data2['total_tagihan']) ?></td>
								<td><?php echo uang_indo($data2['terbayar']) ?></td>
								<td><?php echo uang_indo($sisa2) ?></td>
								<td>
									<a href="?page=transaksi-pemasukan&&id_pemasukan=<?php echo $data2['id_pemasukan'] ?>&id_tahun_ajaran=<?php echo $data2['id_tahun_ajaran']; ?>" title="Detail Pembayaran" class="btn btn-primary btn-sm">
										<i class="fa fa-eye"></i>
									</a>
								</td>
							</tr>
					<?php
						}
					}
					?>
				</tbody>
				</tfoot>
			</table>
		</div>
	</div>
	<!-- End Tabel -->
</div>
<!-- End Iuran Bebas -->