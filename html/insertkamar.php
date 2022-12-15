<?php
//  <?php session_start(); ?> 
<?php
include_once '../config/koneksi.php';
if(isset($_POST['input_kamar']))
{	 
	 $ruang_id 	        = $_POST['m_ruang_id'];
	 $bed_kapasitas 	= $_POST['bed_kapasitas'];
	 $bed_terisi 	    = $_POST['bed_terisi'];
	 $bed_kosong_anak   = $_POST['bed_kosong_anak'];
	 $bed_kosong_wanita	= $_POST['bed_kosong_wanita'];
	 $bed_kosong_pria	= $_POST['bed_kosong_pria'];
	 $query = "INSERT INTO now_bed(m_ruang_id, bed_kapasitas, bed_terisi, bed_kosong_anak, bed_kosong_wanita, bed_kosong_pria) 
	 values ('$ruang_id','$bed_kapasitas','$bed_terisi','$bed_kosong_anak','$bed_kosong_wanita','$bed_kosong_pria')";
	 if($result = pg_query($query)){
		echo "Data Added Successfully.";
		header('Location: /infobed/html/tables_display.php');
	 }
	 else{
		echo "Error.";
	 }
}
?>
<!-- 
$query_run = mysqli_query($conn, $query);

    if($query_run)
    {
        $_SESSION['status'] = "Successfully Saved";
        header('Location: index.php');
    }
    else
    {
        $_SESSION['status'] = "Not Saved";
        header('Location: index.php');
    }

?>