<?php
// Check if user is logged in
if (!isset($_SESSION["ses_id"])) {
    header("Location: login.php"); // Redirect to login page if not logged in
    exit();
}

// Include database connection
include("inc/koneksi.php");

// Fetch user data from session
$id_users = $_SESSION["ses_id"];
$nama = $_SESSION["ses_nama"];
$username = $_SESSION["ses_username"];
$password = $_SESSION["ses_password"];
$role = $_SESSION["ses_role"];

// Function to fetch data from database
function fetchData()
{
    global $koneksi, $id_users;
    $sql = "SELECT ts.*,k.*,j.* FROM tb_siswa ts 
    INNER JOIN tb_kelas k ON ts.id_kelas=k.id_kelas 
    INNER JOIN tb_jurusan j ON ts.id_jurusan=j.id_jurusan WHERE id_user = $id_users";
    $result = $koneksi->query($sql);
    $data = array();
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
    }
    return $data;
}

// Fetch data from database
$siswa_data = fetchData();

// Close connection
// $koneksi->close();

// Edit process
if (isset($_POST['submit'])) {
    // Get data from form
    $id_siswa = $_POST['id_siswa'];
    $nisn = $_POST['nisn'];
    $nama_siswa = $_POST['nama_siswa'];
    $jenis_kelamin = $_POST['jenis_kelamin'];
    $telepon_siswa = $_POST['telepon_siswa'];
    $alamat_siswa = $_POST['alamat_siswa'];
    $id_kelas = $_POST['id_kelas'];
    $status_siswa = $_POST['status_siswa'];

    // Update data in database
    $update_query = "UPDATE tb_siswa SET nisn='$nisn', nama_siswa='$nama_siswa', jenis_kelamin='$jenis_kelamin', telepon_siswa='$telepon_siswa', alamat_siswa='$alamat_siswa', id_kelas='$id_kelas', status_siswa='$status_siswa' WHERE id_siswa='$id_siswa'";

    if ($koneksi->query($update_query) === TRUE) {
        echo "<script>alert('Data siswa berhasil diupdate');</script>";
        // Redirect to this page to refresh data after update
        echo "<script>window.location.href='index.php?page=data-siswa';</script>";
    } else {
        echo "Error updating record: " . $koneksi->error;
    }
}
?>
<div class="card-header">
    <h2>Data Siswa</h2>
    <!-- <p>Welcome, <?= $nama; ?> (<?= $role; ?>)</p> -->
</div>
<div class="card-body">
    <form action="" method="post">
        <?php foreach ($siswa_data as $siswa) : ?>
            <input type="hidden" name="id_siswa" value="<?= $siswa['id_siswa']; ?>">
            <div class="form-group row">
                <label for="nisn" class="col-sm-4 col-form-label">NISN</label>
                <div class="col-sm-8">
                    <input type="text" id="nisn" name="nisn" value="<?= $siswa['nisn']; ?>" class="form-control" readonly required>
                </div>
            </div>
            <div class="form-group row">
                <label for="nama_siswa" class="col-sm-4 col-form-label">Nama Siswa</label>
                <div class="col-sm-8">
                    <input type="text" id="nama_siswa" name="nama_siswa" value="<?= $siswa['nama_siswa']; ?>" class="form-control" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="jenis_kelamin" class="col-sm-4 col-form-label">Jenis Kelamin</label>
                <div class="col-sm-8">
                    <input type="text" id="jenis_kelamin" name="jenis_kelamin" value="<?= $siswa['jenis_kelamin']; ?>" class="form-control" readonly>
                </div>
            </div>
            <div class="form-group row">
                <label for="telepon_siswa" class="col-sm-4 col-form-label">Telepon</label>
                <div class="col-sm-8">
                    <input type="text" id="telepon_siswa" name="telepon_siswa" value="<?= $siswa['telepon_siswa']; ?>" class="form-control" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="alamat_siswa" class="col-sm-4 col-form-label">Alamat</label>
                <div class="col-sm-8">
                    <input type="text" id="alamat_siswa" name="alamat_siswa" value="<?= $siswa['alamat_siswa']; ?>" class="form-control" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="" class="col-sm-4 col-form-label">Kelas</label>
                <div class="col-sm-8">
                    <input type="hidden" id="id_kelas" name="id_kelas" value="<?= $siswa['id_kelas']; ?>" class="form-control" readonly>
                    <input type="text" id="" name="" value="<?= $siswa['nama_kelas']; ?> - <?= $siswa['nama_jurusan']; ?>" class="form-control" readonly>
                </div>
            </div>
            <div class="form-group row">
                <label for="status_siswa" class="col-sm-4 col-form-label">Status Siswa</label>
                <div class="col-sm-8">
                    <input type="text" id="status_siswa" name="status_siswa" value="<?= $siswa['status_siswa']; ?>" class="form-control" readonly>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-12 text-center">
                    <input type="submit" name="submit" value="Update" class="btn btn-primary">
                </div>
            </div>
        <?php endforeach; ?>
    </form>
</div>
</div>