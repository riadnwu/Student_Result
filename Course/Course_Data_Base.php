<?php
class Course_Data_Base {
    private $connection="";
    public function __construct() {
       $this->connection=include '../Connection.php';
}
      public function  Show_Data($year,$samister)
    {
          $GLOBALS['count']=0;
          $data='';
          try {
             $sql="select code,titel,houre,creadit,year,samester,dt.dep
                        from course_table as ut
                        INNER JOIN dep_table as dt on ut.dep=dt.no
                        where dt.dep='CSE' and year='".$year."' and samester= '".$samister."' ;";
             
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
              </tr>';
           
        }
        return $data;
        } catch (Exception $e) {
            die('Error ' . $e);
        }

    }
}
