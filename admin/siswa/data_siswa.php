<div class="card card-info">
    <div class="card-header">
        <h3 class="card-title">
            <i class="fa fa-table"></i> Data Siswa
        </h3>
    </div>

    <!-- /.card-header -->
    <div class="card-body">
        <div class="table-responsive">
            <div class="row">
                <div class="col-md-2">
                    <a href="?page=add-siswa" class="btn btn-primary">
                        <i class="fa fa-edit"></i> Tambah Data
                    </a>
                </div>

                <div class="col-md-3">
                    <div class="form-group">
                        <!-- Form Pencarian -->
                        <form action="" method="post" enctype="multipart/form-data">
                            <select class="form-control" name="id_kelas" required="">
                                <option value="" disabled selected>Pilih Kelas</option>
                                <?php
                                $query = $koneksi->query("SELECT * FROM tb_kelas ORDER BY id_kelas ASC");
                                while ($tampil_t = $query->fetch_assoc()) {
                                    $selected = (isset($_POST['id_kelas']) && $_POST['id_kelas'] == $tampil_t['id_kelas']) ? 'selected' : '';
                                    echo "<option value='{$tampil_t['id_kelas']}' $selected>{$tampil_t['nama_kelas']}</option>";
                                }
                                ?>
                            </select>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="form-group">
                        <select class="form-control" name="id_jurusan" required="">
                            <option value="" disabled selected>Pilih Jurusan</option>
                            <?php
                            $query = $koneksi->query("SELECT * FROM tb_jurusan ORDER BY id_jurusan ASC");
                            while ($tampil_t = $query->fetch_assoc()) {
                                $selected = (isset($_POST['id_jurusan']) && $_POST['id_jurusan'] == $tampil_t['id_jurusan']) ? 'selected' : '';
                                echo "<option value='{$tampil_t['id_jurusan']}' $selected>{$tampil_t['nama_jurusan']}</option>";
                            }
                            ?>
                        </select>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="form-group">
                        <button type="submit" name="filter" class="btn btn-info"> Cari </button>
                    </div>
                </div>
                </form>
            </div>
            <br>
            <table id="example1" class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>NISN</th>
                        <th>Nama</th>
                        <th>Jenis Kelamin</th>
                        <th>Telepon/WA</th>
                        <th>Alamat</th>
                        <th>Kelas</th>
                        <th>Status</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if (isset($_POST['filter'])) {
                        $id_kelas = $_POST['id_kelas'];
                        $id_jurusan = $_POST['id_jurusan'];
                        $no = 1;
                        $sql = $koneksi->query("SELECT tb_siswa.nisn, tb_siswa.nama_siswa, tb_siswa.telepon_siswa, tb_siswa.jenis_kelamin, tb_siswa.alamat_siswa, tb_siswa.status_siswa, tb_kelas.nama_kelas, tb_jurusan.nama_jurusan
                                                FROM tb_siswa
                                                INNER JOIN tb_kelas ON tb_kelas.id_kelas = tb_siswa.id_kelas
                                                INNER JOIN tb_jurusan ON tb_jurusan.id_jurusan = tb_siswa.id_jurusan
                                                WHERE tb_siswa.id_kelas = '$id_kelas' AND tb_siswa.id_jurusan = '$id_jurusan'");
                    } else {
                        $no = 1;
                        $sql = $koneksi->query("SELECT tb_siswa.nisn, tb_siswa.nama_siswa, tb_siswa.telepon_siswa, tb_siswa.jenis_kelamin, tb_siswa.alamat_siswa, tb_siswa.status_siswa, tb_kelas.nama_kelas, tb_jurusan.nama_jurusan
                                                FROM tb_siswa
                                                INNER JOIN tb_kelas ON tb_kelas.id_kelas = tb_siswa.id_kelas
                                                INNER JOIN tb_jurusan ON tb_jurusan.id_jurusan = tb_siswa.id_jurusan
                                                ORDER BY tb_siswa.id_siswa DESC");
                    }

                    while ($data = $sql->fetch_assoc()) {
                    ?>
                        <tr>
                            <td><?php echo $no++; ?></td>
                            <td><?php echo $data['nisn']; ?></td>
                            <td><?php echo $data['nama_siswa']; ?></td>
                            <td><?php echo $data['jenis_kelamin']; ?></td>
                            <td><?php echo $data['telepon_siswa']; ?></td>
                            <td><?php echo $data['alamat_siswa']; ?></td>
                            <td><?php echo $data['nama_kelas']; ?> - <?php echo $data['nama_jurusan']; ?></td>
                            <td><?php echo $data['status_siswa']; ?></td>
                            <td>
                                <a href="?page=edit-siswa&kode=<?php echo $data['nisn']; ?>" title="Ubah" class="btn btn-success btn-sm">
                                    <i class="fa fa-edit"></i>
                                </a>
                                <a href="?page=del-siswa&kode=<?php echo $data['nisn']; ?>" onclick="return confirm('Apakah anda yakin hapus data ini ?')" title="Hapus" class="btn btn-danger btn-sm">
                                    <i class="fa fa-trash"></i>
                                </a>
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
                <tfoot>
                    <tr>
                        <th>No</th>
                        <th>NISN</th>
                        <th>Nama</th>
                        <th>Jenis Kelamin</th>
                        <th>Telepon/WA</th>
                        <th>Alamat</th>
                        <th>Kelas</th>
                        <th>Status</th>
                        <th>Aksi</th>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>
    <!-- /.card-body -->
</div>