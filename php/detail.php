<?php

include "conn.php";
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Method:POST,GET');
if(isset($_GET['sid'])){
    $sid = $_GET['sid'];
    $result = $conn->query("select * from goodslist where sid=$sid");
    echo json_encode($result->fetch_assoc());
}