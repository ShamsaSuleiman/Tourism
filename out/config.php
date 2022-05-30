<?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "zoezi";

    $conn = new PDO('mysql:host=localhost;dbname=zoezi;port:3306','root','');
    if(!$conn){
        die("Connection Failed: ");
        return;
    }