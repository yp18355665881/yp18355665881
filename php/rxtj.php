<?php
    include 'conn.php';
    $result = $conn ->query('select * from rxtj');//查询到的是一个个结果集
    // echo $result ->num_rows;
    // print_r($result ->fetch_assoc());
    $arrdata = array();
    for($i=0;$i<$result->num_rows;$i++){
        $arrdata[$i] = $result ->fetch_assoc();
    }
    echo json_encode($arrdata);
