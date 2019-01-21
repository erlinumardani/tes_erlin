<?php
echo '<div style="text-align:center;">Daftar Pembayaran Gaji Karyawan<br />Periode : Januari 2013</div><br /><br />';

function get_data($kode_bagian,$bagian){

    $con=mysqli_connect("localhost","root","infonusa","db_hr");
    // Check connection
    if (mysqli_connect_errno())
    {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }

    $sql = 'select *,floor(datediff(curdate(),tgl_lahir) / 365) as umur from karyawan 
            inner join bagian on karyawan.kode_bagian = bagian.kode_bagian
            inner join gaji on karyawan.no_induk = gaji.no_induk
            where bagian.kode_bagian = '.$kode_bagian;

    $result=mysqli_query($con,$sql);

    if ($result->num_rows > 0) {
        // output data of each row
        echo '<caption>Nama Bagian : '.$bagian.'</caption><table border="1">
        <th>No</th>
        <th>No Induk</th>
        <th>Nama Karyawan</th>
        <th>Umur</th>
        <th>Tgl Masuk</th>
        <th>Gol</th>
        <th>Gaji Pokok</th>
        ';

        $no = 1;
        while($row = $result->fetch_assoc()) {
            echo    "<tr><td>" 
                    . $no. 
                    "</td><td>". $row["no_induk"]. 
                    "</td><td>". $row["nama"]. 
                    "</td><td>". $row["umur"]. 
                    "</td><td>". $row["tgl_masuk"]. 
                    "</td><td>". $row["golongan"]. 
                    "</td><td>". $row["jumlah"]. 
                    "</td></tr>";
            $no++;
        }
        echo "</table><br />";
    } else {
        echo "0 results";
    }

    mysqli_close($con);
    
}

get_data("1","Estate Management");

get_data("2","Finance & Accounting");

get_data("3","Human Resources");

get_data("4","Information Technology");

?>