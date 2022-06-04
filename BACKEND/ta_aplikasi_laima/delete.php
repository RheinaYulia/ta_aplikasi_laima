<?php

    $connection = new mysqli("localhost", "root", "", "ta_aplikasi_laima");

    $id = $_POST['id'];

    $result = mysqli_query($connection, "delete from user where id=".$id);

    if($result){
        echo json_encode([
            'message' => 'Data delete successfully'
        ]);
    }else{
        echo json_encode([
            'message' => 'Data Failed to delete'
        ]);
    }