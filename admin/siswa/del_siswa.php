<?php
if (isset($_GET['kode'])) {
    // Mendapatkan nilai 'kode' dari parameter GET
    $kode = $_GET['kode'];

    // Mulai transaksi
    mysqli_begin_transaction($koneksi);

    try {
        $sql_get_id_user = "SELECT id_user FROM tb_siswa WHERE nisn='$kode'";
        $result_get_id_user = mysqli_query($koneksi, $sql_get_id_user);
        $row = mysqli_fetch_assoc($result_get_id_user);
        $id_user = $row['id_user'];

        // Hapus data dari tabel tb_siswa
        $sql_hapus_siswa = "DELETE FROM tb_siswa WHERE nisn='$kode'";
        $query_hapus_siswa = mysqli_query($koneksi, $sql_hapus_siswa);

        if (!$query_hapus_siswa) {
            throw new Exception("Error deleting from tb_siswa: " . mysqli_error($koneksi));
        }

        // Hapus data dari tabel tb_admin
        // Dapatkan id_user dari tb_siswa yang akan dihapus


        $sql_hapus_admin = "DELETE FROM tb_admin WHERE id_admin='$id_user'";
        $query_hapus_admin = mysqli_query($koneksi, $sql_hapus_admin);

        if (!$query_hapus_admin) {
            throw new Exception("Error deleting from tb_admin: " . mysqli_error($koneksi));
        }

        // Jika semua operasi berhasil, commit transaksi
        mysqli_commit($koneksi);

        echo "<script>
        Swal.fire({title: 'Hapus Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=data-siswa';
            }
        })</script>";
    } catch (Exception $e) {
        // Jika ada kesalahan, rollback transaksi
        mysqli_rollback($koneksi);

        echo "<script>
        Swal.fire({title: 'Hapus Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=data-siswa';
            }
        })</script>";
    }

    // Tutup koneksi ke database
    mysqli_close($koneksi);
}
