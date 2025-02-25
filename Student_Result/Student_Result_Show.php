<?php
    $inputOj=new Student_Resule_Show();
class Student_Resule_Show{
     private $studentMarkOj="";
     private $dataBaseOj="";
     private $totalData="";
     private $gpa="";
     private $gread="";
     private $cGPA="";
     public function __construct() {
        include '../Sesion/Session_Chack.php';
        include '../Lay_Out/Lay_Out_CSS.php';
        include '../Lay_Out/Lay_Out.php';
        include './Student_Result_Data_base_1.php';
        $this->dataBaseOj=new Student_Result_Data_base_1();
        $this->studentMarkOj=new Lay_Out();
        $this->studentMarkOj->Top("Student Result");
        $this->studentMarkOj->Head($_SESSION['type']);   
        $this->Student_Resule_Show_Article();
        $this->studentMarkOj->Fotter("Copyright &copy; RTTP");
    }
 public function Student_Resule_Show_Article()
    { 
       $from=' '.$this->Student_Result_Table().'</table>';
       $this->studentMarkOj->Article("Admin_Student_Result",$from); 
    }
  public function Student_Result_Table()
    {
        if(!isset($_POST['studentId']))
        {
          $_POST['studentId']=$_SESSION['id'] ; 
        }
        
        $this->totalData=$this->dataBaseOj->Show_Student_Mark($_POST['studentId']);
        $tableHead='
                      <table style="border: 1px solid black">
                               <tr>
                                <th>CourseCode</th>  
                                <th>Course Title</th>
                                <th>Credit Hour</th>
                                <th>Credit</th> 
                                <th> Mark</th> 
                                <th>GPA</th> 
                                <th>Gread</th> 
                               </tr>';
        $totalCratdit=0;
        $totalCreaditHour=0;
        $multiplyCreadit=0;
        $this->cGPA=0;
        $GLOBALS['count']=0;
      for($i=0;$i< count($this->totalData);$i++)
      {
          if($i==0)
          {
             $data='  <p>
                         Exam Year:'.$this->totalData[$i][5].'&nbsp&nbsp&nbsp&nbsp
                         Year :'.$this->totalData[$i][6].' Year &nbsp&nbsp&nbsp&nbsp 
                         Semester: '.$this->totalData[$i][7].' Semester&nbsp&nbsp&nbsp&nbsp 
                      </p>'.$tableHead.'<tr>'; 
             for($j=0;$j<7;$j++)
              {
                 if($j<5)
                  {
                       if($j==2)
                       {
                          $totalCreaditHour=$totalCreaditHour+$this->totalData[$i][$j];
                       }
                       if($j==3)
                       {
                           $totalCratdit=$totalCratdit+$this->totalData[$i][$j];
                       }
                       $data= $data.'<td name="getValue'.$i.$j.'" value="'.$this->totalData[$i][$j].'" >'.$this->totalData[$i][$j].'</td>';
                  }
                  else if($j==5)
                  {
                      $this->gpa= $this->GradePoint($this->totalData[$i][4]);
                      $multiplyCreadit=$multiplyCreadit+($this->gpa*$this->totalData[$i][3]);
                      $data= $data.'<td name="getValue'.$i.$j.'" value="'.$this->gpa.'" >'.$this->gpa.'</td>';
                      
                  }
                  else if($j==6)
                  {
                      $this->gread= $this->Grade($this->gpa);
                      $data= $data.'<td name="getValue'.$i.$j.'" value="'.$this->gread.'" >'.$this->gread.'</td>';
                 
                  }
              }
          $data=$data.'</tr>';
             
          }
          
         
          else if(strcmp((string)$this->totalData[$i][8].(string)$this->totalData[$i][9],(string)$this->totalData[$i-1][8].(string)$this->totalData[$i][9-1])!=0)
          {
              $mainGPA=($multiplyCreadit/$totalCratdit);
              $mainGreade= $this->Grade($mainGPA);
              $GLOBALS['count']++;
              $this->cGPA= $this->cGPA+$mainGPA;
              $ans='
                      <p>
                      Total Credit Hour:'.$totalCreaditHour.'&nbsp&nbsp&nbsp&nbsp
                      Total Credit :'.$totalCratdit.' &nbsp&nbsp&nbsp&nbsp 
                      GPA: '.$mainGPA.' &nbsp&nbsp&nbsp&nbsp 
                      Gread: '.$mainGreade.' &nbsp&nbsp&nbsp&nbsp  
                      </p>
                      <p>
                       CGPA: '.($this->cGPA/$GLOBALS['count']).'&nbsp&nbsp&nbsp&nbsp
                       Gread: '.$this->Grade(($this->cGPA/$GLOBALS['count'])).' &nbsp&nbsp&nbsp&nbsp     
                      </p>  
                    ';
              $data=$data.'</table>'.$ans. '<p>
                         Exam Year:'.$this->totalData[$i][5].'&nbsp&nbsp&nbsp&nbsp
                         Year :'.$this->totalData[$i][6].' Year &nbsp&nbsp&nbsp&nbsp 
                         Semester: '.$this->totalData[$i][7].' Semester&nbsp&nbsp&nbsp&nbsp 
                      </p>'.$tableHead.'<tr>';
              $totalCratdit=0;
              $totalCreaditHour=0;
              $multiplyCreadit=0;
              for($j=0;$j<7;$j++)
              {
                 if($j<5)
                  {
                       if($j==2)
                       {
                          $totalCreaditHour=$totalCreaditHour+$this->totalData[$i][$j];
                       }
                       if($j==3)
                       {
                           $totalCratdit=$totalCratdit+$this->totalData[$i][$j];
                       }
                       $data= $data.'<td name="getValue'.$i.$j.'" value="'.$this->totalData[$i][$j].'" >'.$this->totalData[$i][$j].'</td>';
                  }
                  else if($j==5)
                  {
                      $this->gpa= $this->GradePoint($this->totalData[$i][4]);
                      $multiplyCreadit=$multiplyCreadit+($this->gpa*$this->totalData[$i][3]);
                      $data= $data.'<td name="getValue'.$i.$j.'" value="'.$this->gpa.'" >'.$this->gpa.'</td>';
                      
                  }
                  else if($j==6)
                  {
                      $this->gread= $this->Grade($this->gpa);
                      $data= $data.'<td name="getValue'.$i.$j.'" value="'.$this->gread.'" >'.$this->gread.'</td>';
                 
                  }
              }
               $data=$data.'</tr>';
          }
           else if(strcmp((string)$this->totalData[$i][8].(string)$this->totalData[$i][9],(string)$this->totalData[$i-1][8].(string)$this->totalData[$i-1][9])==0) 
          {
            $data=$data.'<tr>';
              for($j=0;$j<7;$j++)
              {
                  if($j<5)
                  {
                       if($j==2)
                       {
                          $totalCreaditHour=$totalCreaditHour+$this->totalData[$i][$j];
                       }
                       if($j==3)
                       {
                           $totalCratdit=$totalCratdit+$this->totalData[$i][$j];
                       }
                       $data= $data.'<td name="getValue'.$i.$j.'" value="'.$this->totalData[$i][$j].'" >'.$this->totalData[$i][$j].'</td>';
                  }
                  else if($j==5)
                  {
                      $this->gpa= $this->GradePoint($this->totalData[$i][4]);
                      $multiplyCreadit=$multiplyCreadit+($this->gpa*$this->totalData[$i][3]);
                      $data= $data.'<td name="getValue'.$i.$j.'" value="'.$this->gpa.'" >'.$this->gpa.'</td>';
                      
                  }
                  else if($j==6)
                  {
                      $this->gread= $this->Grade($this->gpa);
                      $data= $data.'<td name="getValue'.$i.$j.'" value="'.$this->gread.'" >'.$this->gread.'</td>';
                 
                  }
              }
            $data=$data.'</tr>';
           }
          
      }
             $mainGPA=($multiplyCreadit/$totalCratdit);
              $mainGreade= $this->Grade($mainGPA);
              $GLOBALS['count']++;
              $this->cGPA= $this->cGPA+$mainGPA;
              $ans='<p>
                      Total Credit Hour: '.$totalCreaditHour.'&nbsp&nbsp&nbsp&nbsp
                      Total Credit: '.$totalCratdit.' &nbsp&nbsp&nbsp&nbsp 
                      GPA: '.$mainGPA.' &nbsp&nbsp&nbsp&nbsp 
                      Gread: '.$mainGreade.' &nbsp&nbsp&nbsp&nbsp     
                      </p>
                      <p>
                       CGPA: '.($this->cGPA/$GLOBALS['count']).'&nbsp&nbsp&nbsp&nbsp
                       Gread: '.$this->Grade(($this->cGPA/$GLOBALS['count'])).' &nbsp&nbsp&nbsp&nbsp     
                      </p>';
              $data=$data.'</table>'.$ans;
      return $data;
    }

public  function GradePoint($m)
   {

        if($m>=80)
        {
          return 4.00;
        }
        else if($m<=79&& $m>=70)
        {
                return 3.75;
        }
        else if($m<=69&&$m>=60)
        {
                return 3.50;
        }
        else if($m<=59&&$m>=50)
        {
                return 3.00;
        }
        else if($m<=49&&$m>=40)
        {
                return 2.50;
        }
        else if($m<=39&&$m>=33)
        {
                return 2.00;
        }

        else if($m<=32&&$m>=0)
        {
                return 0.00;
        }
        return 0;
    }
  public function Grade($g)
   {
           if($g==4.00)
           {
                   return "A+";
           }
           else if($g<=3.99&&$g>=3.75)
           {
                   return "A";
           }
           else if($g<=3.74&& $g>=3.50)
           {
                   return "A-";
           }
           else if($g<=3.49&& $g>=3.00)
           {
                   return "B";
           }
           else if($g<=2.99&&$g>=2.50)
           {
                   return "C";
           }
           else if($g<=2.49&&$g>=2.00)
           {
                   return "D";
           }
           else if($g<=1.99&&$g>=0.00)
           {
                   return "F";
           }
   }
}
