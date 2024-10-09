<div class="container-fluid">

<?php
if (isset($_GET['page'])) {
    $hal = $_GET['page'];

    switch ($hal) {

            //Guru
        case 'data-siswa':
            include "siswa/data_siswa/data_siswa.php";
            break;
        case 'data-tagihan':
            include "siswa/data_tagihan/data_tagihan.php";
            break;
        case 'update-password':
            include "siswa/siswa/update-password.php";
            break;

            //default
        default:
            echo "<center><h1> ERROR !</h1></center>";
            break;
    }
} else {
    // Auto Halaman Home Pengguna
    include "siswa/dashboard/dashboard.php";
}
?>

</div>