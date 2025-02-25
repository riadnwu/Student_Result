<?php
class Student_Mark_Database {
    private $connection="";
    public function __construct() {
       $this->connection=include '../Connection.php';
}

public function Chack_Mark()
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
public function Update_Student_Mark_Table($studentMarkId,$valueType,$getValue,$totalCt,$total)
 {
      $GLOBALS['count']=0;
          try {
              $stmt = $this->connection->query(
                             'UPDATE student_mark_table
                             SET '.$valueType.' ='.$getValue.',totalCt='.$totalCt.',total='.$total.'
                             WHERE studentMarkId='.$studentMarkId.';');
              
                      echo '<script> alert("Success Fully Update");</script>';   
        } catch (Exception $e) {
             echo '<script> alert("Error  '. $e.'");</script>';
            die('Error ' . $e);
        }
        
 }
 public function  Show_Student_Mark_Table($techerCourseId)
    {
          $GLOBALS['count']=0;
          $data='';
          try {
             $sql="select st.studentMarkId,st.id,st.ct1,st.ct2,st.ct3,st.totalCt,st.present,st.assignment,st.final,st.total
                        from student_mark_table as st
                        where st.techerCourseId='".$techerCourseId."'";
             
       foreach ($this->connection->query($sql) as $row)
        {
           $data[$GLOBALS['count']]=$row;
           $GLOBALS['count']++;
        }
        return $data;
        } catch (Exception $e) {
            die('Error ' . $e);
        }

    }
  public function Search_CtNo_And_CtType($techerCourseId)
  {
       $GLOBALS['count']=0;
          $data='';
          try {
             $sql="select te.ctNo ,te.ctType
                        from techer_course_table as te
                        where te.techerCourseId='".$techerCourseId."'";
             
       foreach ($this->connection->query($sql) as $row)
        {
           return $row;
        }
        
        } catch (Exception $e) {
            die('Error ' . $e);
        }
  }

  public function  Search_Course_Title_By_Exam_Year($chackYear)
    {
          $GLOBALS['count']=0;
          //echo $chackYear.$_SESSION['id'];
          $data='';
          try {
             $sql="select te.techerCourseId,co.courseId,co.code,co.year,co.samester,de.dep,co.titel
                        from techer_course_table as te
                        inner join course_table as co
                        on te.courseId=co.courseId
                        inner join dep_table as de
                        on co.dep=de.no
                        where te.exam='".$chackYear."' and te.id='".$_SESSION['id']."'";
             
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
