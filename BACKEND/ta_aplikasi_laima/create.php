<?php

    $connection = new mysqli("localhost", "root", "", "ta_aplikasi_laima");
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
    
    $cek = mysqli_num_rows(mysqli_query($connection, "select * from data where nik='".$nik."' "));
    if ($cek > 0){
    echo "<script>window.alert('nama atau email yang anda masukan sudah ada')</script>";
    }else {
        $result = mysqli_query($connection, "insert into data set nik='".$nik."', nama='".$nama."',  username='".$username."', tanggal_lahir='".$tanggal_lahir."'
        , jenis_kelamin='".$jenis_kelamin."', alamat='".$alamat."', keldes='".$keldes."', kecamatan='".$kecamatan."', email='".$email."'
        , password='".$password."', level='".$level."' ");
    
        if($result){
            echo json_encode([
                'message' => 'Data input successfully'
            ]);
        }else{
            echo json_encode([
                'message' => 'Data Failed to input'
            ]);
        }
    }
    
    ?>

