<?php
class Student_Result_Data_base_1 {
    private $connection="";
    public function __construct() {
       $this->connection=include '../Connection.php';
}


 public function  Show_Student_Mark($studentId)
    {
          $GLOBALS['count']=0;
          $data='';
          try {
             $sql="select co.code,co.titel,co.houre,co.creadit,st.total,te.exam,co.year,co.samester,count1.id,count2.id
                    from student_mark_table as st
                    inner join techer_course_table as te on
                    st.techerCourseId=te.techerCourseId
                    inner join course_table as co on
                    te.courseId=co.courseId
                    inner join count1  on
                    co.year=count1.year
                    inner join count2  on
                    co.samester=count2.samester
                    where st.id='".$studentId."' 
                    order by count1.id , count2.id";
             
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


  public function  Search_All_Student()
    {
          $GLOBALS['count']=0;
          $data='';
          try {
             $sql="select id,dep_table.dep
                    from user_table
                    inner join dep_table on
                    user_table.dep=dep_table.no
                    where user_table.type=3
                    order by user_table.id;";

       foreach ($this->connection->query($sql) as $row)
        {
           $GLOBALS['count']++;
           $data=$data.'<option value="'.$row[0].'"> 
                         '.$row[0].'&nbsp&nbsp&nbsp&nbsp'.$row[1].'
                       </option>';
           
        }
        return $data;
        } catch (Exception $e) {
            die('Error ' . $e);
        }

    }
}
