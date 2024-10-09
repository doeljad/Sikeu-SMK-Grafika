<?php
include('../../inc/koneksi.php');
$id_tagihan = $_POST['id_tagihan'];
$amount = $_POST['amount'];

// Update query
$tgl_bayar = date('Y-m-d'); // Format Tahun-Bulan-Hari
$status_bayar = 1; // Pembayaran lunas
$cara_bayar = 'Transfer';

$sql = "UPDATE tb_tagihan_bulanan_siswa 
        SET terbayar = jml_bayar, 
            tgl_bayar = '$tgl_bayar', 
            status_bayar = '$status_bayar', 
            cara_bayar = '$cara_bayar' 
        WHERE id_tagihan_bulanan_siswa = '$id_tagihan'";

if ($koneksi->query($sql) === TRUE) {
    echo json_encode(['status' => 'success']);
} else {
    echo json_encode(['status' => 'error', 'message' => $koneksi->error]);
}
