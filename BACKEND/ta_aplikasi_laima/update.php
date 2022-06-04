<?php

    $connection = new mysqli("localhost", "root", "", "ta_aplikasi_user");
    $username      = $_POST['username']; 
    $password    = $_POST['password'];
    $id         = $_POST['id'];
        
    $result = mysqli_query($connection, "update user set username='".$username."', password='".$password."', level='".$level."' ");
        
    if($result){
        echo json_encode([
            'message' => 'Data edit successfully'
        ]);
    }else{
        echo json_encode([
            'message' => 'Data Failed to update'
        ]);
    }