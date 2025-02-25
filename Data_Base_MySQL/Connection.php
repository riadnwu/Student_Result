<?php
  $serverName="DESKTOP-UJOVEHQ\RIADSERVER";
        $dataBase="nwu";
        $user="sa";
        $passWord="Riadulislam06";
         try  
            {  
            
              $connection = new PDO("sqlsrv:Server=$serverName;Database=$dataBase", $user , $passWord);
              $connection->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
              return $connection;
            }  
            catch(Exception $e)  
            {   
            die( print_r( $e->getMessage() ) );   
            }  
?>

