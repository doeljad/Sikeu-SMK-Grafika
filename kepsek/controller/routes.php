<div class="container-fluid">

<?php
if (isset($_GET['page'])) {
    $hal = $_GET['page'];

    switch ($hal) {

            //Siswa
        case 'data-laporan-siswa':
            include "admin/laporan/siswa/data_laporan_siswa.php";
            break;
        case 'data-guru':
            include "admin/guru/data_guru.php";
            break;
        case 'update-password':
            include "siswa/siswa/update-password.php";
            break;
        case 'data-pembayaran-spp-siswa':
            include "admin/laporan/siswa/data_pembayaran_spp_siswa.php";
            break;
        case 'data-pembayaran-bebas-siswa':
            include "admin/laporan/siswa/data_pembayaran_bebas_siswa.php";
            break;
        case 'data-pembayaran-gaji-guru':
            include "admin/laporan/guru/data_pembayaran_gaji_guru.php";
            break;
        case 'data-arus-keuangan':
            include "admin/arus_keuangan/data_arus_keuangan.php";
            break;
        case 'update-password':
            include "kepsek/kepsek/update-password.php";
            break;
        case 'view-kepsek':
            include "admin/admin/view_admin.php";
            break;
            //default
        default:
            echo "<center><h1> ERROR !</h1></center>";
            break;
    }
} else {
    // Auto Halaman Home Pengguna
    include "kepsek/dashboard/dashboard.php";
}
?>

</div>