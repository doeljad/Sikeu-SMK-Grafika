<?php
session_start();
require_once '../../dist/vendor/midtrans/Midtrans.php';
require '../../inc/koneksi.php';
// Set your Merchant Server Key
\Midtrans\Config::$serverKey = 'SB-Mid-server-1nQeAJzw-cnW0Jv_lYGEFNQm';
// Set to Development/Sandbox Environment (default). Change to true for Production Environment (accept real transaction).
\Midtrans\Config::$isProduction = false;
// Set sanitization on (default)
\Midtrans\Config::$isSanitized = true;
// Set 3DS transaction for credit card to true
\Midtrans\Config::$is3ds = true;

// Pastikan variabel POST didefinisikan sebelum digunakan
$id_tagihan = isset($_POST['id_tagihan']) ? $_POST['id_tagihan'] : null;
$amount = isset($_POST['amount']) ? $_POST['amount'] : null;

$id_ses = $_SESSION['ses_id'];
$sql = $koneksi->query("SELECT * FROM tb_siswa WHERE id_user = '$id_ses'");
$data_siswa = $sql->fetch_assoc();

if (!$id_tagihan || !$amount) {
    die('Invalid parameters.');
}

$transaction_details = array(
    'order_id' => rand(),
    'gross_amount' => (int)$amount, // pastikan amount di-cast menjadi integer
);

$item1_details = array(
    'id' => 'a1',
    'price' => (int)$amount,
    'quantity' => 1,
    'name' => "Pembayaran Bulanan"
);

// Lanjutkan proses transaksi seperti biasa


// Optional, add customer details
$customer_details = array(
    'first_name'    => explode(' ', $data_siswa['nama_siswa'])[0], // Ambil nama depan
    'last_name'     => explode(' ', $data_siswa['nama_siswa'], 2)[1] ?? '', // Ambil nama belakang jika ada
    // 'email'         => $data_siswa['email'] ?? '', // Pastikan ada kolom email, atau sesuaikan dengan data
    'phone'         => $data_siswa['telepon_siswa'],
);


$transaction = array(
    'transaction_details' => $transaction_details,
    'customer_details' => $customer_details,
    'item_details' => array($item1_details),
);

try {
    $snapToken = \Midtrans\Snap::getSnapToken($transaction);
    echo json_encode(['snapToken' => $snapToken]);
} catch (Exception $e) {
    echo json_encode(['error' => $e->getMessage()]);
}
