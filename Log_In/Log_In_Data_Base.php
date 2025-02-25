<?php
class Log_In_Data_Base {
    private $connection="";
    public function __construct() {
        
        $this->connection=include '../Connection.php';
}
  public function  Insert_Data($id,$name,$dep)
    {
       try {
            $stat = $this->connection->prepare("use test_Data1 INSERT INTO test_Table (id,name,dep) VALUES (:id,:name,:dep)");

            $stat->execute(array(
                ':id' => $id,
                ':name' => $name,
                ':dep' => $dep,
            ));
       } catch (Exception $ex) {
           die( print_r( $ex->getMessage() ) );   
       }
       
    }
      public function  Show_Data($id,$password)
    {
          $GLOBALS['count']=0;
          try {
             $sql="select name,id,password,email,dt.dep as dep,session,tt.type as type,gender,mobile,birth,adress,location,latitude,longitude
                        from user_table as ut
                        INNER JOIN dep_table as dt on ut.dep=dt.no
                        INNER JOIN type_table as tt on ut.type=tt.no
                    WHERE id='".$id."' and password='".$password."';";
           //  'SELECT de.EmpID FROM DepartmentEmployees as de INNER JOIN BranchEmployees as be ON de.EmpID = be.EmpID';
              // $sql = "SELECT * FROM [nwu].[dbo].[user_table] WHERE id='".$id."' and password='".$password."';";
       foreach ($this->connection->query($sql) as $row)
        {
           $GLOBALS['count']=1;
           return $row;
           
        }
        echo '<script> alert("Id Or Password Not Match !!!");</script>';
        } catch (Exception $e) {
            die('Error ' . $e);
        }

    }
    
      public function Select_Id($id,$password)
    {
        try {
           // $this->stmt = $this->conn->prepare("SELECT * FROM [nwu].[dbo].[user_table] WHERE id=? and password=?;");
            $this->stmt->execute(array($id,$password));
            return $this->stmt->fetchAll(PDO::FETCH_ASSOC);    
        } catch (Exception $ex) {
            
        }
    }
}
