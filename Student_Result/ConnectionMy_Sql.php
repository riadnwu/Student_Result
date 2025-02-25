<?php
  $serverName="localhost";
        $dataBase="id1337164_nwu";
        $user="id1337164_riadnwu";
        $passWord="Riadulislam06";
         try  
            {  
            
              $connection = new PDO("mysql:host=$serverName;dbname=$dataBase", $user , $passWord);
              $connection->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
              return $connection;
            }  
            catch(Exception $e)  
            {   
            die( print_r( $e->getMessage() ) );   
            }  
?>