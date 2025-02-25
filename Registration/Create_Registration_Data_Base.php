<?php


class Create_Registration_Data_Base {
    private $connection="";
    public function __construct() {
       $this->connection=include '../Connection.php';
}

public function Chack_Registrtion()
    {
     
       $GLOBALS['count']=0;
          try {
             $sql="select *
                        from techer_course_table
			where exam='".$GLOBALS['exam']."'and courseId='".$_POST['courseId']."';
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
            echo '<script> alert("This Registration Allrady Insert !!!");</script>';
        }
        else
        {
            $this->Insert_Exam_Year_Table(); 
        } 
          
    }
public function Insert_Exam_Year_Table()
 {
      $GLOBALS['count']=0;
          try {
              $stmt = $this->connection->prepare(
                    " INSERT INTO techer_course_table (id,exam,courseId,ctNo,ctType) VALUES (:id,:exam,:courseId,:ctNo,:ctType)");

            $stmt->execute(array(
                ':id' =>$_SESSION['id'],
                ':exam' =>$GLOBALS['exam'],
                ':courseId' =>$_POST['courseId'],
                ':ctNo' =>$_POST['ctNo'],
                ':ctType' =>$_POST['ctType']
            ));
         echo '<script> alert("Success Fully Inserted");</script>';   
        } catch (Exception $e) {
             echo '<script> alert("Error  '. $e.'");</script>';
            die('Error ' . $e);
        }
        
 }

   public function  Show_Title_By_Department()
    {
          $GLOBALS['count']=0;
          $data='';
          try {
             $sql="select courseId,code,titel,year,samester,dt.dep
                        from course_table as ut
                        INNER JOIN dep_table as dt on ut.dep=dt.no
			where code like('".$_SESSION['dep']."%') 
                        order by code;";
             
       foreach ($this->connection->query($sql) as $row)
        {
           $GLOBALS['count']++;
           $data=$data.'<option value="'.$row[0].'"> 
                         '.$row[1].'&nbsp&nbsp&nbsp&nbsp'.$row[3].' Year &nbsp&nbsp&nbsp&nbsp'.$row[4].' Samester &nbsp&nbsp&nbsp&nbsp'.$row[5].'&nbsp&nbsp&nbsp&nbsp'.$row[2].'
                       </option>';
           
        }
        return $data;
        } catch (Exception $e) {
            die('Error ' . $e);
        }

    }
        public function  Show_Data()
    {
          $GLOBALS['count']=0;
          $data='';
          try {
             $sql="select te.exam,co.code,co.titel,co.houre,co.creadit,co.year,co.samester,de.dep,te.ctNo,te.ctType
                    from techer_course_table as te
                    inner join course_table as co on
                    te.courseId=co.courseId
                    inner join dep_table as de on
                    co.dep=de.no
                    where id='".$_SESSION['id']."'";
             
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
              </tr>';
           
        }
        return $data;
        } catch (Exception $e) {
            die('Error ' . $e);
        }

    }
}
