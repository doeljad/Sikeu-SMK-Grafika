<?php 
// var_dump($_SESSION);
$id = $_SESSION['ses_id'];
$query = $koneksi->query("SELECT * FROM tb_admin WHERE id_admin = '$id'");
while ($tampil_t = $query->fetch_assoc()) {
?>
<div class="card card-info">
    <div class="card-header">
        <h3 class="card-title">
            <i class="fa fa-edit"></i> Update Password
        </h3>
    </div>
    <form action="" method="post" enctype="multipart/form-data">
        <div class="card-body">
            <input type='hidden' class="form-control" name="id_admin" value="<?php echo $tampil_t['id_admin']; ?>" readonly/>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-6">
                    <input type="password" class="form-control" id="pass" name="password" value="<?php echo $tampil_t['password']; ?>"/>
                    <input id="mybutton" onclick="togglePassword()" type="checkbox" class="form-checkbox"> Lihat Password
                </div>
            </div>
        </div>
        <div class="card-footer">
            <input type="submit" name="Ubah" value="Simpan" class="btn btn-success">
            <a href="index.php" title="Kembali" class="btn btn-secondary">Batal</a>
        </div>
    </form>
</div>

<script>
function togglePassword() {
    var passwordField = document.getElementById('pass');
    var checkBox = document.getElementById('mybutton');
    if (checkBox.checked) {
        passwordField.type = "text";
    } else {
        passwordField.type = "password";
    }
}
</script>

<?php
}
?>



<?php

    if (isset ($_POST['Ubah'])){

    $sql_ubah = "UPDATE tb_admin SET
        password='".$_POST['password']."'
        WHERE id_admin='".$_POST['id_admin']."'";
    $query_ubah = mysqli_query($koneksi, $sql_ubah);
    mysqli_close($koneksi);

    if ($query_ubah) {
        echo "<script>
      Swal.fire({title: 'Ubah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
      }).then((result) => {if (result.value)
        {window.location = 'index.php';
        }
      })</script>";
      }else{
      echo "<script>
      Swal.fire({title: 'Ubah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
      }).then((result) => {if (result.value)
        {window.location = 'index.php';
        }
      })</script>";
    }}
?>
