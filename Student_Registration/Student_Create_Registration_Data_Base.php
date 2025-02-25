<?php


class Student_Registration_Database {
    private $connection="";
    public function __construct() {
       $this->connection=include '../Connection.php';
}

public function Chack_Registrtion()
    {
       $GLOBALS['count']=0;
          try {
             $sql="select *
                        from student_mark_table as st
                        where st.id='".$_SESSION['id']."' and st.techerCourseId='".$_POST['techerCourseId']."'
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
            $this->Insert_Student_Mark_Table(); 
        } 
          
    }
public function Insert_Student_Mark_Table()
 {
      $GLOBALS['count']=0;
          try {
              $stmt = $this->connection->query(
                    " INSERT INTO student_mark_table (id,techerCourseId) VALUES ('".$_SESSION['id']."','".$_POST['techerCourseId']."')");

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
             $sql="select te.techerCourseId,co.courseId,co.code,co.year,co.samester,de.dep,co.titel
                        from techer_course_table as te
                        inner join course_table as co
                        on te.courseId=co.courseId
                        inner join dep_table as de
                        on co.dep=de.no
                        where te.exam='".$GLOBALS['exam']."' and co.year='".$_POST['registrationYear']."' and co.samester='".$_POST['registrationSamester']."'";
             
       foreach ($this->connection->query($sql) as $row)
        {
           $GLOBALS['count']++;
           $data=$data.'<option value="'.$row[0].'"> 
                         '.$row[2].'&nbsp&nbsp&nbsp&nbsp'.$row[3].' Year &nbsp&nbsp&nbsp&nbsp'.$row[4].' Samester &nbsp&nbsp&nbsp&nbsp'.$row[5].'&nbsp&nbsp&nbsp&nbsp'.$row[6].'
                       </option>';
           
        }
        return $data;
        } catch (Exception $e) {
            die('Error ' . $e);
        }

    }
}
