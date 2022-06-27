<?php 

    $connection = new mysqli("localhost","root","","ta_aplikasi_laima");
    $data       = mysqli_query($connection, "select * from data");
    $data       = mysqli_fetch_all($data, MYSQLI_ASSOC);

    echo json_encode($data);