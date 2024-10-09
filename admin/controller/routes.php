<div class="container-fluid">

<?php
if (isset($_GET['page'])) {
    $hal = $_GET['page'];

    switch ($hal) {

            //Profil Sekolah
        case 'data-sekolah':
            include "admin/sekolah/data_sekolah.php";
            break;

            //Guru
        case 'data-guru':
            include "admin/guru/data_guru.php";
            break;
        case 'add-guru':
            include "admin/guru/add_guru.php";
            break;
        case 'edit-guru':
            include "admin/guru/edit_guru.php";
            break;
        case 'del-guru':
            include "admin/guru/del_guru.php";
            break;

            //Admin
        case 'data-admin':
            include "admin/admin/data_admin.php";
            break;
        case 'add-admin':
            include "admin/admin/add_admin.php";
            break;
        case 'edit-admin':
            include "admin/admin/edit_admin.php";
            break;
        case 'del-admin':
            include "admin/admin/del_admin.php";
            break;
        case 'view-admin':
            include "admin/admin/view_admin.php";
            break;
        case 'update-password':
            include "admin/admin/update_password.php";
            break;

            //Jurusan
        case 'data-jurusan':
            include "admin/jurusan/data_jurusan.php";
            break;
        case 'add-jurusan':
            include "admin/jurusan/add_jurusan.php";
            break;
        case 'edit-jurusan':
            include "admin/jurusan/edit_jurusan.php";
            break;
        case 'del-jurusan':
            include "admin/jurusan/del_jurusan.php";
            break;

            //Kelas
        case 'data-kelas':
            include "admin/kelas/data_kelas.php";
            break;
        case 'add-kelas':
            include "admin/kelas/add_kelas.php";
            break;
        case 'edit-kelas':
            include "admin/kelas/edit_kelas.php";
            break;
        case 'del-kelas':
            include "admin/kelas/del_kelas.php";
            break;

            // Siswa
        case 'data-siswa':
            include "admin/siswa/data_siswa.php";
            break;
        case 'add-siswa':
            include "admin/siswa/add_siswa.php";
            break;
        case 'edit-siswa':
            include "admin/siswa/edit_siswa.php";
            break;
        case 'del-siswa':
            include "admin/siswa/del_siswa.php";
            break;

            //Tahun Ajaran
        case 'data-tahunajaran':
            include "admin/tahunajaran/data_tahunajaran.php";
            break;
        case 'add-tahunajaran':
            include "admin/tahunajaran/add_tahunajaran.php";
            break;
        case 'edit-tahunajaran':
            include "admin/tahunajaran/edit_tahunajaran.php";
            break;
        case 'del-tahunajaran':
            include "admin/tahunajaran/del_tahunajaran.php";
            break;
        case 'aktif-tahunajaran':
            include "admin/tahunajaran/aktif_tahunajaran.php";
            break;

            //Jenis Bayar Siswa
        case 'data-jenis-bayar-siswa':
            include "admin/jenis_bayar_siswa/data_jenis_bayar_siswa.php";
            break;
        case 'add-jenis-bayar-siswa':
            include "admin/jenis_bayar_siswa/add_jenis_bayar_siswa.php";
            break;
        case 'edit-jenis-bayar-siswa':
            include "admin/jenis_bayar_siswa/edit_jenis_bayar_siswa.php";
            break;
        case 'del-jenis-bayar-siswa':
            include "admin/jenis_bayar_siswa/del_jenis_bayar_siswa.php";
            break;
            //Bulanan dan Bebas
        case 'add-bulanan':
            include "admin/jenis_bayar_siswa/bulanan/add_bulanan.php";
            break;
        case 'hapus-bulanan':
            include "admin/jenis_bayar_siswa/bulanan/hapus_bulanan.php";
            break;
        case 'hapus-bebas':
            include "admin/jenis_bayar_siswa/bulanan/hapus_bebas.php";
            break;

            //Jenis Pemasukan Lainya
        case 'data-pemasukan-lain':
            include "admin/pemasukan_lain/data_pemasukan_lain.php";
            break;
        case 'add-pemasukan-lain':
            include "admin/pemasukan_lain/add_pemasukan_lain.php";
            break;
        case 'edit-pemasukan-lain':
            include "admin/pemasukan_lain/edit_pemasukan_lain.php";
            break;
        case 'del-pemasukan-lain':
            include "admin/pemasukan_lain/del_pemasukan_lain.php";
            break;
        case 'detail-transaksi-pemasukan':
            include "admin/pemasukan_lain/detail_transaksi_pemasukan.php";
            break;
        case 'transaksi-pemasukan':
            include "admin/pemasukan_lain/transaksi_pemasukan.php";
            break;
            //Setting Pemasukan
        case 'setting-pemasukan':
            include "admin/pemasukan_lain/setting_pemasukan/add_setting_pembayaran.php";
            break;
        case 'hapus-pemasukan':
            include "admin/pemasukan_lain/setting_pemasukan/hapus_pemasukan.php";
            break;

            //Jenis Pengeluaran Lainya
        case 'data-pengeluaran-lain':
            include "admin/pengeluaran_lain/data_pengeluaran_lain.php";
            break;
        case 'add-pengeluaran-lain':
            include "admin/pengeluaran_lain/add_pengeluaran_lain.php";
            break;
        case 'edit-pengeluaran-lain':
            include "admin/pengeluaran_lain/edit_pengeluaran_lain.php";
            break;
        case 'del-pengeluaran-lain':
            include "admin/pengeluaran_lain/del_pengeluaran_lain.php";
            break;
        case 'detail-transaksi-pengeluaran':
            include "admin/pengeluaran_lain/detail_transaksi_pengeluaran.php";
            break;
        case 'transaksi-pengeluaran':
            include "admin/pengeluaran_lain/transaksi_pengeluaran.php";
            break;
            //Setting Pengeluaran
        case 'setting-pengeluaran':
            include "admin/pengeluaran_lain/setting_pengeluaran/add_setting_pembayaran.php";
            break;
        case 'hapus-pengeluaran':
            include "admin/pengeluaran_lain/setting_pengeluaran/hapus_pengeluaran.php";
            break;

            //Jenis Bayar Guru
        case 'data-jenis-bayar-guru':
            include "admin/jenis_bayar_guru/data_jenis_bayar_guru.php";
            break;
        case 'add-jenis-bayar-guru':
            include "admin/jenis_bayar_guru/add_jenis_bayar_guru.php";
            break;
        case 'edit-jenis-bayar-guru':
            include "admin/jenis_bayar_guru/edit_jenis_bayar_guru.php";
            break;
        case 'del-jenis-bayar-guru':
            include "admin/jenis_bayar_guru/del_jenis_bayar_guru.php";
            break;
            //Bulanan dan Bebas
        case 'add-bulanan-guru':
            include "admin/jenis_bayar_guru/bulanan/add_bulanan_guru.php";
            break;
        case 'hapus-bulanan-guru':
            include "admin/jenis_bayar_guru/bulanan/hapus_bulanan_guru.php";
            break;
        case 'edit-bulanan-guru':
            include "admin/jenis_bayar_guru/bulanan/edit_bulanan_guru.php";
            break;
        case 'hapus-bebas-guru':
            include "admin/jenis_bayar_guru/bulanan/hapus_bebas_guru.php";
            break;

            //Transaksi Siswa
        case 'data-transaksi-siswa':
            include "admin/transaksi_siswa/data_transaksi_siswa.php";
            break;
        case 'detail-transaksi-siswa':
            include "admin/transaksi_siswa/detail_transaksi_siswa.php";
            break;
            //Transaksi Iuran lainya
        case 'transaksi-bebas-siswa':
            include "admin/transaksi_siswa/bebas/transaksi_bebas_siswa.php";
            break;
        case 'transaksi-bulanan-siswa':
            include "admin/transaksi_siswa/bebas/transaksi_bulanan_siswa.php";
            break;

            //Transaksi Guru
        case 'data-transaksi-guru':
            include "admin/transaksi_guru/data_transaksi_guru.php";
            break;
        case 'detail-transaksi-guru':
            include "admin/transaksi_guru/detail_transaksi_guru.php";
            break;
            //Transaksi Iuran lainya
        case 'transaksi-bebas-guru':
            include "admin/transaksi_guru/bebas/transaksi_bebas_guru.php";
            break;
        case 'transaksi-bulanan-guru':
            include "admin/transaksi_guru/bebas/transaksi_bulanan_guru.php";
            break;

            //Arus Keuangan
        case 'data-arus-keuangan':
            include "admin/arus_keuangan/data_arus_keuangan.php";
            break;

            //Laporan Siswa
        case 'data-laporan-siswa':
            include "admin/laporan/siswa/data_laporan_siswa.php";
            break;
        case 'data-pembayaran-spp-siswa':
            include "admin/laporan/siswa/data_pembayaran_spp_siswa.php";
            break;
        case 'data-pembayaran-bebas-siswa':
            include "admin/laporan/siswa/data_pembayaran_bebas_siswa.php";
            break;

            //Laporan Guru
        case 'data-pembayaran-gaji-guru':
            include "admin/laporan/guru/data_pembayaran_gaji_guru.php";
            break;


            //default
        default:
            echo "<center><h1> ERROR !</h1></center>";
            break;
    }
} else {
    // Auto Halaman Home Pengguna
    include "home/admin.php";
}
?>

</div>