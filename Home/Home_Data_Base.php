<?php

class Home_Data_Base {
    private $connection="";
    public function __construct() {
       $this->connection=include '../Connection.php';
}
      public function  Show_Data($id)
    {
          $GLOBALS['count']=0;
          $data='';
          try {
             $sql="select data
                        from nwu_data
                        where id=".$id."";
             
       foreach ($this->connection->query($sql) as $row)
        {
           $GLOBALS['count']++;
           $data=$row[0];
        }
        return $data;
        } catch (Exception $e) {
            die('Error ' . $e);
        }

    }
}
