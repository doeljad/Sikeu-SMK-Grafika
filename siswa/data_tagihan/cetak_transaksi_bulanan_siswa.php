<?php 	
    error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
    include('../../inc/koneksi.php');
    
    $id_tagihan_bulanan_siswa = $_GET['id_tagihan_bulanan_siswa'];
    $nisn = $_GET['nisn'];
    
    $sql2 = $koneksi->query("SELECT tb_tahun_ajaran.tahun_ajaran, tb_tahun_ajaran.id_tahun_ajaran, tb_jenis_bayar_siswa.nama_bayar_siswa, tb_jenis_bayar_siswa.id_jenis_bayar_siswa, tb_jenis_bayar_siswa.id_tahun_ajaran, tb_siswa.nisn, tb_siswa.nama_siswa, tb_kelas.nama_kelas, tb_tagihan_bulanan_siswa.id_jenis_bayar_siswa, tb_bulan.nama_bulan, tb_bulan.urutan, tb_tagihan_bulanan_siswa.jml_bayar, tb_tagihan_bulanan_siswa.id_tagihan_bulanan_siswa, tb_tagihan_bulanan_siswa.status_bayar FROM tb_jenis_bayar_siswa
    INNER JOIN tb_tagihan_bulanan_siswa ON tb_tagihan_bulanan_siswa.id_jenis_bayar_siswa = tb_jenis_bayar_siswa.id_jenis_bayar_siswa
    INNER JOIN tb_tahun_ajaran ON tb_jenis_bayar_siswa.id_tahun_ajaran = tb_tahun_ajaran.id_tahun_ajaran
    INNER JOIN tb_bulan ON tb_tagihan_bulanan_siswa.id_bulan = tb_bulan.id_bulan
    INNER JOIN tb_siswa ON tb_tagihan_bulanan_siswa.id_siswa = tb_siswa.id_siswa
    INNER JOIN tb_kelas ON tb_tagihan_bulanan_siswa.id_kelas = tb_kelas.id_kelas
    WHERE tb_tagihan_bulanan_siswa.id_tagihan_bulanan_siswa='$id_tagihan_bulanan_siswa' AND tb_siswa.nisn='$nisn'");
    
    $data = $sql2->fetch_assoc();
    
      $satu_hari        = mktime(0,0,0,date("n"),date("j"),date("Y"));
       
          function tglIndonesia2($str){
             $tr   = trim($str);
             $str    = str_replace(array('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'), array('Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jum\'at', 'Sabtu', 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'), $tr);
             return $str;
         }


    function uang_indo($angka){
    $rupiah="Rp.". number_format($angka,2,',','.');
    return $rupiah;
}

        

 ?>
<!DOCTYPE html>
<html>
<head>
<title>Cetak - Slip Pembayaran SPP</title>
  <style type="text/css">

    .tabel{border-collapse: collapse;}
    .tabel th{padding: 8px 5px;  background-color:  #cccccc;  }
    .tabel td{padding: 8px 5px;     }
  </style>
  <script>
  

      window.print();
      window.onfocus=function() {window.close();}

</script>
</head>

</head>

<body onload="window.print()">

<?php 

    $sql = $koneksi->query("SELECT * FROM tb_sekolah");

    $data1 = $sql->fetch_assoc();

 ?>

<table width="100%" >
  <tr>
    <?php $gambar="../../admin/gambar/" . $data1['gambar_sekolah'];?>   
    <td width="10" rowspan="3" valign="top"><img src="<?php echo $gambar;?>" width="140" height="110" /></td>
    <td width="383"><div align="center"><b><?php echo $data1['yayasan_sekolah']; ?></b></div></td>
  </tr>
  <tr>
    <td><div align="center"><font size="5"><b>KOMITE <?php echo $data1['nama_sekolah']; ?></b></font></div></td>
  </tr>
  <tr>
    <td><div align="center"><b><?php echo $data1['alamat_sekolah']; ?> <?php echo $data1['kec_sekolah']; ?> <?php echo $data1['keb_sekolah']; ?> <?php echo $data1['prov_sekolah']; ?>  Telp. <?php echo $data1['telepon_sekolah']; ?></b></div></td>
  </tr>
</table>
<hr>

<br>  



</body>



<table width="100%" >
  <tr>
    <td width="0">&nbsp;</td>
    <td colspan="6"><div align="center"><strong>BUKTI PEMBAYARAN <br> <?php echo $data['nama_bayar_siswa'] ?></strong></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
     <td width="700">&nbsp;</td>
    <td width="16">&nbsp;</td>
    <td width="2050">&nbsp;</td>
    <td width="200">&nbsp;</td>
    <td width="15">&nbsp;</td>
    <td width="375">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td width="80px">Nama Siswa</td>
    <td>:</td>
    <td><?php echo $data['nama_siswa'] ?></td>
    <td>Kelas</td>
    <td>:</td>
    <td><?php echo $data['nama_kelas'] ?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>NISN</td>
    <td>:</td>
    <td><?php echo $data['nisn'] ?></td>
     <td>Tahun Ajaran</td>
    <td>:</td>
    <td><?php echo $data['tahun_ajaran'] ?></td>
  </tr>
</table><br>


<table class="tabel" border="1" width="100%">

  <thead>
    <tr>
      
                  <th>No</th>
                  <th>Bulan Pembayaran</th>
                  <th>Tanggal Pembayaran</th>
                  <th>Jumlah Pembayaran</th>
                  <th>Status Pembayaran</th>
                  
                  
    </tr>
  </thead>
    <tbody>
  
                     <?php 

                      $no = 1;

                      $sql = $koneksi->query("SELECT * FROM tb_tagihan_bulanan_siswa, tb_bulan where tb_tagihan_bulanan_siswa.id_bulan=tb_bulan.id_bulan and tb_tagihan_bulanan_siswa.id_tagihan_bulanan_siswa='$id_tagihan_bulanan_siswa' ");

                      while ($data = $sql->fetch_assoc()) {

                        $status=  $data['status_bayar'];

                        if ($status==1) {
                          $status_oke = "Lunas";
                        }else{
                           $status_oke = "Belum Lunas";
                        }
                        
                      
                   ?>


                <tr>
                  <td align="center"><?php echo $no++; ?></td>
                  <td><?php echo $data['nama_bulan'] ?></td>
                  <td><?php echo tglIndonesia2(date('d F Y', strtotime($data['tgl_bayar']))) ?></td>
                  <td><?php echo uang_indo($data['jml_bayar']) ?></td>
                  <td><?php echo $status_oke ?></td>
                 

                 </tr> 

                 <?php


                  } 

                  ?>

               

  </tbody>
</table><br><br><br>

<?php $tgl=date('Y-m-d'); ?>
<table width="100%">
<tr>
  <td align="center"></td>
  <td align="center" width="200px">
   Surakarta, <?php echo tglIndonesia2(date('d F Y', strtotime($tgl))) ?>
    <br/>Bendahara,<br/><br/><br/><br/>
    <b><u><?php echo $data1['nama_bendahara']; ?></u><br/><?php echo $data1['nip_bendahara']; ?></b>
  </td>
</tr>
</table>


