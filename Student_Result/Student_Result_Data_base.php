<?php
class Student_Result_Data_base {
    private $connection="";
    public function __construct() {
       $this->connection=include '../Connection.php';
}

public function Chack_Mark($id)
    {
       $GLOBALS['count']=0;
          try {
             $sql="select *
                        from user_table
                        where id='".$id."'
                        ";
       foreach ($this->connection->query($sql) as $row)
        {
          $GLOBALS['count']=1;
          break;
        }
        
        } catch (Exception $e) {
            die('Error ' . $e);
        }
         if($GLOBALS['count']==1)
        {
             include './Student_Result_Show.php';
        }
        else
        {
            echo '<script> alert("Id Not Match !!!");</script>';
            include './Student_Result_Search_By_Id.php';
        } 
          
    }

}
