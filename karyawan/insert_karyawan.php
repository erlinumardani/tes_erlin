<?php

    $con=mysqli_connect("localhost","root","infonusa","db_hr");
    // Check connection
    if (mysqli_connect_errno())
    {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }

    if($_POST['nama']){

    $insData = $_POST;
    $columns = implode(", ",array_keys($insData));
    $escaped_values = array_map('mysql_real_escape_string', array_values($insData));
    $values  = implode(", ", $escaped_values);
    //$sql = "INSERT INTO `karyawan`($columns) VALUES($values)";
    $sql = "INSERT INTO karyawan VALUES (   '".$_POST['no_induk']."',
                                            '".$_POST['kode_bagian']."', 
                                            '".$_POST['nama']."', 
                                            '".$_POST['tempat_lahir']."', 
                                            '".$_POST['tgl_lahir']."', 
                                            '".$_POST['tgl_masuk']."', 
                                            '".$_POST['golongan']."')";
    $sql2 = "INSERT INTO gaji VALUES('".$_POST['no_induk']."','".$_POST['tahun']."','".$_POST['bulan']."','".$_POST['kode_gaji']."', '".$_POST['jumlah']."')";

    if ($con->query($sql) === TRUE && $con->query($sql2) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $sql2 . "<br>" . $con->error;
    }

    $con->close();
    }

    

    
    

?>

<form action="" method="post">

    <table>
        <tr>
            <td>Nomor Induk</td>
            <td><input type="input" name="no_induk"></td>
        </tr>
        <tr>
            <td>Kode Bagian</td>
            <td><input type="input" name="kode_bagian"></td>
        </tr>
        <tr>
            <td>Nama</td>
            <td><input type="input" name="nama"></td>
        </tr>
        <tr>
            <td>Tempat Lahir</td>
            <td><input type="input" name="tempat_lahir"></td>
        </tr>
        <tr>
            <td>Tgl Lahir</td>
            <td><input type="date" name="tgl_lahir"></td>
        </tr>
        <tr>
            <td>Tgl Masuk</td>
            <td><input type="date" name="tgl_masuk"></td>
        </tr>
        <tr>
            <td>Golongan</td>
            <td><input type="input" name="golongan"></td>
        </tr>
        <tr>
            <td>Jumlah Gaji</td>
            <td><input type="input" name="jumlah"></td>
        </tr>
        <tr>
            <td>Tahun Gaji</td>
            <td><input type="input" name="tahun"></td>
        </tr>
        <tr>
            <td>Bulan Gaji</td>
            <td><input type="input" name="bulan"></td>
        </tr>
        <tr>
            <td>Bulan Gaji</td>
            <td><input type="input" name="bulan"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Tambah"></td>
        </tr>
    </table>

</form>