<?php
include('inc/koneksi.php');

$id_ses = $_SESSION['ses_id'];
$sql1 = $koneksi->query("SELECT tb_admin.*, tb_siswa.id_user, tb_siswa.id_siswa FROM tb_admin
INNER JOIN tb_siswa ON tb_siswa.id_user=tb_admin.id_admin WHERE id_admin=$id_ses");

if (!$sql1) {
    die("Query Error: " . $koneksi->error);
}

$data1 = $sql1->fetch_assoc();
$id_siswa = $data1['id_siswa']; // Mengubah $data menjadi $data1

$sql = $koneksi->query("SELECT * FROM tb_siswa, tb_kelas WHERE tb_siswa.id_kelas=tb_kelas.id_kelas AND tb_siswa.id_siswa='$id_siswa'");

if (!$sql) {
    die("Query Error: " . $koneksi->error);
}

$data = $sql->fetch_assoc();
$nisn = $data['nisn'];



function uang_indo($angka)
{
    $rupiah = "Rp." . number_format($angka, 2, ',', '.');
    return $rupiah;
}
?>

<!-- Data Siswa -->
<div class="row">
    <div class="col-sm-12">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">
                    <i class="fa fa-edit"></i> Data Siswa
                </h3>
            </div>
            <div class="card-body">
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">NISN</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="nisn" name="nisn" value="<?php echo $nisn; ?>" readonly>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Nama</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="nama_siswa" name="nama_siswa" value="<?php echo $data['nama_siswa']; ?>" readonly>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Kelas</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="nama_kelas" name="nama_kelas" value="<?php echo $data['nama_kelas']; ?>" readonly>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Tahun Ajaran</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" value="Semua Tahun Ajaran" readonly>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- End Data Siswa -->

    <!-- Iuran Bebas -->
    <div class="col-sm-12">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">
                    <i class="fa fa-edit"></i> Data Iuran Lain - Lain
                </h3>
            </div>

            <!-- Tabel -->
            <div class="card-body">
                <div class="table-responsive">
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Tahun Ajaran</th>
                                <th>Jenis Pembayaran</th>
                                <th>Total Iuran</th>
                                <th>Iuran Dibayar</th>
                                <th>Sisa Iuran </th>
                            </tr>
                        </thead>
                        <tbody>

                            <?php

                            $no = 1;
                            $sql2 = $koneksi->query("SELECT tb_tahun_ajaran.tahun_ajaran, tb_tahun_ajaran.id_tahun_ajaran, tb_jenis_bayar_siswa.nama_bayar_siswa, tb_tagihan_bebas_siswa.id_jenis_bayar_siswa, Sum(tb_tagihan_bebas_siswa.total_tagihan) AS jmlTagihanBulanan2, Sum(tb_tagihan_bebas_siswa.terbayar) AS jml_terbayar2 FROM tb_jenis_bayar_siswa

                            INNER JOIN tb_tagihan_bebas_siswa ON tb_tagihan_bebas_siswa.id_jenis_bayar_siswa = tb_jenis_bayar_siswa.id_jenis_bayar_siswa
                            INNER JOIN tb_tahun_ajaran ON tb_jenis_bayar_siswa.id_tahun_ajaran = tb_tahun_ajaran.id_tahun_ajaran

                            INNER JOIN tb_siswa ON tb_tagihan_bebas_siswa.id_siswa = tb_siswa.id_siswa
                            INNER JOIN tb_kelas ON tb_tagihan_bebas_siswa.id_kelas = tb_kelas.id_kelas
                            WHERE tb_siswa.nisn='$nisn' GROUP BY tb_jenis_bayar_siswa.id_jenis_bayar_siswa");

                            if (!$sql2) {
                                die("Query Error: " . $koneksi->error);
                            }

                            while ($data2 = $sql2->fetch_assoc()) {
                                $jml_tagihan2 = $data2['jmlTagihanBulanan2'];
                                $terbayar2 =  $data2['jml_terbayar2'];
                                $sisa2 = $jml_tagihan2 - $terbayar2;

                            ?>

                                <tr>
                                    <td><?php echo $no++; ?></td>
                                    <td><?php echo $data2['tahun_ajaran']; ?></td>
                                    <td><?php echo $data2['nama_bayar_siswa']; ?></td>
                                    <td><?php echo uang_indo($data2['jmlTagihanBulanan2']) ?></td>
                                    <td><?php echo uang_indo($data2['jml_terbayar2']) ?></td>
                                    <td><?php echo uang_indo($sisa2) ?></td>
                                </tr>

                            <?php
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- End Tabel -->
        </div>
    </div>
    <!-- End Iuran Bebas -->
    <!-- Iuran Bulanan -->

    <?php
    $sql = $koneksi->query("SELECT 
    tb_jenis_bayar_siswa.id_tahun_ajaran, 
    tb_jenis_bayar_siswa.id_jenis_bayar_siswa 
    FROM 
    tb_siswa 
    INNER JOIN 
    tb_tagihan_bulanan_siswa ON tb_siswa.id_siswa = tb_tagihan_bulanan_siswa.id_siswa 
    INNER JOIN 
    tb_jenis_bayar_siswa ON tb_tagihan_bulanan_siswa.id_jenis_bayar_siswa = tb_jenis_bayar_siswa.id_jenis_bayar_siswa 
    WHERE 
    tb_siswa.nisn = '$nisn'
    ");

    // Periksa apakah query berhasil
    if (!$sql) {
        die("Query Error: " . $koneksi->error);
    }

    // Ambil hasil query
    $data = $sql->fetch_assoc();

    if ($data) {
        // Jika data ditemukan, ambil id_tahun_ajaran dan id_jenis_bayar_siswa
        $id_tahun_ajaran = $data['id_tahun_ajaran'];
        $id_jenis_bayar_siswa = $data['id_jenis_bayar_siswa'];
    } else {
        echo "Data tidak ditemukan untuk NISN: " . $nisn;
    }

    $sql = $koneksi->query("SELECT tb_tahun_ajaran.tahun_ajaran, tb_tahun_ajaran.id_tahun_ajaran, tb_jenis_bayar_siswa.nama_bayar_siswa, tb_jenis_bayar_siswa.id_jenis_bayar_siswa, tb_jenis_bayar_siswa.id_tahun_ajaran, tb_siswa.nisn, tb_siswa.nama_siswa, tb_siswa.telepon_siswa, tb_kelas.nama_kelas, Sum(tb_tagihan_bulanan_siswa.jml_bayar) AS jmlTagihanBulanan FROM tb_jenis_bayar_siswa
    INNER JOIN tb_tagihan_bulanan_siswa ON tb_tagihan_bulanan_siswa.id_jenis_bayar_siswa = tb_jenis_bayar_siswa.id_jenis_bayar_siswa
    INNER JOIN tb_tahun_ajaran ON tb_jenis_bayar_siswa.id_tahun_ajaran = tb_tahun_ajaran.id_tahun_ajaran
    INNER JOIN tb_siswa ON tb_tagihan_bulanan_siswa.id_siswa = tb_siswa.id_siswa
    INNER JOIN tb_kelas ON tb_tagihan_bulanan_siswa.id_kelas = tb_kelas.id_kelas
    WHERE tb_siswa.nisn='$nisn' AND tb_jenis_bayar_siswa.id_tahun_ajaran='$id_tahun_ajaran' AND tb_jenis_bayar_siswa.id_jenis_bayar_siswa='$id_jenis_bayar_siswa' GROUP BY tb_jenis_bayar_siswa.id_jenis_bayar_siswa");

    if (!$sql) {
        die("Query Error: " . $koneksi->error);
    }

    // Cek apakah ada hasil
    if ($sql->num_rows === 0) {
        echo "Tidak ada data ditemukan.";
    } else {
        $data = $sql->fetch_assoc();
    }
    ?>


    <!-- Data Siswa -->

    <!-- End Data Siswa -->

    <!-- Timeline Iuran -->


    <div class="col-sm-12">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><i class="fa fa-edit"></i> Pembayaran Iuran Bulanan</h3>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Bulan</th>
                                <th>Jumlah Pembayaran</th>
                                <th>Status</th>
                                <th>Tanggal Pembayaran</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $sql3 = $koneksi->query("
                            SELECT 
                                tb_tahun_ajaran.tahun_ajaran, 
                                tb_tahun_ajaran.id_tahun_ajaran, 
                                tb_jenis_bayar_siswa.nama_bayar_siswa, 
                                tb_tagihan_bulanan_siswa.id_jenis_bayar_siswa, 
                                SUM(tb_tagihan_bulanan_siswa.jml_bayar) AS jmlTagihanBulanan, 
                                SUM(tb_tagihan_bulanan_siswa.terbayar) AS jml_terbayar 
                            FROM 
                                tb_jenis_bayar_siswa
                            INNER JOIN 
                                tb_tagihan_bulanan_siswa ON tb_tagihan_bulanan_siswa.id_jenis_bayar_siswa = tb_jenis_bayar_siswa.id_jenis_bayar_siswa
                            INNER JOIN 
                                tb_tahun_ajaran ON tb_jenis_bayar_siswa.id_tahun_ajaran = tb_tahun_ajaran.id_tahun_ajaran
                            INNER JOIN 
                                tb_siswa ON tb_tagihan_bulanan_siswa.id_siswa = tb_siswa.id_siswa
                            INNER JOIN 
                                tb_kelas ON tb_tagihan_bulanan_siswa.id_kelas = tb_kelas.id_kelas
                            WHERE 
                                tb_siswa.nisn = '$nisn'
                            GROUP BY 
                                tb_jenis_bayar_siswa.id_jenis_bayar_siswa
                        ");

                            if (!$sql3) {
                                die("Query Error: " . $koneksi->error);
                            }

                            $data3 = $sql3->fetch_assoc();
                            $id_jenis_bayar_siswaa = $data3['id_jenis_bayar_siswa'];
                            $no = 1;

                            $sql2 = $koneksi->query("
                            SELECT 
                                tb_tahun_ajaran.tahun_ajaran, 
                                tb_tahun_ajaran.id_tahun_ajaran, 
                                tb_jenis_bayar_siswa.nama_bayar_siswa, 
                                tb_jenis_bayar_siswa.id_jenis_bayar_siswa, 
                                tb_jenis_bayar_siswa.id_tahun_ajaran, 
                                tb_siswa.nisn, 
                                tb_siswa.nama_siswa, 
                                tb_kelas.nama_kelas, 
                                tb_tagihan_bulanan_siswa.id_jenis_bayar_siswa, 
                                tb_tagihan_bulanan_siswa.tgl_bayar, 
                                tb_bulan.nama_bulan, 
                                tb_bulan.urutan, 
                                tb_tagihan_bulanan_siswa.jml_bayar, 
                                tb_tagihan_bulanan_siswa.id_tagihan_bulanan_siswa, 
                                tb_tagihan_bulanan_siswa.status_bayar
                            FROM 
                                tb_jenis_bayar_siswa
                            INNER JOIN 
                                tb_tagihan_bulanan_siswa ON tb_tagihan_bulanan_siswa.id_jenis_bayar_siswa = tb_jenis_bayar_siswa.id_jenis_bayar_siswa
                            INNER JOIN 
                                tb_tahun_ajaran ON tb_jenis_bayar_siswa.id_tahun_ajaran = tb_tahun_ajaran.id_tahun_ajaran
                            INNER JOIN 
                                tb_bulan ON tb_tagihan_bulanan_siswa.id_bulan = tb_bulan.id_bulan
                            INNER JOIN 
                                tb_siswa ON tb_tagihan_bulanan_siswa.id_siswa = tb_siswa.id_siswa
                            INNER JOIN 
                                tb_kelas ON tb_tagihan_bulanan_siswa.id_kelas = tb_kelas.id_kelas
                            WHERE 
                                tb_siswa.nisn='$nisn' 
                                AND tb_jenis_bayar_siswa.id_tahun_ajaran='$id_tahun_ajaran' 
                                AND tb_jenis_bayar_siswa.id_jenis_bayar_siswa='$id_jenis_bayar_siswaa'
                            ORDER BY 
                                tb_bulan.urutan
                        ");

                            if (!$sql2) {
                                die("Query Error: " . $koneksi->error);
                            }

                            $last_paid_month = 0;

                            while ($data = $sql2->fetch_assoc()) {
                                $status = $data['status_bayar'];
                                $status_t = $status == 0 ? "Belum Lunas" : "Lunas";
                                $color = $status == 0 ? "red" : "green";
                                $bulan = $data['urutan'];

                                if ($status == 1) {
                                    $last_paid_month = $bulan;
                                }
                            ?>

                                <tr>
                                    <td><?php echo $no++; ?></td>
                                    <td style="color:<?php echo $color ?>"><?php echo $data['nama_bulan'] ?></td>
                                    <form method="POST">
                                        <td>
                                            <input style="color:<?php echo $color ?>; width: 100px;" type="text" value="<?php echo number_format($data['jml_bayar']) ?>" class="form-control" readonly name="jml_bayar">
                                        </td>
                                        <td style="color:<?php echo $color ?>"><?php echo $status_t ?></td>
                                        <td>
                                            <input style="width: 150px;" type="text" value="<?= $data['tgl_bayar'] ?>" class="form-control" name="tgl_bayar" readonly>
                                        </td>
                                    </form>
                                    <td>
                                        <button class="btn btn-primary"
                                            <?php echo ($bulan == $last_paid_month + 1 && $status == 0) ? '' : 'disabled'; ?>
                                            onclick="makePayment('<?php echo $data['id_tagihan_bulanan_siswa']; ?>', '<?php echo $data['jml_bayar']; ?>')">
                                            Bayar
                                        </button>

                                        <a target="blank" href="./siswa/data_tagihan/cetak_transaksi_bulanan_siswa.php?id_tagihan_bulanan_siswa=<?php echo $data['id_tagihan_bulanan_siswa'] ?>&nisn=<?php echo $nisn ?>" class="btn btn-default" title=""><i class="fa fa-print"></i> Cetak</a>
                                    </td>
                                </tr>

                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://app.sandbox.midtrans.com/snap/snap.js" data-client-key="SB-Mid-client-y5mWUqFZtUCb6hVz"></script>

<script>
    function makePayment(id_tagihan, amount) {
        $.ajax({
            url: 'siswa/data_tagihan/proses-pembayaran.php',
            type: 'POST',
            data: {
                id_tagihan: id_tagihan,
                amount: amount
            },
            success: function(response) {
                var jsonResponse = JSON.parse(response);

                if (jsonResponse.snapToken) {
                    snap.pay(jsonResponse.snapToken, {
                        onSuccess: function(result) {
                            // Payment successful, update the database
                            $.ajax({
                                url: 'siswa/data_tagihan/proses-update.php',
                                type: 'POST',
                                data: {
                                    id_tagihan: id_tagihan,
                                    amount: amount
                                },
                                success: function(updateResponse) {
                                    Swal.fire({
                                        icon: 'success',
                                        title: 'Pembayaran Berhasil',
                                        text: 'Pembayaran Berhasil dan data telah disimpan',
                                    }).then((result) => {
                                        location.reload(); // Reload the page after user confirmation
                                    });
                                },
                                error: function(xhr, status, error) {
                                    Swal.fire({
                                        icon: 'error',
                                        title: 'Update data gagal',
                                        text: 'Pembayaran Berhasil, namun gagal mengupdate data.',
                                        confirmButtonText: 'OK'
                                    });
                                    console.log("Error:", error);
                                }
                            });
                        },
                        onPending: function(result) {
                            Swal.fire({
                                icon: 'info',
                                title: 'Pembayaran Tertunda',
                                text: 'Menunggu pembayaran...',
                                confirmButtonText: 'OK'
                            });
                        },
                        onError: function(result) {
                            Swal.fire({
                                icon: 'error',
                                title: 'Pembayaran Gagal',
                                text: 'Pembayaran Gagal',
                                confirmButtonText: 'OK'
                            });
                        },
                        onClose: function() {
                            Swal.fire({
                                icon: 'warning',
                                title: 'Pembayaran ditutup',
                                text: 'Anda menutup popup pembayaran tanpa menyelesaikan pembayaran.',
                                confirmButtonText: 'OK'
                            });
                        }
                    });
                } else {
                    Swal.fire({
                        icon: 'error',
                        title: 'Snap Token Missing',
                        text: 'Snap Token is missing',
                        confirmButtonText: 'OK'
                    });
                    console.log("Error:", jsonResponse);
                }
            },
            error: function(xhr, status, error) {
                Swal.fire({
                    icon: 'error',
                    title: 'Request Gagal',
                    text: 'Gagal memproses permintaan pembayaran.',
                    confirmButtonText: 'OK'
                });
                console.log("Error:", error);
            }
        });
    }
</script>