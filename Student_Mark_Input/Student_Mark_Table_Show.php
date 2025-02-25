<?php
    $inputOj=new Student_Mark_Table();
class Student_Mark_Table{
     private $studentMarkOj="";
     private $dataBaseOj="";
     private $techerCourseId="";
     private $ctNo="";
     private $ctType="";
     public $tableData="";
     public function __construct() {
        include '../Sesion/Session_Chack.php';
        include './Student_Mark_Data_Base.php';
        include '../Lay_Out/Lay_Out_CSS.php';
        include '../Lay_Out/Lay_Out.php';
        
        $this->dataBaseOj=new Student_Mark_Database();
        $this->techerCourseId=$_POST['techerCourseId'];
        $this->tableData=$this->dataBaseOj->Show_Student_Mark_Table($this->techerCourseId);
        $this->studentMarkOj=new Lay_Out();
        $this->studentMarkOj->Top("Student's Marks");
        $this->studentMarkOj->Head($_SESSION['type']);   
        $this->Student_Mark_Table_Article();
        $this->studentMarkOj->Fotter("Copyright &copy; RTTP");
    }
    public function Student_Mark_Table_Article()
    { 
        
        $data= $this->dataBaseOj->Search_CtNo_And_CtType($this->techerCourseId);
        
        $this->ctNo=$data[0];
        $this->ctType=$data[1];
       $from='
             
             <form action="./Student_Mark_Table.php" method="POST" >
             <input type="submit" value="Update Mark" />
             <input type="hidden" name="techerCourseId" value="'.$this->techerCourseId.'" />
             <table style="border: 1px solid black">
               <tr>
                <th>Student Id</th>
                '.$this->Ct_No_Count().'
                '.$this->Ct_Type_Count().'    
                <th>Present</th>
                <th>Assignment</th>
                <th>Final Exam</th> 
                <th>Total Mark</th> 
               </tr>
               '.$this->Table_Data().'
              </table> 
            </form>  
                ';
       $this->studentMarkOj->Article("Admin_Student_Mark",$from);    
    }

public function Table_Data()
{
    $data='';
    
  for($i=0;$i< count($this->tableData);$i++)
  {
      
      $data= $data.'<tr>';
      for($j=1;$j<10;$j++)
      {
                
          
             if($this->ctNo==1 && $j !=3 && $j !=4 )
                {
                  $data= $data.'<td> '.$this->tableData[$i][$j].' </td>';
                 }   
            else if($this->ctNo==2 && $j !=4 )
                {
                  $data= $data.'<td> '.$this->tableData[$i][$j].' </td>';
                }
            else if($this->ctNo==3)
                {
                   $data= $data.'<td> '.$this->tableData[$i][$j].' </td>';
                }
          }
      $data=$data.'</tr>';
  }
  return $data;
}


public function Ct_No_Count()
{
    if($this->ctNo==1)
    {
        return '
            <th>CT-1</th>
        ';
    }
    else if($this->ctNo==2)
    {
        return '
            <th>CT-1</th>
            <th>CT-2</th>
        ';
    }
    else if($this->ctNo==3)
    {
        return '
            <th>CT-1</th>
            <th>CT-2</th>
            <th>CT-3</th>
        ';
    }
}
 public function Ct_Type_Count()
{
    if($this->ctType=='BestOne')
    {
        return '
            <th>Best One</th>
        ';
    }
    else if($this->ctType=='BestTwo')
    {
        return '
            <th>Best Two</th>
        ';
    }
    else if($this->ctType=='BestThree')
    {
        return '
            <th>Best Three</th>
        ';
    }
}
}
?>

