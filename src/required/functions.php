<?php
    function connection() {
        //LOCALEKO DATU BASEA
        $servername = "localhost"; 
        $username = "root";
        $password = "1WMG2023";
        $dbname = "erronkaerrekuperazioa";
    
        $conn = new mysqli($servername, $username, $password, $dbname);
    
        
        if ($conn->connect_error) {
            die("Errorea: " . $conn->connect_error);
        } 

        return $conn;
    }

