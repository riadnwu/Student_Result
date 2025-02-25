<?php
class Create_Account_Data_Base {
     private $connection="";
    public function __construct() {
     $this->connection=include '../Connection.php';
}
  public function  Insert_Data($id,$name,$password,$email,$dep,$session,$type,$gender,$mobile,$birthDay,$adress,$location,$latitude,$longitude)
    {
       try {
            $stat = $this->connection->prepare("INSERT INTO user_table (id,name,password,
                    email,dep,session,type,gender,mobile,birth,adress,location,latitude,longitude)
                    VALUES (:id,:name,:password,
                    :email,:dep,:session,:type,:gender,:mobile,:birthDay,:adress,:location,:latitude,:longitude)");

            $stat->execute(array(
                ':id' => $id,
                ':name' => $name,
                ':password' => $password,
                ':email' => $email,
                ':dep' => $dep,
                ':session' => $session,
                ':type' => $type,
                ':gender' => $gender,
                ':mobile' => $mobile,
                ':birthDay' => $birthDay,
                ':adress' => $adress,
                ':location' => $location,
                ':latitude' => $latitude,
                ':longitude' => $longitude,
            ));
             echo "<script>alert('<p>ID: ".$id."<p><p>Session Year: ".$session."<p>successfully Inserted');</script>"; 
             unset($_POST);
             include './Create_Account.php';
       } catch (Exception $ex) {
           die( print_r( $ex->getMessage() ) );  
           include './Create_Account.php';
       }
       
    }
 public function  Update_Data($id,$name,$password,$email,$dep,$type,$gender,$mobile,$birthDay,$adress,$location,$latitude,$longitude)
    {
       try {
            $stat = $this->connection->prepare("UPDATE user_table SET name=:name,password=:password,
                    email=:email,dep=:dep,type=:type,gender=:gender,mobile=:mobile,birth=:birthDay,adress=:adress,
                    location=:location,latitude=:latitude,longitude=:longitude
                    where id=:id;");
            $stat->execute(array(
                ':id' => $id,
                ':name' => $name,
                ':password' => $password,
                ':email' => $email,
                ':dep' => $dep,
                ':type' => $type,
                ':gender' => $gender,
                ':mobile' => $mobile,
                ':birthDay' => $birthDay,
                ':adress' => $adress,
                ':location' => $location,
                ':latitude' => $latitude,
                ':longitude' => $longitude,
            ));
             echo "<script>alert('successfully Updated');</script>"; 
             unset($_GET);
             unset($_POST);
             include './Create_Account.php';
       } catch (Exception $ex) {
           die( print_r( $ex->getMessage() ) );  
           include './Create_Account.php';
       }
       
    }   
     public function  Show_Data()
    {
          $GLOBALS['count']=0;
          $data='';
          try {
             $sql="select id,name,password,email,dt.dep,session,tt.type,gender,mobile,birth,adress,location,latitude,longitude
                        from user_table as ut
                        INNER JOIN dep_table as dt on ut.dep=dt.no
                        INNER JOIN type_table as tt on ut.type=tt.no;";
       foreach ($this->connection->query($sql) as $row)
        {
           $GLOBALS['count']++;
           $data=$data.'
             <tr>
                <td>'.$row[0].'</td>
                <td>'.$row[1].'</td>
                <td>'.$row[2].'</td>
                <td>'.$row[3].'</td>
                <td>'.$row[4].'</td>
                <td>'.$row[5].'</td>
                <td>'.$row[6].'</td> 
                <td>'.$row[7].'</td>
                <td>'.$row[8].'</td>   
                <td>'.$row[9].'</td> 
                <td>'.$row[10].'</td> 
                <td>'.$row[11].'</td>
                <td>'.$row[12].'</td>   
                <td>'.$row[13].'</td> 
                 <td><a rel="facebox" href="Update_Account.php?id='.$row[0].' ">Edit</a></td>    
              </tr>';
           
        }
        return $data;
        } catch (Exception $e) {
            die('Error ' . $e);
        }

    }
    
public function  Search_Data_By_Id($id)
  {
          $GLOBALS['count']=0;
          $data='';
         try{ 
             $sql="select name,password,email,dt.dep,tt.type,gender,mobile,birth,adress
                        from user_table as ut
                        INNER JOIN dep_table as dt on ut.dep=dt.no
                        INNER JOIN type_table as tt on ut.type=tt.no
                        where id='".$id."';";
       foreach ($this->connection->query($sql) as $row)
        {
           $GLOBALS['count']++;
           return $row;
        }
        
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
     public function  Show_All_Department()
    {
          $GLOBALS['count']=0;
          $data='';
          try {
             $sql="select no,dep
                        from dep_table";
             
       foreach ($this->connection->query($sql) as $row)
        {
           $GLOBALS['count']++;
           $data=$data.'<option value="'.$row[0].'"> 
                         '.$row[1].'
                       </option>';
           
        }
        return $data;
        } catch (Exception $e) {
            die('Error ' . $e);
        }

    }
      public function  Show_All_Type()
    {
          $GLOBALS['count']=0;
          $data='';
          try {
             $sql="select no,type
                        from type_table";
             
       foreach ($this->connection->query($sql) as $row)
        {
           $GLOBALS['count']++;
           $data=$data.'<option value="'.$row[0].'"> 
                         '.$row[1].'
                       </option>';
           
        }
        return $data;
        } catch (Exception $e) {
            die('Error ' . $e);
        }

    }
 public function  Get_Max_Id($sessionYear,$session,$year,$type,$dep)
    {
          $GLOBALS['count']=0;
          $data='';
          try {
             $sql="select max(id)
                    from user_table
                    where type=".$type." and session='".$sessionYear."' and dep=".$dep."";
             
       foreach ($this->connection->query($sql) as $row)
        {
           if($row[0] !=0)
           {
               return $row[0]+1000;
           }
        }
        if($type==3)
        {
            return $year.$session.'0010'.$dep.'0'; 
        }
       else {
             return $year.$dep.'001'; 
         }
        } catch (Exception $e) {
            die('Error ' . $e);
        }

    }
}
