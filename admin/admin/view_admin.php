<?php

// Query untuk mengambil data dari tb_admin
$id_admin = $_SESSION['ses_id']; // Sesuaikan dengan logika Anda, misalnya dari session atau input
$sql = "SELECT * FROM tb_admin WHERE id_admin = '$id_admin'";
$result = $koneksi->query($sql);

// Periksa apakah ada hasil
if ($result->num_rows > 0) {
	// Mengambil data dari baris pertama (karena kita hanya mengharapkan satu baris)
	$row = $result->fetch_assoc();
	$data_nama = $row["nama_admin"];
	$data_user = $row["username"];
	$data_pass = $row["password"];
} else {
	// Jika tidak ada data, beri nilai default
	$data_nama = "Tidak ada data";
	$data_user = "Tidak ada data";
	$data_pass = "Tidak ada data";
}

// Menutup koneksi
$koneksi->close();
?>

<div class="card card-info">
	<div class="card-header">
		<h3 class="card-title">
			<i class="fa fa-user"></i> Profil
		</h3>
		<div class="card-tools">
		</div>
	</div>
	<div class="card-body p-0">
		<table class="table">
			<tbody>
				<tr>
					<td style="width: 150px">
						<b>Nama</b>
					</td>
					<td>:
						<?php echo $data_nama; ?>
					</td>
				</tr>
				<tr>
					<td style="width: 150px">
						<b>Username</b>
					</td>
					<td>:
						<?php echo $data_user; ?>
					</td>
				</tr>
				<tr>
					<td style="width: 150px">
						<b>Password</b>
					</td>
					<td>:
						<?php echo $data_pass; ?>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="card-footer">
			<a href="index.php" class="btn btn-warning">Kembali</a>
		</div>
	</div>
</div>