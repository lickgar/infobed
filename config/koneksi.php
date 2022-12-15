<!-- <?php
/* script untuk memanggil fungsi php pg_connect untuk koneksi ke postgresql
$db_conn = pg_connect("host=localhost port=5432 dbname=as_three user='postgres'
password='postgres'");
if (!$db_conn) {
    die("Koneksi Tidak Berhasil: " . pgsql_connect_error());
} */
?> -->
<?php
$host        = "host = 127.0.0.1";
   $port        = "port = 5432";
   $dbname      = "dbname = infobed";
   $credentials = "user = postgres password=postgres";

   $db_conn = pg_connect( "$host $port $dbname $credentials"  );
//    if(!$db_conn) {
//       echo "Error : Unable to open database\n";
//    } else {
//        echo "Opened database successfully\n";
//    }
?>