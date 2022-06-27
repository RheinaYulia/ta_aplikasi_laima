<?php

    $connection = new mysqli("localhost", "root", "", "ta_aplikasi_user");
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
        
    $result = mysqli_query($connection, "update user set nik='".$nik."', nama='".$nama."',  username='".$username."', tanggal_lahir='".$tanggal_lahir."'
    , jenis_kelamin='".$jenis_kelamin."', alamat='".$alamat."', keldes='".$keldes."', kecamatan='".$kecamatan."', email='".$email."'
    , password='".$password."', level='".$level."' ");
        
    if($result){
        echo json_encode([
            'message' => 'Data edit successfully'
        ]);
    }else{
        echo json_encode([
            'message' => 'Data Failed to update'
        ]);
    }