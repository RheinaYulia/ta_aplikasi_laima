<?php 
include 'conn.php';
$id				= $_GET['id'];
$nik            = $_POST['nik']; 
    $nama           = $_POST['nama'];
    $username       = $_POST['username'];
    $tanggal_lahir  = $_POST['tanggal_lahir'];
    $jenis_kelamin  = $_POST['jenis_kelamin'];
    $alamat         = $_POST['alamat'];
    $keldes         = $_POST['keldes'];
    $kecamatan      = $_POST['kecamatan'];
    $email          = $_POST['email'];
    $password       = $_POST['password'];
    $level          = $_POST['level'];
$queryResult=$connect->query("SELECT * FROM data ");

$result=array();
while($fetchData=$queryResult->fetch_assoc()){
	$result[]=$fetchData;
}
echo json_encode($result);
 ?>