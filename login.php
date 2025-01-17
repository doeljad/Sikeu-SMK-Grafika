<?php
  include "inc/koneksi.php";
  
?>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SMK GRAFIKA IGNATIUS SLAMET RIYADI</title>
	<link rel="icon" href="dist/img/logooo.png">
	<!-- Tell the browser to be responsive to screen width -->
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Font Awesome -->
	<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- icheck bootstrap -->
	<link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="dist/css/adminlte.min.css">
	<!-- Google Font: Source Sans Pro -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

<body class="hold-transition login-page" style="background-color: #1c3fbd">
	   
	<div class="login-box">
		<div class="login-logo">
		</div>
		<!-- /.login-logo -->
		<div class="card">
			<div class="card-body login-card-body" style="background-color: #031d47">
				<center>
					<img src="dist/img/logooo.png" width=170px />
					<br>
					<br>
					<h3 class="mb-0">
						<b class="text-light">SMK GRAFIKA IGNATIUS SLAMET RIYADI</b>
					</h3>
					<br>
				</center>


				<form action="" method="post">
					<div class="input-group mb-3">
						<input type="text" class="form-control" name="username" placeholder="Username" required>
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-user"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input type="password" class="form-control" id="pass" name="password" placeholder="Password" required>
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<input id="mybutton" onclick="change()" type="checkbox" class="form-checkbox"> Lihat Password<br><br>
					<div class="row">
						<div class="col-12">
							<button type="submit" class="btn btn-primary btn-block btn-flat" name="btnLogin" title="Masuk Sistem">
								<b>Login</b>
							</button>
						</div>
				</form>

				</div>
			</div>
		</div>
		<!-- /.login-box -->

		<!-- jQuery -->
		<script src="plugins/jquery/jquery.min.js"></script>
		<!-- Bootstrap 4 -->
		<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- AdminLTE App -->
		<script src="dist/js/adminlte.min.js"></script>
		<!-- Alert -->
		<script src="plugins/alert.js"></script>

</body>

</html>

<?php
// var_dump($_SESSION);
if (isset($_POST['btnLogin'])) {  
    //anti inject sql
    $username=mysqli_real_escape_string($koneksi,$_POST['username']);
    $password=mysqli_real_escape_string($koneksi,$_POST['password']);

    //query login
    $sql_login = "SELECT * FROM tb_admin WHERE BINARY username='$username' AND password='$password'";
    $query_login = mysqli_query($koneksi, $sql_login);
    $data_login = mysqli_fetch_array($query_login,MYSQLI_BOTH);
    $jumlah_login = mysqli_num_rows($query_login);

    if ($jumlah_login == 1) {
        session_start();
        $_SESSION["ses_id"]=$data_login["id_admin"];
        $_SESSION["ses_nama"]=$data_login["nama_admin"];
        $_SESSION["ses_username"]=$data_login["username"];
        $_SESSION["ses_password"]=$data_login["password"];
        $_SESSION["ses_role"]=$data_login["role"];

        // Redirect sesuai peran pengguna
        if ($data_login["role"] == "admin") {
            header("Location: index.php");
            exit();
        } elseif ($data_login["role"] == "siswa") {
            header("Location: index.php");
            exit();
        } elseif ($data_login["role"] == "kepsek") {
            header("Location: index.php");
            exit();
        }
    } else {
        echo "<script>
            Swal.fire({title: 'Login Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
            }).then((result) => {if (result.value)
                {window.location = 'login.php';}
            })</script>";
    }
}?>

<script type="text/javascript">
    function change()
    {
    var x = document.getElementById('pass').type;

    if (x == 'password')
    {
        document.getElementById('pass').type = 'text';
        document.getElementById('mybutton').innerHTML;
    }
    else
    {
        document.getElementById('pass').type = 'password';
        document.getElementById('mybutton').innerHTML;
    }
    }
</script>